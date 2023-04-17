local player = game:GetService("Players").LocalPlayer
local playerGui = player.PlayerGui
local getHubVersion = "v1"
local bindable = Instance.new("BindableFunction")
local starterGUI = game:GetService("StarterGui")
local ts = game:GetService("TweenService")
local games = {tonumber("4287812296")--[[x2Hub Game]],tonumber("280343502")--[[Pick A Side]],tonumber("1768079756")--[[just grass]],tonumber("1430993116")--[[literal baseplate]],tonumber("6708206173")}


for i,v in next, games do
	if game.GameId==v then
		if not playerGui:FindFirstChild("x2Hub") then
			starterGUI:SetCore("SendNotification", {
				Title = "x2Hub";
				Text = "Do you want to execute x2Hub version: "..getHubVersion.."?";
				Duration = 40;
				Callback = bindable;
				Button1 = "Execute";
				Button2 = "no";
			})
		else
			playerGui:FindFirstChild("x2Hub"):Destroy()
			starterGUI:SetCore("SendNotification", {
				Title = "x2Hub";
				Text = "Do you want to execute x2Hub version: "..getHubVersion.."?";
				Duration = 40;
				Callback = bindable;
				Button1 = "Execute";
				Button2 = "no";
			})
		end
	else
		print("not")
	end
end

--[[

hub made by x2Lazy

]]

function bindable.OnInvoke(response)
	if response == "Execute" then

		starterGUI:SetCore("SendNotification", {
			Title = "Loading Hub";
			Text="may take a while. . .";
			Duration = 2;
		})

		local UserInputService = game:GetService("UserInputService")

		if not playerGui:FindFirstChild("x2Hub") then
			local gui = Instance.new("ScreenGui")
			local moveableFrame = Instance.new("Frame")
			local mainFrame = Instance.new("Frame")
			local sideFrame = Instance.new("Frame")
			local nameOfHub = Instance.new("TextLabel")
			local gameLogo, gameLogoRoundify = Instance.new("ImageLabel"), Instance.new("UICorner")
			local homeButton = Instance.new("TextButton")
			local mainButton = Instance.new("TextButton")
			local universalButton = Instance.new("TextButton")
			local homeFrame, homeFrameRoundify = Instance.new("Frame"), Instance.new("UICorner")
			local madeByText = Instance.new("TextLabel")
			local creatorText = Instance.new("TextLabel")
			local mainGameFrame, mainGameFrameRoundify = Instance.new("ScrollingFrame"), Instance.new("UICorner")
			local uiLL= Instance.new("UIListLayout")
			local button1 = Instance.new("TextButton")
			local resetBtn = Instance.new("TextButton")
			local exitBtn = Instance.new("TextButton")
			local minimizeBtn = Instance.new("TextButton")

			local P = game:GetService("Players")
			local userId = player.UserId
			local thumbType = Enum.ThumbnailType.HeadShot
			local thumbSize = Enum.ThumbnailSize.Size420x420
			local pfp = P:GetUserThumbnailAsync(userId, thumbType, thumbSize)

			gui.Name="x2Hub"
			gui.Parent=game:GetService("CoreGui")
			gui.ResetOnSpawn=false

			moveableFrame.Name="move_frame"
			moveableFrame.Parent=gui
			moveableFrame.Position=UDim2.new(0.059, 0,0.228, 0)
			moveableFrame.Size=UDim2.new(0, 696,0, 20)
			moveableFrame.ZIndex=4
			moveableFrame.Transparency=1


			mainFrame.Name="main_frame"
			mainFrame.Parent=moveableFrame
			mainFrame.ZIndex=0
			mainFrame.Visible=true
			mainFrame.Position=UDim2.new(-0.001, 0,-0.022, 0)
			mainFrame.Size=UDim2.new(0, 698,0, 371)
			mainFrame.BackgroundColor3=Color3.new(0, 0, 0)


			sideFrame.Name="side_frame"
			sideFrame.Parent=mainFrame
			sideFrame.ZIndex=1
			sideFrame.Transparency=0
			sideFrame.BackgroundColor3=Color3.new(0.231373, 0.231373, 0.231373)
			sideFrame.Position=UDim2.new(0,0,0,0)
			sideFrame.Size=UDim2.new(0,194,0,371)


			nameOfHub.Name="name_of_hub"
			nameOfHub.Parent=sideFrame
			nameOfHub.Text="x2Hub "..getHubVersion
			nameOfHub.BackgroundTransparency=1
			nameOfHub.Position=UDim2.new(0.36, 0,0.049, 0)
			nameOfHub.Size=UDim2.new(0,106,0,33)
			nameOfHub.TextColor3=Color3.new(1, 1, 1)
			nameOfHub.Font=Enum.Font.SourceSans
			nameOfHub.TextScaled=true
			nameOfHub.TextSize=14


			gameLogo.Name="gameLogo"
			gameLogo.Parent=sideFrame
			gameLogoRoundify.Parent=gameLogo
			gameLogoRoundify.CornerRadius=UDim.new(1,1)
			gameLogo.BackgroundTransparency=1
			gameLogo.Position=UDim2.new(0.077, 0,0.027, 0)
			gameLogo.Size=UDim2.new(0,47,0,47)
			gameLogo.Image=pfp


			homeButton.Name="home_button"
			homeButton.Text="Home"
			homeButton.Parent=sideFrame
			homeButton.BackgroundTransparency=0
			homeButton.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.34902)
			homeButton.ZIndex=2
			homeButton.Position=UDim2.new(0.081,0,0.24,0)
			homeButton.Size=UDim2.new(0,161,0,29)
			homeButton.TextColor3=Color3.new(1, 1, 1)
			homeButton.Font=Enum.Font.SourceSans
			homeButton.TextScaled=true
			homeButton.TextSize=14


			mainButton.Name="main_button"
			mainButton.Parent=sideFrame
			mainButton.BackgroundTransparency=0
			mainButton.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.34902)
			mainButton.ZIndex=2
			mainButton.Position=UDim2.new(0.081, 0,0.356, 0)
			mainButton.Size=UDim2.new(0,161,0,29)
			mainButton.TextColor3=Color3.new(1, 1, 1)
			mainButton.Font=Enum.Font.SourceSans
			mainButton.TextScaled=true
			mainButton.TextSize=14
			
			universalButton.Name="universal_button"
			universalButton.Text="Universal"
			universalButton.Parent=sideFrame
			universalButton.BackgroundTransparency=0
			universalButton.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.34902)
			universalButton.ZIndex=2
			universalButton.Position=UDim2.new(0.081, 0,0.472, 0)
			universalButton.Size=UDim2.new(0,161,0,29)
			universalButton.TextColor3=Color3.new(1, 1, 1)
			universalButton.Font=Enum.Font.SourceSans
			universalButton.TextScaled=true
			universalButton.TextSize=14

			homeFrame.Name="home_frame"
			homeFrame.Parent=mainFrame
			homeFrameRoundify.Parent=homeFrame
			homeFrame.ZIndex=1
			homeFrame.Transparency=0
			homeFrame.BackgroundColor3=Color3.new(0.231373, 0.231373, 0.231373)
			homeFrame.Position=UDim2.new(0.331,0,0.049,0)
			homeFrame.Size=UDim2.new(0,439,0,128)

			madeByText.Name="made_by_text"
			madeByText.Text="Made By"
			madeByText.Parent=homeFrame
			madeByText.BackgroundTransparency=1
			madeByText.ZIndex=1
			madeByText.Font=Enum.Font.SourceSans
			madeByText.TextScaled=true
			madeByText.TextColor3=Color3.new(1,1,1)
			madeByText.Position=UDim2.new(0.266, 0,0, 0)
			madeByText.Size=UDim2.new(0,200,0,50)

			creatorText.Name="game_creator_text"
			creatorText.Text="x2Lazy"
			creatorText.Parent=homeFrame
			creatorText.BackgroundTransparency=1
			creatorText.ZIndex=1
			creatorText.Font=Enum.Font.SourceSans
			creatorText.TextScaled=true
			creatorText.TextColor3=Color3.new(1,1,1)
			creatorText.Position=UDim2.new(0.266,0,0.469,0)
			creatorText.Size=UDim2.new(0,200,0,50)

			mainGameFrame.Name="main_game_frame"
			mainGameFrame.Parent=mainFrame
			mainGameFrame.Visible=false
			mainGameFrameRoundify.Parent=mainGameFrame
			mainGameFrame.ZIndex=1
			mainGameFrame.Transparency=0
			mainGameFrame.BackgroundColor3=Color3.new(0.231373, 0.231373, 0.231373)
			mainGameFrame.Position=UDim2.new(0.331,0,0.049,0)
			mainGameFrame.Size=UDim2.new(0, 429,0, 307)

			uiLL.Name="layout"
			uiLL.Parent=mainGameFrame
			uiLL.CellPadding=UDim2.new(0,5,0,5)
			uiLL.CellSize=UDim2.new(0,125,0,21)
			uiLL.FillDirection=Enum.FillDirection.Vertical
			uiLL.SortOrder=Enum.SortOrder.LayoutOrder
			uiLL.VerticalAlignment=Enum.VerticalAlignment.Top
			uiLL.HorizontalAlignment=Enum.HorizontalAlignment.Center


			button1.Name="button1"
			button1.Parent=mainGameFrame
			button1.Text="Pick A Side ()"
			button1.ZIndex=2
			button1.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			button1.Position=UDim2.new(0.037, 0,0.036, 0)
			button1.Size=UDim2.new(0,125,0,21)
			button1.TextColor3=Color3.new(1,1,1)
			button1.TextScaled=true

			resetBtn.Name="reset_button"
			resetBtn.Parent=mainFrame
			resetBtn.Visible = false
			resetBtn.Text="reset"
			resetBtn.ZIndex=2
			resetBtn.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			resetBtn.Position=UDim2.new(0.549, 0,0.928, 0)
			resetBtn.Size=UDim2.new(0,125,0,21)
			resetBtn.TextColor3=Color3.new(1,1,1)
			resetBtn.TextScaled=true

			exitBtn.Name="exit_button"
			exitBtn.Parent=mainFrame
			exitBtn.Visible = true
			exitBtn.Text="X"
			exitBtn.ZIndex=2
			exitBtn.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			exitBtn.Position=UDim2.new(0.972,0,-0.002,0)
			exitBtn.Size=UDim2.new(0,19,0,21)
			exitBtn.TextColor3=Color3.new(1,1,1)
			exitBtn.TextScaled=true

			minimizeBtn.Name="minimize_button"
			minimizeBtn.Parent=mainFrame
			minimizeBtn.Visible = true
			minimizeBtn.Text="-"
			minimizeBtn.ZIndex=2
			minimizeBtn.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			minimizeBtn.Position=UDim2.new(0.935,0,-0.002,0)
			minimizeBtn.Size=UDim2.new(0,19,0,21)
			minimizeBtn.TextColor3=Color3.new(1,1,1)
			minimizeBtn.TextScaled=true


			starterGUI:SetCore("SendNotification", {
				Title = "Success";
				Text="";
				Duration = 1;
			})
			
			if game.GameId==games[2] then
				mainButton.Text="Pick A Side"
			end
			
			if mainButton.Text=="Pick A Side" then
				for i,v in pairs(mainGameFrame:GetDescendants()) do
					if v:IsA("TextButton") then
						if not string.find(v.Text,"Pick") then
							v.Visible=false
						end
					end
				end
			end

			--close application
			UserInputService.InputBegan:Connect(function(input)
				if input.KeyCode==Enum.KeyCode.RightControl then
					moveableFrame.Visible=not moveableFrame.Visible
				end
				if input.KeyCode==Enum.KeyCode.LeftControl then
					gui:Destroy()
				end
			end)

			exitBtn.MouseButton1Click:Connect(function()
				gui:Destroy()
			end)

			minimizeBtn.MouseButton1Click:Connect(function()
				moveableFrame.Visible=false
				starterGUI:SetCore("SendNotification", {
					Title = "Alert: x2Hub is minimized!";
					Text="Press Right Control to Maximize hub";
					Duration = 7;
				})
			end)

			--Roundify Buttons
			for i, btns in pairs(moveableFrame:GetDescendants()) do
				if btns:IsA("TextButton") then
					btns.AutoButtonColor=false
					local roundify = Instance.new("UICorner")
					roundify.Parent=btns
				end
			end

			--fade buttons
			for i, btns in pairs(moveableFrame:GetDescendants()) do
				if btns:IsA("TextButton") then
					btns.MouseEnter:Connect(function()
						local fadeIn = ts:Create(btns,TweenInfo.new(0.7),{BackgroundColor3=Color3.new(0, 0.666667, 1)})
						fadeIn:Play()
					end)
				end
			end

			--click home screen
			homeButton.MouseButton1Click:Connect(function()
				if homeFrame.Visible~=true then
					homeFrame.Visible=true
				end
				if mainGameFrame.Visible~=false then
					mainGameFrame.Visible=false
					resetBtn.Visible=false
				end	
			end)

			--click main game frame
			mainButton.MouseButton1Click:Connect(function()
				if homeFrame.Visible~=false then
					homeFrame.Visible=false
					mainGameFrame.Visible=true
					resetBtn.Visible=true
				end
			end)

			--unfade buttons
			for i, btns in pairs(moveableFrame:GetDescendants()) do
				if btns:IsA("TextButton") then
					btns.MouseLeave:Connect(function()
						local fadeOut = ts:Create(btns,TweenInfo.new(0.7),{BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)})
						fadeOut:Play()
					end)
				end
			end

			--reset button
			resetBtn.MouseButton1Click:Connect(function()
				player.Character:BreakJoints()
			end)

			--auto catch type shit
			button1.MouseButton1Click:Connect(function()
				--[[]]
			end)

			--Moves Frame
			local dragging
			local dragInput
			local dragStart
			local startPos


			local function update(input)
				local delta = input.Position - dragStart
				moveableFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end

			moveableFrame.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStart = input.Position
					startPos = moveableFrame.Position

					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)

			moveableFrame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)

			UserInputService.InputChanged:Connect(function(input)
				if input == dragInput and dragging and moveableFrame.Visible~=false then
					update(input)
				end
			end)
		end
	else
		print("pressed no")
	end
end
