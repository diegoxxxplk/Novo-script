local player = game.Players.LocalPlayer

-- Criação da Interface
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.4
frame.BorderSizePixel = 0

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Text = "Super Menu"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true

-- Botão Ultimate Infinita
local ultimateButton = Instance.new("TextButton", frame)
ultimateButton.Position = UDim2.new(0.1, 0, 0.4, 0)
ultimateButton.Size = UDim2.new(0.8, 0, 0.2, 0)
ultimateButton.Text = "Ultimate Infinita"
ultimateButton.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
ultimateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ultimateButton.Font = Enum.Font.SourceSansBold
ultimateButton.TextScaled = true

-- Botão Música Épica
local musicaButton = Instance.new("TextButton", frame)
musicaButton.Position = UDim2.new(0.1, 0, 0.65, 0)
musicaButton.Size = UDim2.new(0.8, 0, 0.2, 0)
musicaButton.Text = "Música Épica"
musicaButton.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
musicaButton.TextColor3 = Color3.fromRGB(255, 255, 255)
musicaButton.Font = Enum.Font.SourceSansBold
musicaButton.TextScaled = true

-- Função Ultimate Infinita
ultimateButton.MouseButton1Click:Connect(function()
    if player.Character and player.Character:FindFirstChild("Ultimate") then
        player.Character.Ultimate.Value = 999999 -- ou algo que deixe Ultimate infinito
    end
end)

-- Função Música Épica
musicaButton.MouseButton1Click:Connect(function()
    local sound = Instance.new("Sound", player:WaitForChild("PlayerGui"))
    sound.SoundId = "rbxassetid://1837461834" -- coloque o ID da música aqui
    sound.Volume = 5
    sound:Play()
end)
