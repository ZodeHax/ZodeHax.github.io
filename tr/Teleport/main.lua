--- Global variables
defaulttilesize=8
mapformat=".png"
locked = true
SetupOnAttach = false
scanaob = [[04 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0? ?? ?? ?? 0? 0? ?? ?? 0? 01 00 00 00 0? 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00]]
Saved_ary = {}
Version = "v1.3"
Title = "Teleport Hack "..Version
Author = "[by Zode]"

--[[ Credits:
Trainer made by Zode
        Skype: Zode.Hax
        YouTube: https://www.youtube.com/channel/UC3uTsyCA24nQsIrzXM8MMeQ

AoB by God Nemesis
        YouTube: https://www.youtube.com/channel/UCljTftShhCaviqoT_5Kr_1w

]]

--- Lists
map_ary = {
{Value=3,Name="Intro"},
{Value=5,Name="Telnor Town"},
{Value=7,Name="Shade Forest"},
{Value=9,Name="Shade Forest"},
--{Value=11,Name="Route 1"},
--{Value=13,Name="Kurt's house"},
--{Value=15,Name="Cedolan City"},
{Value=17,Name="Telnor Cave"},
--{Value=19,Name="Cedolan City Poké Center"},
--{Value=21,Name="Cedolan Gym"},
--{Value=23,Name="Pokémon Institute"},
--{Value=25,Name="Cedolan City Condo"},
--{Value=27,Name="Game Corner"},
--{Value=29,Name="Cedolan Dept. 1F"},
--{Value=31,Name="Cedolan Dept. 2F"},
--{Value=33,Name="Cedolan Dept. 3F"},
--{Value=35,Name="Cedolan Dept. 4F"},
--{Value=37,Name="Cedolan Dept. 5F"},
--{Value=39,Name="Cedolan Dept. Rooftop"},
--{Value=41,Name="Cedolan Dept. Elevator"},
--{Value=43,Name="Route 2"},
{Value=45,Name="Telnor Cave"},
--{Value=47,Name="Lerucean Town"},
--{Value=49,Name="Lerucean Town Poké Center"},
--{Value=51,Name="Lerucean Town Mart"},
--{Value=53,Name="Pokémon Fan Club"},
--{Value=55,Name="Pokémon Day Care"},
--{Value=57,Name="Natural Park"},
--{Value=59,Name="Natural Park Entrance"},
--{Value=61,Name="Natural Park Pavillion"},
--{Value=63,Name="Route 3"},
--{Value=65,Name="Pokémon Center"},
--{Value=67,Name="Telnor Town Forest"},
--{Value=69,Name="Ice Cave"},
--{Value=71,Name="Ingido Plateau"},
--{Value=73,Name="Pokémon League"},
--{Value=75,Name="Pokémon League"},
--{Value=77,Name="Hall of Fame"},
--{Value=79,Name="Route 4"},
--{Value=81,Name="Route 4"},
--{Value=83,Name="Route 5"},
{Value=85,Name="Cult of Darkrai"},
{Value=87,Name="Midna Town"},
--{Value=89,Name="Route 6"},
--{Value=91,Name="Route 6"},
--{Value=93,Name="Cycling Road gate"},
--{Value=95,Name="Route 7"},
--{Value=97,Name="Route 1"},
--{Value=99,Name="Rock Cave"},
--{Value=101,Name="Rock Cave"},
--{Value=103,Name="Dungeon"},
--{Value=105,Name="Battle Frontier"},
--{Value=107,Name="Battle Frontier Poké Center"},
--{Value=109,Name="Battle Frontier Mart"},
--{Value=111,Name="Battle Tower"},
--{Value=113,Name="Battle Tower arena"},
--{Value=115,Name="Stadium Cup lobby"},
--{Value=117,Name="Battle Palace"},
--{Value=119,Name="Battle Palace arena"},
--{Value=121,Name="Battle Arena"},
--{Value=123,Name="Battle Arena arena"},
--{Value=125,Name="Battle Factory"},
--{Value=127,Name="Battle Factory intro corridor"},
--{Value=129,Name="Battle Factory arena"},
--{Value=131,Name="Battle Factory corridor"},
--{Value=133,Name="Safari Zone"},
--{Value=135,Name="Safari Zone gate"},
--{Value=137,Name="Safari Zone"},
{Value=139,Name="Cult of Darkrai"},
{Value=141,Name="Cult of Darkrai"},
{Value=143,Name="Cult of Darkrai"},
--{Value=145,Name="Secret Base"},
--{Value=147,Name="Faraday Island"},
--{Value=149,Name="Cycling Road gate"},
--{Value=151,Name="Tiall Region"},
{Value=153,Name="House Template"},
--{Value=155,Name="Forest"},
{Value=157,Name="Secret Base"},
{Value=159,Name="Intro"},
{Value=161,Name="Route 2"},
{Value=163,Name="Cyan Cavern"},
{Value=165,Name="Suntouched City"},
{Value=167,Name="Suntouched City"},
{Value=169,Name="Telnor Town"},
{Value=171,Name="Telnor Town"},
{Value=173,Name="Telnor Town"},
{Value=175,Name="Pokemon Lab"},
{Value=177,Name="Town Hall"},
{Value=179,Name="Pokémon Center"},
{Value=181,Name="House Template"},
{Value=183,Name="Cyan Cavern"},
{Value=185,Name="Midna Town"},
{Value=187,Name="Midna Town"},
{Value=189,Name="Midna Town"},
{Value=191,Name="Midna Town"},
{Value=193,Name="Midna Town"},
{Value=195,Name="Pokémon Center"},
{Value=197,Name="Suntouched City"},
{Value=199,Name="Suntouched City"},
{Value=201,Name="Suntouched City"},
{Value=203,Name="Suntouched City"},
{Value=205,Name="Suntouched City"},
{Value=207,Name="Suntouched City"},
{Value=209,Name="Suntouched City"},
{Value=211,Name="Suntouched City"},
{Value=213,Name="Connector"},
{Value=215,Name="Pokemon Lab"},
{Value=217,Name="Trainer School"},
{Value=219,Name="Metchi Town"},
{Value=221,Name="Midna Mine"},
{Value=223,Name="Midna Mine"},
{Value=225,Name="Dark Cave"},
{Value=227,Name="Friend Safari"},
--{Value=229,Name="Evil Base"},
{Value=231,Name="Secret Base"},
{Value=233,Name="Friend Safari"},
--{Value=235,Name="Volcano"},
{Value=237,Name="Secret Base"},
{Value=239,Name="Friend Safari"},
{Value=241,Name="Midna Garden"},
{Value=243,Name="Hidden Grotto"},
{Value=245,Name="Ancient Ruins"},
{Value=247,Name="Ancient Ruins"},
{Value=249,Name="Cyan Cavern"},
{Value=251,Name="Ancient Ruins"},
{Value=253,Name="Route 3"},
{Value=255,Name="Suntouched Exitway"},
{Value=257,Name="Route 4"},
{Value=259,Name="Vipik City"},
{Value=261,Name="Pokémon Center"},
{Value=263,Name="Pokémon Center"},
{Value=265,Name="Metchi Town"},
{Value=267,Name="Metchi Town"},
{Value=269,Name="Metchi Town"},
{Value=271,Name="Metchi Town"},
{Value=273,Name="Tournament Pathway"},
{Value=275,Name="Metchi Town"},
{Value=277,Name="Metchi Town"},
{Value=279,Name="Day-Care House"},
{Value=281,Name="Route 3"},
{Value=283,Name="Small House"},
{Value=285,Name="Vipik City"},
{Value=287,Name="Vipik City"},
{Value=289,Name="Vipik City"},
{Value=291,Name="Vipik City"},
{Value=293,Name="Vipik City"},
{Value=295,Name="Vipik City"},
{Value=297,Name="Vipik Dump"},
{Value=299,Name="Suntouched Gym"},
{Value=301,Name="Crossroads"},
{Value=303,Name="Route 5"},
{Value=305,Name="Koril Town"},
{Value=307,Name="Pokémon Center"},
{Value=309,Name="Koril Town"},
{Value=311,Name="Koril Town"},
{Value=313,Name="Koril Town"},
{Value=315,Name="Koril Town"},
{Value=317,Name="Koril Town"},
{Value=319,Name="Koril Town"},
{Value=321,Name="Koril Town"},
{Value=323,Name="Hidden Grotto"},
--{Value=325,Name="Frost Castle"},
{Value=327,Name="Hidden Grotto"},
{Value=329,Name="Secret Base"},
{Value=331,Name="Friend Safari"},
--{Value=333,Name="Cyan Cavern"},
{Value=335,Name="Samsara Cave"},
{Value=337,Name="Samsara Cave"},
{Value=339,Name="Samsara Cave"},
{Value=341,Name="Jade Tower"},
{Value=343,Name="Jade Tower Post"},
{Value=345,Name="Samsara Cave"},
{Value=347,Name="Rezzai Desert"},
{Value=349,Name="Rezzai Cavern"},
{Value=351,Name="Roggan Town"},
{Value=353,Name="Route 6"},
{Value=355,Name="Route 7"},
{Value=357,Name="Helios City"},
{Value=359,Name="Black Market"},
{Value=361,Name="Helios Sewers"},
{Value=363,Name="Perfection Base"},
{Value=365,Name="Jade Tower"},
{Value=367,Name="Jade Tower"},
{Value=369,Name="Jade Tower"},
{Value=371,Name="Jade Tower"},
{Value=373,Name="Jade Tower"},
{Value=375,Name="Jade Tower"},
{Value=377,Name="Samsara Cave"},
{Value=379,Name="Secret Base"},
{Value=381,Name="Friend Safari"},
{Value=383,Name="Broadcast Tower"},
{Value=385,Name="Koril Cave"},
{Value=387,Name="Game Corner"},
{Value=389,Name="Pokémon Center"},
{Value=391,Name="Pokémon Center"},
{Value=393,Name="Roggan House"},
{Value=395,Name="Roggan House"},
{Value=397,Name="Roggan House"},
{Value=399,Name="Roggan House"},
{Value=401,Name="Roggan House"},
{Value=403,Name="Broadcast Tower"},
{Value=405,Name="Helios City"},
{Value=407,Name="Helios City"},
{Value=409,Name="Helios City"},
{Value=411,Name="Helios City"},
{Value=413,Name="Helios City"},
{Value=415,Name="Helios City"},
{Value=417,Name="Helios City"},
{Value=419,Name="Mission 1"},
{Value=421,Name="Pokemon Lab"},
{Value=423,Name="Helios City"},
{Value=425,Name="Helios City"},
{Value=427,Name="Black Market"},
{Value=429,Name="Torren Region"},
{Value=431,Name="Black Market"},
{Value=433,Name="Helios City"},
{Value=435,Name="Department Store"},
{Value=437,Name="Department Store"},
{Value=439,Name="Department Store"},
{Value=441,Name="Department Store"},
{Value=443,Name="Department Store"},
{Value=445,Name="Helios Sewers"},
{Value=447,Name="Cave of Steam"},
{Value=449,Name="Hidden Grotto"},
{Value=451,Name="Vipik Gym"},
{Value=453,Name="Vipik Gym"},
{Value=455,Name="Cave of Steam"},
{Value=457,Name="Utira Town"},
{Value=459,Name="Route 8"},
{Value=461,Name="Miara Town"},
{Value=463,Name="Stormy Seas"},
{Value=465,Name="Whirl Islands "},
{Value=467,Name="Route 9"},
{Value=469,Name="Sonata City"},
{Value=471,Name="Sonata Hills"},
{Value=473,Name="Route 10"},
{Value=475,Name="Maelstrom 9"},
{Value=477,Name="Kepler City"},
{Value=479,Name="Route 11"},
{Value=481,Name="Nasca Town"},
{Value=483,Name="Whirl Islands"},
{Value=485,Name="Whirl Islands"},
{Value=487,Name="Whirl Islands"},
{Value=489,Name="Murk Forest"},
{Value=491,Name="Hekate Town"},
{Value=493,Name="Route 12"},
{Value=495,Name="Selene City"},
{Value=497,Name="Miara Museum"},
{Value=499,Name="Miara Museum"},
{Value=501,Name="Pokémon Center"},
{Value=503,Name="Pokémon Center"},
{Value=505,Name="Pokémon Center"},
{Value=507,Name="Pokémon Center"},
{Value=509,Name="Pokémon Center"},
{Value=511,Name="Pokémon Center"},
{Value=513,Name="Pokémon Center"},
{Value=515,Name="Hidden Workshop"},
{Value=517,Name="Sonata Hills"},
{Value=519,Name="Sonata Hills"},
{Value=521,Name="Sonata Hills"},
{Value=523,Name="Sonata Hills"},
{Value=525,Name="Utira Library"},
{Value=527,Name="West Wing"},
{Value=529,Name="Far West Wing"},
{Value=531,Name="East Wing"},
{Value=533,Name="Abandoned Wing"},
{Value=535,Name="Abandoned Wing"},
{Value=537,Name="Abandoned Wing"},
{Value=539,Name="Sonata Gym"},
{Value=541,Name="Sonata Tracks"},
--{Value=543,Name="Land Tracks"},
{Value=545,Name="Water Way"},
--{Value=547,Name="Sky Tracks"},
{Value=549,Name="Flower Fields"},
{Value=551,Name="Hills Basement"},
{Value=553,Name="Kepler City"},
{Value=555,Name="Observatory"},
{Value=557,Name="Abyssal Base"},
{Value=559,Name="Kepler Gym"},
{Value=561,Name="Fiery Caverns"},
{Value=563,Name="Fiery Caverns"},
{Value=565,Name="Fiery Caverns"},
{Value=567,Name="Fiery Caverns"},
{Value=569,Name="Darkness"},
{Value=571,Name="Nasca Cave"},
{Value=573,Name="Selene Gym"},
{Value=575,Name="Dragon Ruins"},
{Value=577,Name="Route 13"},
{Value=579,Name="Dragon Ruins"},
{Value=581,Name="Dragon Ruins Post"},
{Value=583,Name="Sonata City"},
{Value=585,Name="Maelstrom 9"},
{Value=587,Name="Maelstrom 9"},
{Value=589,Name="Cyan Cavern"},
{Value=591,Name="Metchi Town"},
{Value=593,Name="Crossroads"},
{Value=595,Name="Route 9"},
{Value=597,Name="Route 11"},
{Value=599,Name="Utira Town"},
{Value=601,Name="Utira Town"},
{Value=603,Name="Utira Town"},
{Value=605,Name="Utira Town"},
{Value=607,Name="West Wing"},
{Value=609,Name="Miara Town"},
{Value=611,Name="Miara Town"},
{Value=613,Name="Miara Town"},
{Value=615,Name="Miara Town"},
{Value=617,Name="Sonata City"},
{Value=619,Name="Sonata City"},
{Value=621,Name="Sonata City"},
{Value=623,Name="Sonata City"},
{Value=625,Name="Sonata City"},
{Value=627,Name="Kepler City"},
{Value=629,Name="Kepler City"},
{Value=631,Name="Kepler City"},
{Value=633,Name="Kepler City"},
{Value=635,Name="Kepler City"},
{Value=637,Name="Kepler City"},
{Value=639,Name="Lighthouse"},
{Value=641,Name="Nasca Town"},
{Value=643,Name="Nasca Town"},
{Value=645,Name="Nasca Town"},
{Value=647,Name="Nasca Town"},
{Value=649,Name="Nasca Town"},
{Value=651,Name="Hekate Town"},
{Value=653,Name="Hekate Town"},
{Value=655,Name="Hekate Town"},
{Value=657,Name="Hekate Town"},
{Value=659,Name="Hekate Town"},
{Value=661,Name="Hekate Town"},
{Value=663,Name="Selene City"},
{Value=665,Name="Selene City"},
{Value=667,Name="Selene City"},
{Value=669,Name="Selene City"},
{Value=671,Name="Selene City"},
{Value=673,Name="Safari Zone"},
{Value=675,Name="Safari Zone "},
{Value=677,Name="Safari Zone  "},
{Value=679,Name="Safari Zone   "},
{Value=681,Name="Safari Zone gate"},
{Value=683,Name="Lighthouse"},
{Value=685,Name="Lighthouse"},
{Value=687,Name="Black Market"},
{Value=689,Name="Helios City"},
{Value=691,Name="Golden Sands"},
{Value=693,Name="Boundless Caverns"},
{Value=695,Name="Trading Center"},
{Value=697,Name="Hidden Grotto"},
{Value=699,Name="Hidden Grotto"},
{Value=701,Name="Hidden Grotto"},
{Value=703,Name="Selene City"},
--{Value=705,Name="Mossy Ruins"},
{Value=707,Name="Secret Base"},
{Value=709,Name="Friend Safari"},
{Value=711,Name="Route 8"},
{Value=713,Name="Route 8"},
{Value=715,Name="Safari Zone  "},
{Value=717,Name="Safari Zone"},
{Value=719,Name="Safari Zone"},
{Value=721,Name="Safari Zone"},
{Value=723,Name="Safari Zone"},
{Value=725,Name="Selene City"},
{Value=727,Name="Mysterious Hideaway"},
{Value=729,Name="Ancient Tower"},
{Value=731,Name="Ancient Tower"},
{Value=733,Name="Ancient Tower"},
{Value=735,Name="Ancient Tower"},
{Value=737,Name="Ancient Tower"},
{Value=739,Name="Fiery Caverns"},
{Value=741,Name="Vipik Dump"},
{Value=743,Name="Nasca Town"},
{Value=745,Name="Nasca Town"},
{Value=747,Name="Nasca Town"},
{Value=749,Name="Power Farm"},
{Value=751,Name="Mission 2"},
{Value=753,Name="Mission 3"},
{Value=755,Name="Murk Forest"},
{Value=757,Name="Murk Forest"},
{Value=759,Name="Murk Forest"},
{Value=761,Name="TP MAP"},
{Value=763,Name="Hidden Grotto"},
{Value=765,Name="Triple Triad Room"},
{Value=767,Name="Cult of Darkrai"},
{Value=769,Name="Black Market"},
{Value=771,Name="Far West Wing"},
--{Value=773,Name="Beach"},
{Value=775,Name="Secret Base"},
--{Value=777,Name="Miniature"},
{Value=779,Name="Secret Base"},
{Value=781,Name="Friend Safari"},
{Value=1559,Name="FLASH_ARCEUS"},
--{Value=1561,Name="Meteor Landing"},
--{Value=1563,Name="Volcano Core"},
--{Value=1565,Name="Route 307"},
--{Value=1567,Name="1"},
--{Value=1571,Name="Nyasa true"},
{Value=1581,Name="FLASH_ARCEUS"},
{Value=1585,Name="Test Tilesets Map"}
}
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
            MainFrm.TaskBar.Caption = Title.." "..Author.." - Unable to find Base Pointer"
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
    MainFrm.TaskBar.Caption = Title.." "..Author.." - Attached to Pokemon Insurgence"
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

MainFrm.show()
mapLoad()

atc=createTimer(nil);
timer_setInterval(atc,500)
timer_onTimer(atc,runPI)
