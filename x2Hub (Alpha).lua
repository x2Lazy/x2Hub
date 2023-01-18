local player = game:GetService("Players").LocalPlayer
local playerGui = player.PlayerGui
local getHubVersion = "v1"
local bindable = Instance.new("BindableFunction")
local starterGUI = game:GetService("StarterGui")
local ts = game:GetService("TweenService")
local games = {tonumber("4287812296")--[[x2Hub Game]],tonumber("280343502")--[[Pick A Side]],tonumber("1768079756")--[[just grass]],tonumber("1430993116")--[[literal baseplate]]}


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
			starterGUI:SetCore("SendNotification", {
				Title = "Error";
				Text = "Already Executed";
				Duration = 10;
			})
		end
	end
end

for i = 0,#games,1 do

	if game.GameId~=games[i] and not games[i] then
		starterGUI:SetCore("SendNotification", {
			Title = "Error";
			Text = "Invalid Game";
			Duration = 10;
		})
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


		wait(3)

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
			local homeFrame, homeFrameRoundify = Instance.new("Frame"), Instance.new("UICorner")
			local madeByText = Instance.new("TextLabel")
			local creatorText = Instance.new("TextLabel")
			local mainGameFrame, mainGameFrameRoundify = Instance.new("Frame"), Instance.new("UICorner")
			local feButton1 = Instance.new("TextButton")
			local resetBtn = Instance.new("TextButton")
			local netlessBtn = Instance.new("TextButton")
			
			local P = game:GetService("Players")
			local userId = player.UserId
			local thumbType = Enum.ThumbnailType.HeadShot
			local thumbSize = Enum.ThumbnailSize.Size420x420
			local pfp = P:GetUserThumbnailAsync(userId, thumbType, thumbSize)

			gui.Name="x2Hub"
			gui.Parent=playerGui
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
			mainButton.Text="Script Dump"
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
			mainGameFrame.Size=UDim2.new(0, 429,0, 316)

			feButton1.Name="fe_block_button"
			feButton1.Parent=mainGameFrame
			feButton1.Text="Dual Sword FE"
			feButton1.ZIndex=2
			feButton1.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			feButton1.Position=UDim2.new(0.037, 0,0.036, 0)
			feButton1.Size=UDim2.new(0,125,0,21)
			feButton1.TextColor3=Color3.new(1,1,1)
			feButton1.TextScaled=true

			resetBtn.Name="reset_button"
			resetBtn.Parent=mainFrame
			resetBtn.Visible = false
			resetBtn.Text="reset"
			resetBtn.ZIndex=2
			resetBtn.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			resetBtn.Position=UDim2.new(0.766, 0,0.928, 0)
			resetBtn.Size=UDim2.new(0,125,0,21)
			resetBtn.TextColor3=Color3.new(1,1,1)
			resetBtn.TextScaled=true
			
			netlessBtn.Name="netless_button"
			netlessBtn.Parent=mainFrame
			netlessBtn.Visible = false
			netlessBtn.Text="Netless"
			netlessBtn.ZIndex=2
			netlessBtn.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			netlessBtn.Position=UDim2.new(0.33, 0,0.928, 0)
			netlessBtn.Size=UDim2.new(0,125,0,21)
			netlessBtn.TextColor3=Color3.new(1,1,1)
			netlessBtn.TextScaled=true


			starterGUI:SetCore("SendNotification", {
				Title = "Success";
				Text="";
				Duration = 1;
			})

			--close application
			UserInputService.InputBegan:Connect(function(input)
				if input.KeyCode==Enum.KeyCode.RightControl then
					moveableFrame.Visible=not moveableFrame.Visible
				end
				if input.KeyCode==Enum.KeyCode.LeftControl then
					gui:Destroy()
				end
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
					netlessBtn.Visible = false
					resetBtn.Visible=false
				end	
			end)

			--click main game frame
			mainButton.MouseButton1Click:Connect(function()
				if homeFrame.Visible~=false then
					homeFrame.Visible=false
					mainGameFrame.Visible=true
					netlessBtn.Visible = true
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

			--fe block type shit
			feButton1.MouseButton1Click:Connect(function()
				--[[for later use]]
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
