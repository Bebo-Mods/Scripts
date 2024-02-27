local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local PhantomForcesWindow = Library:NewWindow("Second Piece")
local KillingCheats = PhantomForcesWindow:NewSection("Main")
game.Players.LocalPlayer.Character.Humanoid:UnequipTools(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"))
wait(0.2)
tools = {"::Select Tools::",}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        table.insert(tools,v.Name)
end

local RE = KillingCheats:CreateDropdown("Select Tools", tools, 1, function(text)
    toolsname = text
    function tools()
        spawn(function()
            _G.tools = true
            while _G.tools do wait()
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack[toolsname])
                    wait(1)
                end)
            end
        end)
    end
end)

KillingCheats:CreateToggle("Equip Tools", function(value)
    _G.tools = value
    print('tools: ', value);
    if value then
        tools();
        _G.tools = true
        else
        _G.tools = false
    end
end)
KillingCheats:CreateToggle("Auto Attack", function(value)
    _G.Attack = value
    print('Attack: ', value);
    if value then
        Attack();
    end
end)

function Attack()
    spawn(function()
        _G.Attack = true
        while _G.Attack do wait()
        pcall(function()
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):Activate()
            wait()
        end)
    end
end)
end
Quest = {"::Select Quest::",}
for i,v in pairs(workspace.Quest:GetDescendants()) do
    if v.Name == "Quest" then
        table.insert(Quest,v.Value)
    end
end

KillingCheats:CreateDropdown("Select Quest", Quest, 1, function(text)
    Questname = text
    function Quest()
        spawn(function()
            _G.Quest = true
            while _G.Quest do wait()
                pcall(function()
                    if not game:GetService("Players").LocalPlayer:FindFirstChild("Quest") then
                        for i,v in pairs(workspace.Quest:GetDescendants()) do
                            if v.Name == "Quest" and v.Value == Questname then
                                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Parent.Position)
                                 fireproximityprompt(v.Parent)
                             end
                         end
                    end
                    wait()
                end)
            end
        end)
    end

    if Questname == "Bandit" then
        function mobs2()
        spawn(function()
            _G.mobs2 = true
            while _G.mobs2 do wait()
                pcall(function()
                    local function GetClosestPlayer()
                    local target = nil
                    for i,v in pairs(workspace.Lives:GetDescendants()) do
                        if v.Name == "Humanoid" and v.MaxHealth == 50 and v.Health > 0 then
                            target = v
                        end
                     end
                     return target
                    end
                     repeat task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                    until not game:GetService("Players").LocalPlayer:FindFirstChild("Quest") or _G.mobs2 == false
                    return Quest()
                end)
            end
        end)
    end
    elseif Questname == "Bandit Leader" then
        function mobs2()
        spawn(function()
            _G.mobs2 = true
            while _G.mobs2 do wait()
                pcall(function()
                    local function GetClosestPlayer()
                    local target = nil
                    for i,v in pairs(workspace.Lives:GetDescendants()) do
                        if v.Name == "Humanoid" and v.MaxHealth == 350 and v.Health > 0 then
                            target = v
                        end
                     end
                     return target
                    end
                     repeat task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                    until not game:GetService("Players").LocalPlayer:FindFirstChild("Quest") or _G.mobs2 == false
                    return Quest()
                end)
            end
        end)
    end
    elseif Questname == "Clown Pirate" then
        function mobs2()
        spawn(function()
            _G.mobs2 = true
            while _G.mobs2 do wait()
                pcall(function()
                    local function GetClosestPlayer()
                    local target = nil
                    for i,v in pairs(workspace.Lives:GetDescendants()) do
                        if v.Name == "Humanoid" and v.MaxHealth == 500 and v.Health > 0 then
                            target = v
                        end
                     end
                     return target
                    end
                     repeat task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                    until not game:GetService("Players").LocalPlayer:FindFirstChild("Quest") or _G.mobs2 == false
                    return Quest()
                end)
            end
        end)
    end
    elseif Questname == "Marine" then
        function mobs2()
        spawn(function()
            _G.mobs2 = true
            while _G.mobs2 do wait()
                pcall(function()
                    local function GetClosestPlayer()
                    local target = nil
                    for i,v in pairs(workspace.Lives:GetDescendants()) do
                        if v.Name == "Humanoid" and v.MaxHealth == 850 and v.Health > 0 then
                            target = v
                        end
                     end
                     return target
                    end
                     repeat task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                    until not game:GetService("Players").LocalPlayer:FindFirstChild("Quest") or _G.mobs2 == false
                    return Quest()
                end)
            end
        end)
    end
    elseif Questname == "Monkey" then
        function mobs2()
        spawn(function()
            _G.mobs2 = true
            while _G.mobs2 do wait()
                pcall(function()
                    local function GetClosestPlayer()
                    local target = nil
                    for i,v in pairs(workspace.Lives:GetDescendants()) do
                        if v.Name == "Humanoid" and v.MaxHealth == 1500 and v.Health > 0 then
                            target = v
                        end
                     end
                     return target
                    end
                     repeat task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                    until not game:GetService("Players").LocalPlayer:FindFirstChild("Quest") or _G.mobs2 == false
                    return Quest()
                end)
            end
        end)
    end
    elseif Questname == "Monkey King" then
        function mobs2()
        spawn(function()
            _G.mobs2 = true
            while _G.mobs2 do wait()
                pcall(function()
                    local function GetClosestPlayer()
                    local target = nil
                    for i,v in pairs(workspace.Lives:GetDescendants()) do
                        if v.Name == "Humanoid" and v.MaxHealth == 3500 and v.Health > 0 then
                            target = v
                        end
                     end
                     return target
                    end
                     repeat task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                    until not game:GetService("Players").LocalPlayer:FindFirstChild("Quest") or _G.mobs2 == false
                    return Quest()
                end)
            end
        end)
    end
    elseif Questname == "Snow Bandit" then
        function mobs2()
        spawn(function()
            _G.mobs2 = true
            while _G.mobs2 do wait()
                pcall(function()
                    local function GetClosestPlayer()
                    local target = nil
                    for i,v in pairs(workspace.Lives:GetDescendants()) do
                        if v.Name == "Humanoid" and v.MaxHealth == 15000 and v.Health > 0 then
                            target = v
                        end
                     end
                     return target
                    end
                     repeat task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                    until not game:GetService("Players").LocalPlayer:FindFirstChild("Quest") or _G.mobs2 == false
                    return Quest()
                end)
            end
        end)
    end
    end



end)

KillingCheats:CreateToggle("Auto Quest", function(value)
    _G.Quest = value
    print('Quest: ', value);
    if value then
        Quest();
        _G.Quest = true
        else
        _G.Quest = false
    end
end)

KillingCheats:CreateToggle("Auto Mobs (Quest)", function(value)
    _G.mobs2 = value
    print('mobs2: ', value);
    if value then
        mobs2();
        _G.mobs2 = true
        else
        _G.mobs2 = false
        _G.Quest = false
    end
end)

KillingCheats:CreateDropdown("Select Mobs", {"::Select Mobs::","Bandit", "Bandit Leader", "Clown Pirate", "Marine", "Monkey", "Monkey King", "Bomb Man", "Sand Man", "Shank", "Snow Bandit", "Snow Bandit Leader"}, 1, function(text)
if text == "Bandit" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 50  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Bandit Leader" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 350  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Clown Pirate" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 500  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Marine" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 850  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Monkey" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 1500  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Monkey King" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 3500  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Bomb Man" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 7500  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Sand Man" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 10000  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Shank" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 12500  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Snow Bandit" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 15000  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
elseif text == "Snow Bandit Leader" then
    function mobs()
    spawn(function()
        _G.mobs = true
        while _G.mobs do wait()
            pcall(function()
                local function GetClosestPlayer()
                local target = nil
                for i,v in pairs(workspace.Lives:GetDescendants()) do
                    if v.Name == "Humanoid" and v.MaxHealth == 32500  then
                        target = v
                    end
                 end
                 return target
                end
                 repeat task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().RootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
                until _G.mobs == false
                wait()
            end)
        end
    end)
end
end
end)

KillingCheats:CreateToggle("Mobs Farm", function(value)
    _G.mobs = value
    print('mobs: ', value);
    if value then
        mobs();
        _G.mobs = true
        else
        _G.mobs = false
    end
end)
KillingCheats:CreateToggle("Steal ItemDrop", function(value)
    _G.Steal = value
    print('Steal: ', value);
    if value then
        Steal();
    end
end)

function Steal()
    spawn(function()
        _G.Steal = true
        while _G.Steal do wait()
        pcall(function()
            for i,v in pairs(workspace.ItemDrop:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                end
                end
            wait()
        end)
    end
end)
end
local KillingCheats = PhantomForcesWindow:NewSection("Misc")
KillingCheats:CreateTextbox("Set Walk Speed", function(text)
setspeed = text
function speed()
    spawn(function()
        _G.speed = true
        while _G.speed do wait()
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = setspeed
                wait()
            end)
        end
    end)
end
end)

KillingCheats:CreateToggle("Open Walk Speed", function(value)
    _G.speed = value
    print('speed: ', value);
    if value then
        speed();
        _G.speed = true
        else
        _G.speed = false
    end
end)
KillingCheats:CreateButton("Inf Jump", function()
    game:GetService("UserInputService").JumpRequest:Connect(function()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end)
end)
KillingCheats:CreateButton("Player ESP", function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
    _G.EnemyColor = Color3.fromRGB(255, 0, 0)
    _G.UseTeamColor = true
    
    --------------------------------------------------------------------
    local Holder = Instance.new("Folder", game.CoreGui)
    Holder.Name = "ESP"
    
    local Box = Instance.new("BoxHandleAdornment")
    Box.Name = "nilBox"
    Box.Size = Vector3.new(1, 2, 1)
    Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
    Box.Transparency = 0.7
    Box.ZIndex = 0
    Box.AlwaysOnTop = false
    Box.Visible = false
    
    local NameTag = Instance.new("BillboardGui")
    NameTag.Name = "nilNameTag"
    NameTag.Enabled = false
    NameTag.Size = UDim2.new(0, 200, 0, 50)
    NameTag.AlwaysOnTop = true
    NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
    local Tag = Instance.new("TextLabel", NameTag)
    Tag.Name = "Tag"
    Tag.BackgroundTransparency = 1
    Tag.Position = UDim2.new(0, -50, 0, 0)
    Tag.Size = UDim2.new(0, 300, 0, 20)
    Tag.TextSize = 15
    Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
    Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
    Tag.TextStrokeTransparency = 0.4
    Tag.Text = "nil"
    Tag.Font = Enum.Font.SourceSansBold
    Tag.TextScaled = false
    
    local LoadCharacter = function(v)
        repeat wait() until v.Character ~= nil
        v.Character:WaitForChild("Humanoid")
        local vHolder = Holder:FindFirstChild(v.Name)
        vHolder:ClearAllChildren()
        local b = Box:Clone()
        b.Name = v.Name .. "Box"
        b.Adornee = v.Character
        b.Parent = vHolder
        local t = NameTag:Clone()
        t.Name = v.Name .. "NameTag"
        t.Enabled = true
        t.Parent = vHolder
        t.Adornee = v.Character:WaitForChild("Head", 5)
        if not t.Adornee then
            return UnloadCharacter(v)
        end
        t.Tag.Text = v.Name
        b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
        t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
        local Update
        local UpdateNameTag = function()
            if not pcall(function()
                v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                local maxh = math.floor(v.Character.Humanoid.MaxHealth)
                local h = math.floor(v.Character.Humanoid.Health)
            end) then
                Update:Disconnect()
            end
        end
        UpdateNameTag()
        Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
    end
    
    local UnloadCharacter = function(v)
        local vHolder = Holder:FindFirstChild(v.Name)
        if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
            vHolder:ClearAllChildren()
        end
    end
    
    local LoadPlayer = function(v)
        local vHolder = Instance.new("Folder", Holder)
        vHolder.Name = v.Name
        v.CharacterAdded:Connect(function()
            pcall(LoadCharacter, v)
        end)
        v.CharacterRemoving:Connect(function()
            pcall(UnloadCharacter, v)
        end)
        v.Changed:Connect(function(prop)
            if prop == "TeamColor" then
                UnloadCharacter(v)
                wait()
                LoadCharacter(v)
            end
        end)
        LoadCharacter(v)
    end
    
    local UnloadPlayer = function(v)
        UnloadCharacter(v)
        local vHolder = Holder:FindFirstChild(v.Name)
        if vHolder then
            vHolder:Destroy()
        end
    end
    
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        spawn(function() pcall(LoadPlayer, v) end)
    end
    
    game:GetService("Players").PlayerAdded:Connect(function(v)
        pcall(LoadPlayer, v)
    end)
    
    game:GetService("Players").PlayerRemoving:Connect(function(v)
        pcall(UnloadPlayer, v)
    end)
    
    game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
    
    if _G.Reantheajfdfjdgs then
        return
    end
    
    _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"
    
    local players = game:GetService("Players")
    local plr = players.LocalPlayer
    
    function esp(target, color)
        if target.Character then
            if not target.Character:FindFirstChild("GetReal") then
                local highlight = Instance.new("Highlight")
                highlight.RobloxLocked = true
                highlight.Name = "GetReal"
                highlight.Adornee = target.Character
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = color
                highlight.Parent = target.Character
            else
                target.Character.GetReal.FillColor = color
            end
        end
    end
    
    while task.wait() do
        for i, v in pairs(players:GetPlayers()) do
            if v ~= plr then
                esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
            end
        end
    end
end)
local KillingCheats = PhantomForcesWindow:NewSection("YT: Tora IsMe")


local PhantomForcesWindow = Library:NewWindow("Stats / Skills")
local KillingCheats = PhantomForcesWindow:NewSection("Auto Stats")
KillingCheats:CreateToggle("Melee", function(value)
    _G.up1 = value
    print('up1: ', value);
    if value then
        up1();
    end
end)

function up1()
    spawn(function()
        _G.up1 = true
        while _G.up1 do wait()
        pcall(function()
            local args = {
                [1] = "Melee",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
            wait()
        end)
    end
end)
end

KillingCheats:CreateToggle("Weapon", function(value)
    _G.up2 = value
    print('up2: ', value);
    if value then
        up2();
    end
end)

function up2()
    spawn(function()
        _G.up2 = true
        while _G.up2 do wait()
        pcall(function()
            local args = {
                [1] = "Weapon",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
            wait()
        end)
    end
end)
end
KillingCheats:CreateToggle("Defense", function(value)
    _G.up3 = value
    print('up3: ', value);
    if value then
        up3();
    end
end)

function up3()
    spawn(function()
        _G.up3 = true
        while _G.up3 do wait()
        pcall(function()
            local args = {
                [1] = "Defense",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
            wait()
        end)
    end
end)
end
KillingCheats:CreateToggle("DemonFruit", function(value)
    _G.up4 = value
    print('up4: ', value);
    if value then
        up4();
    end
end)

function up4()
    spawn(function()
        _G.up4 = true
        while _G.up4 do wait()
        pcall(function()
            local args = {
                [1] = "DemonFruit",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
            wait()
        end)
    end
end)
end
local KillingCheats = PhantomForcesWindow:NewSection("Auto Skills")
KillingCheats:CreateToggle("Z", function(value)
    _G.skill1 = value
    print('skill1: ', value);
    if value then
        skill1();
    end
end)

function skill1()
    spawn(function()
        _G.skill1 = true
        while _G.skill1 do wait()
        pcall(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Z,false,game)
            wait()
        end)
    end
end)
end
KillingCheats:CreateToggle("X", function(value)
    _G.skill2 = value
    print('skill2: ', value);
    if value then
        skill2();
    end
end)

function skill2()
    spawn(function()
        _G.skill2 = true
        while _G.skill2 do wait()
        pcall(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.X,false,game)
            wait()
        end)
    end
end)
end
KillingCheats:CreateToggle("C", function(value)
    _G.skill3 = value
    print('skill3: ', value);
    if value then
        skill3();
    end
end)

function skill3()
    spawn(function()
        _G.skill3 = true
        while _G.skill3 do wait()
        pcall(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.C,false,game)
            wait()
        end)
    end
end)
end
KillingCheats:CreateToggle("V", function(value)
    _G.skill4 = value
    print('skill4: ', value);
    if value then
        skill4();
    end
end)

function skill4()
    spawn(function()
        _G.skill4 = true
        while _G.skill4 do wait()
        pcall(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.V,false,game)
            wait()
        end)
    end
end)
end
KillingCheats:CreateToggle("F", function(value)
    _G.skill5 = value
    print('skill5: ', value);
    if value then
        skill5();
    end
end)

function skill5()
    spawn(function()
        _G.skill5 = true
        while _G.skill5 do wait()
        pcall(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.F,false,game)
            wait()
        end)
    end
end)
end


local PhantomForcesWindow = Library:NewWindow("Teleport")
local KillingCheats = PhantomForcesWindow:NewSection("Locations")
MAP = {"::Select Location::",}
for i,v in pairs(workspace.Locations:GetChildren()) do
        table.insert(MAP,v.Name)
end
KillingCheats:CreateDropdown("Select Location", MAP, 1, function(text)
    MAPname = text
    function MAP()
        spawn(function()
            for i,v in pairs(workspace.Locations:GetDescendants()) do
                if v.name == MAPname then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
                end
             end
        end)
    end
end)

KillingCheats:CreateButton("TP", function()
    MAP()
end)
local KillingCheats = PhantomForcesWindow:NewSection("Shop")
Shop = {"::Select Shop::",}
for i,v in pairs(workspace.Shop:GetChildren()) do
        table.insert(Shop,v.Name)
end
KillingCheats:CreateDropdown("Select Shop", Shop, 1, function(text)
    shopname = text
    function Shop()
        spawn(function()
            for i,v in pairs(workspace.Shop:GetDescendants()) do
                if v.name == shopname then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
                end
             end
        end)
    end
end)

KillingCheats:CreateButton("TP", function()
    Shop()
end)
