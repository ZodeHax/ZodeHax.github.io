-- Script starts here
website = "http://zodehax.github.io/tr/Pokepon"
namefile = "caption"
versionfile = "version"
naturefile = "nature.list"
itemfile = "item.list"
author = " [by Zode]"

trPokepon.show()
trPokepon.LaunchPanel.visible = true
trPokepon.CHEATPANEL.visible = false
trPokepon.Caption = "Rigged Poképon Launcher"
trPokepon.LaunchBar.Position = 0
trPokepon.LaunchInfo.Caption = "Loading..."

function runPI(timer)
  if getProcessIDFromProcessName("game.exe") ~= nil then
    object_destroy(timer)
    openProcess("game.exe")
    trPokepon.dbPrint.Caption = "Attached to Pokemon Insurgence"
    trPokepon.tbRig.Enabled = true
  end
end

function trSetup(sender)
         if readInteger("pokepon") then
            trPokepon.dbPrint.Caption = "Attached"
            trPokepon.dbPrint.Visible = false
            trPokepon.rgReward.Enabled = true
            trPokepon.tbRig.Enabled = false
            trPokepon.tbRig.Visible = false
            trPokepon.tbMore.Visible=true
            trPokepon.tbMore.Checked=false
            trPokepon.Height = 102
            timer_onTimer(frz,toFreeze)
            checkRew()
         else
             trPokepon.tbRig.Checked = false
             trPokepon.tbRig.State = "cbUnchecked"
             trPokepon.dbPrint.Caption = "Unable to find Base Pointer"
         end
end

function noCooldown(sender)
         writeInteger(getAddress("pokepon"),1)
end

function toFreeze(sender)
         noCooldown()
         if trPokepon.cbItem.Checked then
                writeInteger(getAddress("pokepon")-0x40,1)
                comboItemChange()
         elseif trPokepon.cbNature.Checked then
                writeInteger(getAddress("pokepon")-0x40,7)
                comboNatureChange()
         elseif trPokepon.cbShiny.Checked then
                writeInteger(getAddress("pokepon")-0x40,9)
         end
end

function checkRew(sender)
         rew = readInteger(getAddress("pokepon")-0x40)
         itna = readInteger(getAddress("pokepon")-0x3C)
         if rew == 9 then
            trPokepon.cbShiny.Checked = true
         elseif rew == 7 then
            trPokepon.cbNature.Checked = true
         elseif rew == 1 then
            trPokepon.cbItem.Checked = true
         end
         trPokepon.gbItem.Enabled = trPokepon.cbItem.Checked
         trPokepon.gbNature.Enabled = trPokepon.cbNature.Checked
         rewardBox()
end

function rewardBox(sender)
         cb = readInteger(getAddress("pokepon")-0x40)
         if cb == 1 then
         trPokepon.cbNature.Checked = false
         trPokepon.cbShiny.Checked = false
         elseif cb == 7 then
         trPokepon.cbItem.Checked = false
         trPokepon.cbShiny.Checked = false
         elseif cb == 9 then
         trPokepon.cbItem.Checked = false
         trPokepon.cbNature.Checked = false
         end
end

function cbItemCheck(sender)
         writeInteger(getAddress("pokepon")-0x40,1)
         rewardBox()
end

function cbNatureCheck(sender)
         writeInteger(getAddress("pokepon")-0x40,7)
         rewardBox()
end

function cbShinyCheck(sender)
         writeInteger(getAddress("pokepon")-0x40,9)
         rewardBox()
end

function tbRigActivate(sender)
         autoAssemble([[
         aobscan(BaseAoB,04 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 01 00 00 00 05 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00)
         label(pokepon)
         registersymbol(pokepon)
         BaseAoB + 234:
         pokepon:
         ]])
         trSetup()
end

function tbResetClick(sender)
         tbRigActivate()
end


function tbMoreChange(sender)
         if not trPokepon.tbMore.Checked then
            trPokepon.InfoPanel.Visible = false
            trPokepon.Height = 102
         else
            trPokepon.InfoPanel.Visible = true
            trPokepon.Height = 191
         end
end

function dbgPanelDblClick(sender)
         if DbgClicks then
            DbgClicks = DbgClicks + 1
         else
             DbgClicks = 1
         end
         if DbgClicks > 5 then
            trPokepon.ItemID.Visible = not trPokepon.ItemID.Visible
            trPokepon.NatureID.Visible = not trPokepon.NatureID.Visible
         end
end

trPokepon.LaunchBar.Position = 50
trPokepon.LaunchInfo.Caption = "Functions loaded..."
------ LISTS

--- Nature List
trPokepon.comboNature.Items.clear()
natures = combobox_getItems(trPokepon.comboNature)

trPokepon.LaunchBar.Position = 60
trPokepon.LaunchInfo.Caption = "Loading Nature List..."

naturelist = http.request((website..naturefile))
loadstring(naturelist)()

if (nature_ary) then
   for v,n in ipairs(nature_ary) do
      strings_add(natures, n.Name)
   end
else
      strings_add(natures, "No Natures loaded")
end

function comboNatureChange(sender)
         idx = getProperty(trPokepon.comboNature, "ItemIndex")
         idx = nature_ary[idx+1]
         if idx == nil then
            trPokepon.NatureID.Caption = "No ID"
         else
             writeInteger(getAddress("pokepon")-0x3C,idx.Value)
             trPokepon.NatureID.Caption = idx.Value
         end
end

trPokepon.LaunchBar.Position = 70
trPokepon.LaunchInfo.Caption = "Nature List created!"

--- Item List

trPokepon.comboItem.Items.clear()
items = combobox_getItems(trPokepon.comboItem)

trPokepon.LaunchBar.Position = 80
trPokepon.LaunchInfo.Caption = "Loading Item List..."

itemlist = http.request((website..itemfile))
loadstring(itemlist)()

if (item_ary) then
   for v,n in ipairs(item_ary) do
      strings_add(items, n.Name)
   end
else
      strings_add(items, "No Items loaded")
end

function comboItemChange(sender)
         idx = getProperty(trPokepon.comboItem, "ItemIndex")
         idx = item_ary[idx+1]
         if idx == nil then
            trPokepon.ItemID.Caption = "No ID"
         else
             writeInteger(getAddress("pokepon")-0x3C,idx.Value)
             trPokepon.ItemID.Caption = idx.Value
         end
end

trPokepon.LaunchBar.Position = 90
trPokepon.LaunchInfo.Caption = "Item List created!"

----- Trainer Setup
-- on Start

trCaption = http.request((website..caption))
trVersion = http.request((website..version))
trName = (trCaption.." "..trVersion..author)
if not trName then
trName = ("Rigged Poképon - Offline"..author)
end

trPokepon.dbPrint.Visible = true
trPokepon.dbPrint.Caption = "Start Pokemon Insurgence..."
tbMoreChange()
trPokepon.LaunchBar.Position = 100
trPokepon.LaunchInfo.Caption = "Done Loading!"
trPokepon.LaunchPanel.visible = false
trPokepon.Caption = trName
trPokepon.CHEATPANEL.visible = true
trPokepon.Height = 120

atc=createTimer(nil);
timer_setInterval(atc,500)
timer_onTimer(atc,runPI)

frz = createTimer(nil,true)
timer_setInterval(frz,100)
