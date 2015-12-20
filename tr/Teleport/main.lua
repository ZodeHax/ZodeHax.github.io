--[[ Credits:
Trainer made by Zode
        Skype: Zode.Hax
        YouTube: https://www.youtube.com/channel/UC3uTsyCA24nQsIrzXM8MMeQ

AoB by God Nemesis
        YouTube: https://www.youtube.com/channel/UCljTftShhCaviqoT_5Kr_1w

]]

--- Files
namefile = "caption"
versionfile = "version"
maplistfile = "map.list"
aobfile = "scanaob.lua"
configfile = "teleport.cfg"

--- Global variables
locked = true
Saved_ary = {}
Author = " [by Zode]"

--- config
cfgload = http.request((website..configfile))
loadstring(cfgload)()

--- AoB
aobload = http.request((website..aobfile))
loadstring(aobload)()

--- Lists
maplist = http.request((website..maplistfile))
loadstring(maplist)()

--- Functions
MainFrm.Selector.Height = tilesize
MainFrm.Selector.Width = tilesize
function CloseClick()
  closeCE()
  return caFree
end

function TaskBarMouseDown(sender, button, x, y)
         MainFrm.dragNow()
end

function mapImageMouseDown(sender, button, x, y)
         if (button == 0) and (not locked) then
                 MainFrm.Selector.Visible = true
                 MainFrm.Selector.Left = (math.floor(x/tilesize))*tilesize
                 MainFrm.Selector.Top = (math.floor(y/tilesize))*tilesize
                 SelectorColor()
         elseif (button==1) and (not locked) then
                dragMap=true
                initialX = x
                initialY = y
                --MainFrm.mapImage.Cursor = crDrag
         end
end

function mapImageMouseUp(sender, button, x, y)
         if (button==1) then
                dragMap=false
                --MainFrm.mapImage.Cursor = crCross
         end
end

function mapImageMouseLeave(sender)
         dragMap=false
end

function mapImageMouseMove(sender, x, y)
         if (dragMap==true) then
            local mx,my = getMousePos()
            local newX = mx - (initialX + MainFrm.Left + 1)
            local newY = my - (initialY + MainFrm.Top + 24)
            MainFrm.ImagePanel.Left = newX
            MainFrm.ImagePanel.Top = newY
         end
end

function TaskBarDblClick(sender)
         --MainFrm.mapImage.Picture = nil
         MainFrm.Height = 700
         MainFrm.Width = 1000
         MainFrm.mapImage.AutoSize = true
         MainFrm.mapImage.picture.loadFromStream(findTableFile("ZodeWallpaper.png").Stream)
         MainFrm.ImagePanel.Left = - 136
         MainFrm.ImagePanel.Top = 0
         MainFrm.mapImage.AutoSize = false
         MainFrm.Selector.Visible = false
         locked = true
         --MainFrm.mapImage.Visible = false
end

function SelectorClick(sender, button, x, y)
         if (button==0) then
            tx,ty = getTileSelection()
            MainFrm.inXPos.Text = tx
            MainFrm.inYPos.Text = ty
            MainFrm.inMapID.Text = curMapID
            MainFrm.Selector.picture.loadFromStream(findTableFile("SelectorR.png").Stream)
            ---
            if (not frz) then
               frz = createTimer(nil,true)
               timer_setInterval(frz,1000)
               timer_onTimer(frz,coords2Game)
            end
            ---
            MainFrm.bSave.Enabled = true
            MainFrm.inSaveLoc.Enabled = true
         end
end

function SelectorColor(sender)
         MainFrm.Selector.picture.loadFromStream(findTableFile("Selector.png").Stream)
end

function mapBoxChange(sender)
         local idx = getProperty(MainFrm.mapBox, "ItemIndex")
         if not (idx==nil) then
         val = map_ary[idx+1]
         if not (val == nil) then
            locked = false
            tilesize = defaulttilesize
            MainFrm.ImagePanel.Left = 1
            MainFrm.ImagePanel.Top = 24
            MainFrm.mapImage.AutoSize = true
            MainFrm.mapImage.Visible = true
            MainFrm.Selector.AutoSize = true
            curMapID = ((val.Value)-1)/2
            --MainFrm.inMapID.Text = curMapID
            local mapname = "map_"..curMapID..mapformat
            if findTableFile(mapname) then
               MainFrm.mapImage.Visible = true
               MainFrm.mapImage.picture.loadFromStream(findTableFile(mapname).Stream)
            else
                MainFrm.mapImage.Picture = nil
                MainFrm.mapImage.Visible = false
            end
         tcX = MainFrm.mapImage.Width/tilesize
         tcY = MainFrm.mapImage.Height/tilesize
         SelectorColor()
         MainFrm.Selector.Visible = false
         MainFrm.ImagePanel.Left = 1
         MainFrm.ImagePanel.Top = 24
         MainFrm.mapImage.AutoSize = false
         MainFrm.Selector.AutoSize = false
         end
         end
end

function mapImageMouseWheelDown(sender, x, y)
         tx,ty = getTileSelection()
         if (not locked) then
         MainFrm.mapImage.Stretch = true
         MainFrm.mapImage.Width = MainFrm.mapImage.Width*0.9
         MainFrm.mapImage.Height = MainFrm.mapImage.Height*0.9

         SelectorUpdate()
         end
end

function mapImageMouseWheelUp(sender, x, y)
         tx,ty = getTileSelection()
         if (not locked) then
         MainFrm.mapImage.Stretch = true
         MainFrm.mapImage.Width = MainFrm.mapImage.Width*1.1
         MainFrm.mapImage.Height = MainFrm.mapImage.Height*1.1

         SelectorUpdate()
         end
end

function SelectorUpdate()
         tilesize = MainFrm.mapImage.Width/tcX

         MainFrm.Selector.Stretch = true
         MainFrm.Selector.Width = MainFrm.mapImage.Width/tcX
         MainFrm.Selector.Height = MainFrm.mapImage.Height/tcY

         MainFrm.Selector.Left = tx*tilesize
         MainFrm.Selector.Top = ty*tilesize
end

function getTileSelection()
         local tx = math.floor(MainFrm.Selector.Left/tilesize + 0.5)
         local ty = math.floor(MainFrm.Selector.Top/tilesize + 0.5)

         return tx,ty
end

function SideBarLineClick(sender)
         if (MainFrm.SideBarLine.Caption == "<") then
             MainFrm.SideBar.Width = 170
             MainFrm.SideBarLine.Caption = ">"
         else
             MainFrm.SideBar.Width = 9
             MainFrm.SideBarLine.Caption = "<"
         end
end

function bSaveClick(sender)
         local savedLoc = listbox_getItems(MainFrm.lbRecent)
         local curLoc = MainFrm.inSaveLoc.Text --MainFrm.inMapID.Text.."|"..MainFrm.inXPos.Text.."|"..MainFrm.inYPos.Text
         strings_add(savedLoc,curLoc)
         if Saved_ary then
             Saved_ary[#Saved_ary+1] = {Map=MainFrm.inMapID.Text, XPos=MainFrm.inXPos.Text, YPos=MainFrm.inYPos.Text}
         end
         MainFrm.bDelete.Enabled = true
         MainFrm.bLoad.Enabled = true
end

function bLoadClick(sender)
         local idx = MainFrm.lbRecent.ItemIndex
         if Saved_ary and (idx >= 0) then
            SelectorColor()
            --MainFrm.gbRecent.Caption = "Current: "..idx
            MainFrm.inMapID.Text = Saved_ary[idx+1].Map
            MainFrm.inXPos.Text = Saved_ary[idx+1].XPos
            MainFrm.inYPos.Text = Saved_ary[idx+1].YPos
         end
         coords2Game()
end

function bDeleteClick(sender)
         local idx = MainFrm.lbRecent.ItemIndex
         if (idx >= 0) then
            table.remove(Saved_ary, idx+1)
            MainFrm.lbRecent.Items.Delete(idx)
         end
         --MainFrm.gbRecent.Caption = #Saved_ary
         if (#Saved_ary < 1) then
            MainFrm.bDelete.Enabled = false
            MainFrm.bLoad.Enabled = false
         end
end

function bSetupClick(sender)
         BaseSetup()
         if readInteger("coords") then
            MainFrm.bSetup.Visible = false
            MainFrm.mapBox.Enabled = true
         else
            MainFrm.TaskBar.Caption = trName.." - Unable to find Base Pointer"
         end
end

function coords2Game(sender)
         writeInteger(getAddress("coords"), (MainFrm.inMapID.Text)*2+1)
         writeInteger(getAddress("coords")+4, (MainFrm.inXPos.Text)*2+1)
         writeInteger(getAddress("coords")+8, (MainFrm.inYPos.Text)*2+1)
end

--- SETUP
function mapLoad(sender)
         --- Add Maps
         MainFrm.mapBox.Items.clear()
         maps = combobox_getItems(MainFrm.mapBox)
         if (map_ary) then
            for v,m in ipairs(map_ary) do
                strings_add(maps, m.Name)
            end
         else
             strings_add(maps, "No Maps loaded")
         end
         --- Set Box Start from Integer
         --[[
         val = readInteger(getAddress("coords"))
         for v,m in ipairs(map_ary) do
             if m.Value == val then
                MainFrm.mapBox.ItemIndex = v-1
             end
         end
         --]]
end

function BaseSetup(sender)
         autoAssemble([[
         aobscan(BaseAoB,]]..scanaob..[[)
         label(coords)
         registersymbol(coords)
         BaseAoB + B0:
         coords:
         ]])
         -- coords = Map
         -- coords + 4 = X
         -- coords + 8 = Y
end

function runPI(atc)
  if getProcessIDFromProcessName("game.exe") ~= nil then
    object_destroy(atc)
    openProcess("game.exe")
    MainFrm.TaskBar.Caption = trName.." - Attached to Pokemon Insurgence"
    if SetupOnAttach then
      stp=createTimer(nil)
      timer_setInterval(stp,500)
      timer_onTimer(stp,AutoSetup)
    end
  end
end

function AutoSetup(sender)
         BaseSetup()
         if readInteger("coords") then
            MainFrm.bSetup.Visible = false
            MainFrm.mapBox.Enabled = true
            object_destroy(stp)
         end
end

--- TRAINER

trCaption = http.request((website..namefile))
trVersion = http.request((website..versionfile))
trName = (trCaption.." "..trVersion..author)
if not trName then
        trName = ("Teleport Hack - Offline"..author)
end

MainFrm.TaskBar.Caption = trName

MainFrm.show()
mapLoad()

atc=createTimer(nil);
timer_setInterval(atc,500)
timer_onTimer(atc,runPI)
