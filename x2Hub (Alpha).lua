local player = game:GetService("Players").LocalPlayer
local playerGui = player.PlayerGui

local coreGui=game:GetService("CoreGui")
local getHubVersion = "v1"
local bindable = Instance.new("BindableFunction")
local starterGUI = game:GetService("StarterGui")
local ts = game:GetService("TweenService")
local games = {4287812296,280343502,1768079756,3319240411,}
local gameFound=false

for i,v in next, games do
	if game.GameId==v then
		gameFound=true
		if not coreGui:FindFirstChild("x2Hub") then
			starterGUI:SetCore("SendNotification", {
				Title = "x2Hub";
				Text = "Do you want to execute x2Hub version: "..getHubVersion.."?";
				Duration = 40;
				Callback = bindable;
				Button1 = "Execute";
				Button2 = "no";
			})
		else
			coreGui:FindFirstChild("x2Hub"):Destroy()
			starterGUI:SetCore("SendNotification", {
				Title = "x2Hub";
				Text = "Do you want to execute x2Hub version: "..getHubVersion.."?";
				Duration = 40;
				Callback = bindable;
				Button1 = "Execute";
				Button2 = "no";
			})
		end
	end
end

if gameFound==false then
	starterGUI:SetCore("SendNotification", {
		Title = "Manager";
		Text = "Game not supported yet. If you want a script for this game message me! Current Game ID: "..tostring(game.GameId);
		Duration = 15;
	})
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

		if not coreGui:FindFirstChild("x2Hub") then
			local gui = Instance.new("ScreenGui")
			local moveableFrame = Instance.new("Frame")
			local mainFrame = Instance.new("Frame")
			local sideFrame = Instance.new("Frame")
			local nameOfHub = Instance.new("TextLabel")
			local gameLogo, gameLogoRoundify = Instance.new("ImageLabel"), Instance.new("UICorner")
			local homeButton = Instance.new("TextButton")
			local mainButton = Instance.new("TextButton")
			local homeFrame, homeFrameRoundify = Instance.new("Frame"), Instance.new("UICorner")
			local welcomingText = Instance.new("TextLabel")
			local subjectText = Instance.new("TextLabel")
			local mainGameFrame, mainGameFrameRoundify = Instance.new("ScrollingFrame"), Instance.new("UICorner")
			local uiLL= Instance.new("UIListLayout")
			local avalanche = Instance.new("TextButton")
			local workatapizzaplace_tptomanager = Instance.new("TextButton")
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

			welcomingText.Name="Welcome_text"
			welcomingText.Text="Welcome: "
			welcomingText.Parent=homeFrame
			welcomingText.BackgroundTransparency=1
			welcomingText.ZIndex=1
			welcomingText.Font=Enum.Font.SourceSans
			welcomingText.TextScaled=true
			welcomingText.TextColor3=Color3.new(1,1,1)
			welcomingText.Position=UDim2.new(0.266, 0,0, 0)
			welcomingText.Size=UDim2.new(0,200,0,50)

			subjectText.Name="subject_text"
			subjectText.Text=player.Name.."(@"..player.DisplayName..")"
			subjectText.Parent=homeFrame
			subjectText.BackgroundTransparency=1
			subjectText.ZIndex=1
			subjectText.Font=Enum.Font.SourceSans
			subjectText.TextScaled=true
			subjectText.TextColor3=Color3.new(1,1,1)
			subjectText.Position=UDim2.new(0.266,0,0.469,0)
			subjectText.Size=UDim2.new(0,200,0,50)

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
			uiLL.FillDirection=Enum.FillDirection.Vertical
			uiLL.SortOrder=Enum.SortOrder.LayoutOrder
			uiLL.VerticalAlignment=Enum.VerticalAlignment.Top
			uiLL.HorizontalAlignment=Enum.HorizontalAlignment.Center


			avalanche.Name="avalanche_1"
			avalanche.Parent=mainGameFrame
			avalanche.Text="Avalanche Game Bullshit"
			avalanche.ZIndex=2
			avalanche.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			avalanche.Position=UDim2.new(0.037, 0,0.036, 0)
			avalanche.Size=UDim2.new(0,125,0,21)
			avalanche.TextColor3=Color3.new(1,1,1)
			avalanche.TextScaled=true
			
			workatapizzaplace_tptomanager.Name="waapp_1"
			workatapizzaplace_tptomanager.Parent=mainGameFrame
			workatapizzaplace_tptomanager.Text="Work at a Pizza Place (TP To Manager Whatever shit)"
			workatapizzaplace_tptomanager.ZIndex=2
			workatapizzaplace_tptomanager.BackgroundColor3=Color3.new(0.313725, 0.313725, 0.313725)
			workatapizzaplace_tptomanager.Position=UDim2.new(0.037, 0,0.036, 0)
			workatapizzaplace_tptomanager.Size=UDim2.new(0,125,0,21)
			workatapizzaplace_tptomanager.TextColor3=Color3.new(1,1,1)
			workatapizzaplace_tptomanager.TextScaled=true

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


			--Avalanche
			avalanche.MouseButton1Click:Connect(function()
				local p_forscript=game:GetService("Players").LocalPlayer
				local starterGUI = game:GetService("StarterGui")
				local isTrue=false

				starterGUI:SetCore("SendNotification", {
					Title = "x2Hub Avalanch AutoWin Script";
					Text = "executing (execute before match)";
					Duration = 10;
				})

				local function main()
					local ve
					starterGUI:SetCore("SendNotification", {
						Title = "Manager";
						Text = "Waiting for match to start";
						Duration = 10;
					})
					repeat task.wait() until p_forscript.PlayerGui.Hud.GameTimer.Text=="02:59"
					while task.wait(1) do
						for i,v in pairs(game:GetService("Workspace").ActiveMap:GetDescendants()) do
							if v:IsA("MeshPart") and v.Name=="Finish" then
								ve=v
								isTrue=true
								starterGUI:SetCore("SendNotification", {
									Title = "Manager";
									Text = "found: "..v.Name;
									Duration = 5;
								})
								break
							end    
						end
						if isTrue==true then
							break
						end
					end
					local ff=Instance.new("ForceField")
					local newVelocity=Instance.new("LinearVelocity",p_forscript.Character)
					local attach0=Instance.new("Attachment",p_forscript.Character:FindFirstChild("HumanoidRootPart"))

					local force=45000
					local speed=600

					ff.Parent=p_forscript.Character.HumanoidRootPart
					newVelocity.MaxForce=force
					newVelocity.Attachment0=attach0
					newVelocity.VectorVelocity=p_forscript.Character.PrimaryPart.CFrame.UpVector*speed

					task.wait(4)
					newVelocity.VectorVelocity=Vector3.new(0,0,0)
					task.wait(5)
					starterGUI:SetCore("SendNotification", {
						Title = "Manager";
						Text = "Alert: May take a while to tp to finish since game has a caculated time for a regular player to reach the end";
						Duration = 15;
					})
					newVelocity.VectorVelocity=p_forscript.Character.PrimaryPart.CFrame.LookVector*speed
					task.wait(50)

					p_forscript.Character.PrimaryPart:PivotTo(ve.CFrame)
					isTrue=false
					repeat task.wait() until p_forscript.PlayerGui.Hud.GameTimer.Text=="00:01" or p_forscript.PlayerGui.Hud.GameTimer.Visible==false
					main()
				end

				main()
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
