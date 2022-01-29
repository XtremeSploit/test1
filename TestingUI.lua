-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TxtEdtr = Instance.new("TextBox")
local ExecBtn = Instance.new("TextButton")
local ClrBtn = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Position = UDim2.new(0.334801793, 0, 0.308868527, 0)
Frame.Size = UDim2.new(0, 450, 0, 250)

TxtEdtr.Name = "TxtEdtr"
TxtEdtr.Parent = Frame
TxtEdtr.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TxtEdtr.Position = UDim2.new(0.00399997272, 0, 0.00800000038, 0)
TxtEdtr.Size = UDim2.new(0, 445, 0, 206)
TxtEdtr.ClearTextOnFocus = false
TxtEdtr.Font = Enum.Font.RobotoMono
TxtEdtr.MultiLine = true
TxtEdtr.Text = ""
TxtEdtr.TextColor3 = Color3.fromRGB(255, 255, 255)
TxtEdtr.TextSize = 14.000
TxtEdtr.TextXAlignment = Enum.TextXAlignment.Left
TxtEdtr.TextYAlignment = Enum.TextYAlignment.Top

ExecBtn.Name = "ExecBtn"
ExecBtn.Parent = Frame
ExecBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ExecBtn.Position = UDim2.new(0.00400000019, 0, 0.846000016, 0)
ExecBtn.Size = UDim2.new(0, 188, 0, 35)
ExecBtn.Font = Enum.Font.Roboto
ExecBtn.Text = "Execute"
ExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBtn.TextSize = 14.000

ClrBtn.Name = "ClrBtn"
ClrBtn.Parent = Frame
ClrBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ClrBtn.Position = UDim2.new(0.574999988, 0, 0.846000016, 0)
ClrBtn.Size = UDim2.new(0, 188, 0, 35)
ClrBtn.Font = Enum.Font.Roboto
ClrBtn.Text = "Clear"
ClrBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClrBtn.TextSize = 14.000

-- Scripts:

local function MOFFFC_fake_script() -- ExecBtn.LocalScript 
	local script = Instance.new('LocalScript', ExecBtn)

	local scriptEditor = script.Parent.Parent.TxtEdtr
	script.Parent.MouseButton1Click:Connect(function()
		loadstring(scriptEditor.Text)()
	end)
end
coroutine.wrap(MOFFFC_fake_script)()
local function WRVFZSW_fake_script() -- ClrBtn.LocalScript 
	local script = Instance.new('LocalScript', ClrBtn)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.TxtEdtr.Text = ""
	end)
	
end
coroutine.wrap(WRVFZSW_fake_script)()
local function GOMEBQP_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	-- Dragify
	
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    local dragToggle = nil
	    local dragSpeed = 0
	    local dragInput = nil
	    local dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(GOMEBQP_fake_script)()
