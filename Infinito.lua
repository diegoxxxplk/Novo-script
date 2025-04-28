-- Super Script para Blue Lock Rivals (Mobile)

-- Criação da Interface
local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
screenGui.ResetOnSpawn = false

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 300, 0, 250)
frame.Position = UDim2.new(0.5, -150, 0.4, 0)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 255)
frame.BackgroundTransparency = 0.2
frame.BorderSizePixel = 0

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "Super Menu"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextScaled = true

-- Função de botão
local function createButton(text, posY, callback)
    local button = Instance.new("TextButton", frame)
    button.Size = UDim2.new(0.8, 0, 0, 40)
    button.Position = UDim2.new(0.1, 0, 0, posY)
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.GothamBold
    button.TextScaled = true
    button.Text = text

    button.MouseButton1Click:Connect(callback)
end

-- Ultimate infinita
createButton("Ultimate Infinita", 60, function()
    while true do
        task.wait(0.5)
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("Stats") and char.Stats:FindFirstChild("UltimateGauge") then
            char.Stats.UltimateGauge.Value = 100
        end
    end
end)

-- Drible infinito
createButton("Drible Infinito", 110, function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("Stats") and char.Stats:FindFirstChild("DribbleCooldown") then
        char.Stats.DribbleCooldown.Value = 0
    end
end)

-- Super Chute Azul
createButton("Super Chute Azul", 160, function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        local ball = workspace:FindFirstChild("SoccerBall")
        if ball then
            ball.Velocity = (ball.Position - char.HumanoidRootPart.Position).Unit * 300 -- Chute forte
            -- Efeito Azul
            local explosion = Instance.new("Explosion")
            explosion.BlastPressure = 0
            explosion.BlastRadius = 0
            explosion.Position = ball.Position
            explosion.Parent = workspace
            ball.BrickColor = BrickColor.new("Bright blue")
        end
    end
end)

-- Música épica
createButton("Música Épica", 210, function()
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://1837463285" -- Música épica (você pode mudar)
    sound.Volume = 2
    sound.Looped = true
    sound:Play()
end)
