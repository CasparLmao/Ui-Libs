--- https://xheptcofficial.gitbook.io/kavo-library/ -----



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/CasparLmao/Ui-Libs/Main/Kavo/Kavo.Source"))() --Library Loadstring


local Window = Library.CreateLib("TITLE", "DarkTheme") --Creating UI Library Window


local Tab = Window:NewTab("TabName") --tab



local Section = Tab:NewSection("Section Name") --Section



Section:UpdateSection("Section New Title") --updating the section



Section:NewLabel("LabelText") --label




label:UpdateLabel("New Text") --Updating The Label



Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end) --Button


button:UpdateButton("New Text") --Updating Button Text




Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end) --TextBox

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end) --KeyBind

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end) --Ui Toggle

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end) --Dropdown

local oldList = {
  "2019",
  "2020"
}
local newList = {
  "2021",
  "2022"
}
local dropdown = Section:NewDropdown("Dropdown","Info", oldList, function()

end)
Section:NewButton("Update Dropdown", "Refreshes Dropdown", function()
  dropdown:Refresh(newList)
end) --Button

Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
end) --Colour Picker

local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
--colours [change if you know how to]



local Window = Library.CreateLib("TITLE", colors)




for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
