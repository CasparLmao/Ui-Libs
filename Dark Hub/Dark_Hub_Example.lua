local DarkLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/CasparLmao/Ui-Libs/Main/Dark%20Hub/DarkHub.Source"))() 
local WindowOne = DarkLib:Window() -- Makes Window

local TabOne = WindowOne:Tab("Main") -- Makes Tab
local TabTwo = WindowOne:Tab("Config") -- Makes Tab
local TabThree = WindowOne:Tab("AutoFarm") -- Makes Tab
local TabFour = WindowOne:Tab("Misc") -- Makes Tab
local TabFive = WindowOne:Tab("Trolling") -- Makes Tab
local TabSix = WindowOne:Tab("Theme") -- Makes Tab
local TabSeven = WindowOne:Tab("Discord") -- Makes Tab
local TabEight = WindowOne:Tab("Credits") -- Makes Tab






TabOne:Button("Button", function() -- Makes Button
    --Button
    end)
    
TabOne:Toggle("Toggle", function()
    --Toggle
    end)
TabOne:Slider("Slider", 0, 50, function()
    --Slider
    end)



--TabOne:Colorpicker("Color Picker", preset, callback)

TabOne:Textbox("Text Box", "disapper", function()
    --Text Box
    end)

TabOne:Label("Label")
    
TabOne:Dropdown("DropDown", list, callback)

TabOne:Keybind("KeyBind", key, callback)
