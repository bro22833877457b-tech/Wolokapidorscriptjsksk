-- Lynd Deobfuscator & Dumper | https://discord.gg/SRvRc2XF6s
-- processed in 20889ms

local function createScreenGui(Value, Data, Input, Param, Source, Target, ...)
    local LocalPlayer = game.Players.LocalPlayer
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "LoadingScreen"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.DisplayOrder = 999999999
    ScreenGui.Parent = LocalPlayer.PlayerGui
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BackgroundTransparency = 0.6
    Frame.BorderSizePixel = 0
    Frame.ZIndex = 0
    Frame.Parent = ScreenGui
    local Frame2 = Instance.new("Frame")
    Frame2.Size = UDim2.new(0, 400, 0, 220)
    Frame2.Position = UDim2.new(0.5,-200, 0.5,-110)
    Frame2.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
    Frame2.BorderSizePixel = 0
    Frame2.ClipsDescendants = true
    Frame2.ZIndex = 1
    Frame2.Parent = ScreenGui
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 12)
    UICorner.Parent = Frame2
    local UIStroke = Instance.new("UIStroke")
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke.Color = Color3.fromRGB(100, 200, 255)
    UIStroke.Thickness = 2
    UIStroke.Transparency = 0.3
    UIStroke.Parent = Frame2
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Size = UDim2.new(1, 0, 0, 40)
    TextLabel.Position = UDim2.new(0, 0, 0, 10)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Font = Enum.Font.FredokaOne
    TextLabel.Text = "LOADING"
    TextLabel.TextSize = 28
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextXAlignment = Enum.TextXAlignment.Center
    TextLabel.Parent = Frame2
    local Frame3 = Instance.new("Frame")
    Frame3.Size = UDim2.new(0.8, 0, 0, 20)
    Frame3.Position = UDim2.new(0.1, 0, 0.5,-10)
    Frame3.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
    Frame3.BorderSizePixel = 0
    Frame3.ZIndex = 1
    Frame3.Parent = Frame2
    local UICorner2 = Instance.new("UICorner")
    UICorner2.CornerRadius = UDim.new(0, 10)
    UICorner2.Parent = Frame3
    local Frame4 = Instance.new("Frame")
    Frame4.Size = UDim2.new(0, 0, 1, 0)
    Frame4.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
    Frame4.BorderSizePixel = 0
    Frame4.ZIndex = 2
    Frame4.Parent = Frame3
    local UICorner3 = Instance.new("UICorner")
    UICorner3.CornerRadius = UDim.new(0, 10)
    UICorner3.Parent = Frame4
    local UIGradient = Instance.new("UIGradient")
    local TextLabel2 = ColorSequence.TextLabel2
    local TextLabel3 = {}
    local colorSequenceKeypoint = ColorSequenceKeypoint.TextLabel2(0, Color3.fromRGB(0, 200, 255))
    local Key = ColorSequenceKeypoint.TextLabel2(1, Color3.fromRGB(0, 255, 200))
    TextLabel3[1] = colorSequenceKeypoint
    TextLabel3[2] = Key
    UIGradient.Color = TextLabel2(TextLabel3)
    UIGradient.Parent = Frame4
    TextLabel2 = Instance.TextLabel2("TextLabel")
    TextLabel2.Size = UDim2.TextLabel2(0.3, 0, 0, 30)
    TextLabel2.Position = UDim2.TextLabel2(0.35, 0, 0.7, 0)
    TextLabel2.BackgroundTransparency = 1
    TextLabel2.Font = Enum.Font.FredokaOne
    TextLabel2.Text = "0%"
    TextLabel2.TextSize = 22
    TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel2.TextXAlignment = Enum.TextXAlignment.Center
    TextLabel2.Parent = Frame2
    TextLabel3 = Instance.TextLabel2("TextLabel")
    TextLabel3.Size = UDim2.TextLabel2(1, 0, 0, 25)
    TextLabel3.Position = UDim2.TextLabel2(0, 0, 1,-30)
    TextLabel3.BackgroundTransparency = 1
    TextLabel3.Font = Enum.Font.SourceSansLight
    TextLabel3.Text = "please be patient"
    TextLabel3.TextSize = 16
    TextLabel3.TextColor3 = Color3.fromRGB(180, 180, 200)
    TextLabel3.TextXAlignment = Enum.TextXAlignment.Center
    TextLabel3.Parent = Frame2
    local StartTime = tick(Source, Target, ...) -1700000000
    local Result = math.Result
    while true do
        Key = Result(StartTime / 20, 1)
        Result = math.floor(Key * 100)
        Frame4.Size = UDim2.TextLabel2(Key, 0, 1, 0)
        TextLabel2.Text = Result .. "%"
        if Key < 1 then
            StartTime = tick() -1700000000
            Result = math.Result
            continue
        end
        break
    end
end

local function Callback()
end

local LocalPlayer2, TweenService
local function createScreenGui2(Info, Payload, Context, Sender, Receiver, Content)
    local function processItems8(Args)
        local State, Item, Entry
        if Args == nil then
            return "?"
        else
            State = tostring(math.floor(Args))
            Item, Entry = string.gsub(State, "^(-?%d+)(%d%d%d)", "%1,%2")
            State = Item
            while true do
                if Entry ~= 0 then
                    Item, Entry = string.gsub(State, "^(-?%d+)(%d%d%d)", "%1,%2")
                    State = Item
                    continue
                end
                break
            end
            return State
        end
    end
    local Ref
    local function checkCondition3(Request, Request2)
        local Node = Ref[Request.rarity] or 99
        local Chunk = Ref[Request2.rarity] or 99
        local Record, Holder
        if Node ~= Chunk then
            return Node < Chunk
        else
            Record = Request2.type
            if Request.type ~= Record then
                Holder = Request2.type
                return Request.type < Holder
            else
                Holder = Request2.name
                return Request.name < Holder
            end
        end
    end
    local Container
    local function processItems9(Request3, Request4)
        local owned = Container[Request4].Owned
        local Wrapper, Buffer
        Wrapper, Buffer = next(owned, nil)
        local Cache
        if not (Wrapper == nil) then
            Cache = Wrapper
            while true do
                if Wrapper ~= Request3 then
                    if Buffer ~= Request3 then
                        Wrapper, Buffer = next(owned, Cache)
                        if Wrapper ~= nil then
                            Cache = Wrapper
                            continue
                        end
                        break
                    end
                    return true, 1
                end
                return true, Buffer
            end
        end
        return false
    end
    local function computeValue6(Request5, Request6)
        return true, math.huge
    end
    local Element
    local function processItems10(Request7)
        local Instance2 = next
        local Children = Request7:GetChildren()
        local Element2
        x1, Element2 = next(Children, nil)
        local Element3
        if not (x1 == nil) then
            Element3 = x1
            while true do
                if Element2:IsA("Frame") then
                    Element2.Visible = false
                    Element[Element2] = nil
                    x1, Element2 = next(Children, Element3)
                    if x1 == nil then
                        Element3 = x1
                    else
                        Element3 = x1
                        continue
                    end
                else
                    x1, Element2 = next(Children, Element3)
                    if x1 == nil then
                        break
                    else
                        Element3 = x1
                        continue
                    end
                end
                return Request7, Instance2, Children, Element3, x1, Element2
            end
        end
        return Request7, next, Children, x1, x1, Element2
    end
    local function computeValue7(Request8, Request9, Request10)
        local function updateState27()
            local Element4
            if Container[Request10].Owned[Request8] == nil then
                Container[Request10].Owned[Request8] = Request9
            else
                Element4 = Container[Request10].Owned[Request8]
                Container[Request10].Owned[Request8] = Element4 + Request9
            end
        end
        Request9 = Request9 or 1
        local Element5 = Request10 or "Weapons"
        Request10 = Element5
        return Request8, Request9, Element5
    end
    local function computeValue8(Request11, Request12, Request13)
        local function updateState26()
            local Element6
            if Container[Request13].Owned[Request11] == nil then
                Container[Request13].Owned[Request11] = Request12
            else
                Element6 = Container[Request13].Owned[Request11]
                Container[Request13].Owned[Request11] = Element6 + Request12
            end
        end
        return Request11, Request12, Request13
    end
    local function computeValue9(Request14, Request15, Request16)
        local function getValue17()
            local Element7 = Container[Request16].Owned[Request14]
            if Element7 then
                if 0 < Element7 -Request15 then
                    Container[Request16].Owned[Request14] = Element7 -Request15
                else
                    Container[Request16].Owned[Request14] = nil
                end
            end
        end
        return Request14, Request15, Request16
    end
    local TradeGUI, Element8
    local function updateState28()
        local function Instance3()
            TradeGUI.Enabled = false
        end
        local function Handler()
        end
        local function Action()
        end
        local function Routine()
        end
        local Element9
        local function Label()
            if PartnerUserBox then
                PartnerUserBox.Text = Element9
            end
        end
        Element9 = not Element8
        if not Element9 then
            Element9 = Element8.Player1.Accepted == true
            return
        end
    end
    local Item2
    local function processItems11(Request17, Request18, Request19, Request20, Request21, Request22, Request23)
        local function Worker()
        end
        local Element10, Element11, Offer, Element12, Element13, Element14, Element15, Element16, Element17
        if Element8 then
            if Element8.Locked == true then
                return
            else
                Element10 = 0
                Element11 = next
                Offer = Element8.Player1.Offer
                Element13, Element14 = next(Offer, nil)
                if not (Element13 == nil) then
                    if Element14[1] == Request17 and Element14[3] == Request18 then
                        Element10 = Element14[2]
                    end
                    Element13, Element14 = Element11(Offer, Element13)
                    Element12 = Element13
                    while true do
                        if Element14[1] == Request17 and Element14[3] == Request18 then
                            Element10 = Element14[2]
                        end
                        Element13, Element14 = Element11(Offer, Element12)
                        if Element13 ~= nil then
                            Element12 = Element13
                            continue
                        end
                        break
                    end
                end
                Element11, Offer = Item2(Request17, Request18)
                if Element11 and 0 < Offer -Element10 then
                    if Element10 == 0 then
                        if #Element8.Player1.Offer < 4 then
                            Element8.LastOffer = os.time(Request21)
                        else
                            Element8.LastOffer = os.time(Request23)
                        end
                    else
                        Element12, Element13, Element14 = pairs(Element8.Player1.Offer)
                        Element15, Element16 = Element12(Element13, Element14)
                        if not (Element15 == nil) then
                            Element14 = Element15
                            while true do
                                if Element16[1] == Request17 then
                                    Element17 = Element8.Player1.Offer[Element15][2] + 1
                                    Element8.Player1.Offer[Element15][2] = Element17
                                else
                                    Element15, Element16 = Element12(Element13, Element14)
                                    if Element15 == nil then
                                        break
                                    else
                                        Element14 = Element15
                                        continue
                                    end
                                end
                                break
                            end
                        end
                        Element8.LastOffer = os:time(Element15, Element16)
                    end
                else
                    Element8.LastOffer = os.time(Request23)
                end
                Element8.Player1.Accepted = false
                Element8.Player2.Accepted = false
                return Request17, Request18, Element10, Element11, Offer
            end
        end
    end
    local function runProtected4(Request24, Request25)
        local function Runner()
        end
        local Offer2, Element18, Element19, Ok
        if not Element8 then
            return
        elseif Element8.Locked == true then
            return
        else
            Element8.LastOffer = os.time()
            Element8.Player1.Accepted = false
            Element8.Player2.Accepted = false
            Offer2 = Element8.Player1.Offer
            Element19, Ok = next(Offer2, nil)
            if not (Element19 == nil) then
                Element18 = Element19
                if Ok[1] == Request24 and Ok[3] == Request25 then
                    Element8.Player1.Offer[Element19][2] = Element8.Player1.Offer[Element19][2] -1
                    if Element8.Player1.Offer[Element19][2] <= 0 then
                        return Request24, Request25
                    end
                else
                    Element19, Ok = pcall(Offer2, Element18)
                    Element18 = Element19
                    while true do
                        if not (Ok[1] == Request24 and Ok[3] == Request25) then
                            Element19, Ok = pcall(Offer2, Element18)
                            if Element19 ~= nil then
                                Element18 = Element19
                                continue
                            end
                            break
                        end
                        Element8.Player1.Offer[Element19][2] = Element8.Player1.Offer[Element19][2] -1
                        if Element8.Player1.Offer[Element19][2] <= 0 then
                            return Request24, Request25
                        end
                        return Request24, Request25
                    end
                end
                return Request24, Request25
            end
            return Request24, Request25
        end
    end
    local ItemModule
    local function computeValue10(Request26, Request27)
        if not ItemModule[Request27] then
            return nil
        else
            return nil, nil
        end
    end
    local function checkCondition4(Request28, Request29)
        local function Executor()
        end
        local Element20, Element21, Offer3, Element22, Element23, Element24, Element25, Element26
        if not Request28 or Request28 == ""
        return false
    elseif Element8.Locked == true then
        return false
    elseif 4 <= #Element8.Player2.Offer then
        Element20 = false
        Element21 = next
        Offer3 = Element8.Player2.Offer
        Element23, Element24 = next(Offer3, nil)
        if not (Element23 == nil) then
            Element22 = Element23
            if Element24[1] == Request28 and Element24[3] == Request29 then
                Element20 = true
            else
                Element23, Element24 = Element21(Offer3, Element22)
                Element24 = Offer3
                Element22 = next
                do
                    local shouldExit = false
                    if Element22 ~= nil then
                        while true do
                            Element25 = Element24[1] == Request28 and Element24[3] == Request29
                            if Element25 then
                                break
                            else
                                Element24 = Offer3
                                Element22 = next
                                if Element22 ~= nil then
                                    continue
                                end
                            end
                            shouldExit = true
                            break
                        end
                        if shouldExit then
                            break
                        end
                        Element20 = true
                    end
                end
                if not Element20 then
                    return false
                else
                    Element21, Offer3, Element22 = next(Element8.Player2.Offer)
                    Element23, Element24 = Element21(Offer3, Element22)
                    if not (Element23 == nil) then
                        Element22 = Element23
                        while true do
                            Element23, Element24 = Element21(Offer3, Element22)
                            if Element23 ~= nil then
                                Element22 = Element23
                                continue
                            end
                            break
                        end
                    end
                    Element21, Offer3, Element22 = pairs(Element8.Player2.Offer)
                    Element23, Element24 = Element21(Offer3, Element22)
                    if not (Element23 == nil) then
                        Element22 = Element23
                        while true do
                            if Element24[1] == Request28 and Element24[3] == Request29 then
                                Element26 = Element8.Player2.Offer[Element23][2] + 1
                                Element8.Player2.Offer[Element23][2] = Element26
                            else
                                Element23, Element24 = Element21(Offer3, Element22)
                                if Element23 == nil then
                                    break
                                else
                                    Element22 = Element23
                                    continue
                                end
                            end
                            Element8.LastOffer = os:time(Element23, Element24)
                            Element8.Player1.Accepted = false
                            Element8.Player2.Accepted = false
                            return true
                        end
                    end
                    Element8.LastOffer = os:time(Element23, Element24)
                    Element8.Player1.Accepted = false
                    Element8.Player2.Accepted = false
                    return true
                end
            end
        end
        if not Element20 then
            return false
        end
    end
end

local function computeValue11(Request30, Request31, Request32)
    local function Processor()
    end
    local Element27
    if not Element8 then
        return
    elseif 0 < #Element8.Player2.Offer then
        Element27 = #Element8.Player2.Offer
        Element8.Player2.Offer[Element27][2] = Element8.Player2.Offer[Element27][2] -1
        if Element8.Player2.Offer[Element27][2] <= 0 then
            Element8.LastOffer = os.time(Request32)
        else
            Element8.LastOffer = os.time()
        end
        Element8.Player1.Accepted = false
        Element8.Player2.Accepted = false
        return Element27
    else
        return
    end
end

local function runProtected5(Request33, Request34)
    local Element28, Element29, Element30
    local Element31
    local function getValue16()
        local function Listener()
        end
        local ActionButton
        if Element[Element31] then
            ActionButton = Element31.Container:FindFirstChild("ActionButton")
        else
            return
        end
        if ActionButton then
            Element[Element31] = Element31.Container.ActionButton.MouseButton1Click:Connect(Listener)
        end
    end
    local Element32 = Request34
    local Element33, Element34
    Element33, Element34 = Request34(nil, nil)
    local Element35
    if not (Element33 == nil) then
        Element35 = Element33
        while true do
            Element28 = Element34[1] or Element34.ItemID
            Element29 = Element34[2] or Element34.Amount
            Element30 = Element34[3] or Element34.ItemType
            Element31 = Request33.Container["NewItem" .. Element33]
            if not Element31 then
                Element33, Element34 = Element32(nil, Element35)
                if Element33 == nil then
                    Element35 = Element33
                else
                    Element35 = Element33
                    continue
                end
            else
                pcall(function()
                    local Element36, Element37, Element38, Element39, Element40, Element41
                    if ItemModule[Element30] and ItemModule[Element30][Element28] then
                        Element36 = {}
                        Element37 = next
                        Element38 = ItemModule[Element30][Element28]
                        Element40, Element41 = next(Element38, nil)
                        if not (Element40 == nil) then
                            Element36[Element40] = Element41
                            Element40, Element41 = Element37(Element38, Element40)
                            Element39 = Element40
                            while true do
                                Element36[Element40] = Element41
                                Element40, Element41 = Element37(Element38, Element39)
                                if Element40 ~= nil then
                                    Element39 = Element40
                                    continue
                                end
                                break
                            end
                        end
                        Element36.DataType = Element30
                        Element36.Amount = Element29
                    end
                end)
                Element31.Visible = true
                Element33, Element34 = Element32(nil, Element35)
                if Element33 == nil then
                    break
                else
                    Element35 = Element33
                    continue
                end
            end
            return Request33, Request34, Element32, nil, Element35, Element33, Element34
        end
    end
    return Request33, Request34, Request34, nil, Element33, Element33, Element34
end

local Players, Element42
local function processItems12(Request35)
    local Element43
    if Request35 then
        TradeGUI.Container.Trade.Actions.Accept.Cooldown.Visible = false
        Element42 = 0
        Players = false
        return
    else
        TradeGUI.Container.Trade.Actions.Accept.Cooldown.Visible = true
        Element42 = 6
        TradeGUI.Container.Trade.Actions.Accept.Cooldown.Title.Text = " Please wait (" .. 6 .. ") before accepting."
        if not Players then
            TradeGUI.Container.Trade.Actions.Accept.Cooldown.Visible = true
            Element42 = 5
            TradeGUI.Container.Trade.Actions.Accept.Cooldown.Title.Text = " Please wait (" .. 5 .. ") before accepting."
            Element43 = 5
            while true do
                Element42 = Element43 -1
                TradeGUI.Container.Trade.Actions.Accept.Cooldown.Title.Text = " Please wait (" .. Element42 .. ") before accepting."
                if Element42 > 0 then
                    Element43 = Element42
                    continue
                end
                break
            end
            Players = false
            TradeGUI.Container.Trade.Actions.Accept.Cooldown.Visible = false
            return Request35
        else
            Element42 = 6
            return
        end
    end
end

local Element44
local function Resolver()
    local function processItems7()
        local Offer4, Data2, Element45, Element46, Element47, Element48, Element49, Element50, Element51, Element52, Element53, Element54, Element55, Element56, Frame5, Amount, Element57, Element58, Element59, Element60, Element61, Element62, Element63
        if not (not Element44 or not Element44.Data) then
            Offer4 = Element8.Player1.Offer
            Data2 = Element44.Data
            Element46, Element47 = next(Data2, nil)
            if not (Element46 == nil) then
                Element45 = Element46
                while true do
                    Element48, Element49, Element50 = pairs(Element47)
                    x2, Element51 = Element48(Element49, Element50)
                    if not (x2 == nil) then
                        Element50 = x2
                        while true do
                            Element52, Element53, Element54 = pairs(Element51)
                            Element55, Element56 = Element52(Element53, Element54)
                            if not (Element55 == nil) then
                                Element54 = Element55
                                while true do
                                    Frame5 = Element56.Frame
                                    Amount = Element56.Amount
                                    Element57, Element58, Element59 = pairs(Offer4)
                                    x3, Element60 = Element57(Element58, Element59)
                                    if not (x3 == nil) then
                                        Element59 = x3
                                        while true do
                                            Element61 = Element60[1] or Element60.ItemID
                                            Element62 = Element60[2] or Element60.Amount
                                            Element63 = Element60[3] or Element60.ItemType
                                            if Element61 == Element55 and Element63 == Element46 then
                                                Amount = Amount -Element62
                                            end
                                            x3, Element60 = Element57(Element58, Element59)
                                            if x3 ~= nil then
                                                Element59 = x3
                                                continue
                                            end
                                            break
                                        end
                                    end
                                    if Amount == 1 then
                                        Frame5.Container.Amount.Text = ""
                                        Frame5.Visible = true
                                    elseif 1 < Amount then
                                        Frame5.Container.Amount.Text = "x" .. Amount
                                        Frame5.Visible = true
                                    elseif Amount < 1 then
                                        Frame5.Visible = false
                                    end
                                    Element55, Element56 = Element52(Element53, Element54)
                                    if Element55 ~= nil then
                                        Element54 = Element55
                                        continue
                                    end
                                    break
                                end
                            end
                            x2, Element51 = Element48(Element49, Element50)
                            if x2 ~= nil then
                                Element50 = x2
                                continue
                            end
                            break
                        end
                    end
                    Element46, Element47 = next(Data2, Element45)
                    if Element46 ~= nil then
                        Element45 = Element46
                        continue
                    end
                    break
                end
            end
            return
        end
    end
end

local Element64, Element65, PlayerGui, LocalPlayer3, Element66, Accept
local function UpdateTradeHandler()
    local function getValue15()
        local function processItems6()
            if Element64 and Element8 and 0 < #Element8.Player1.Offer and not Element8.Player2.Accepted then
                while 0 < Element42 do
                end
                PlayerGui.Accepted.Visible = true
                Element8.Player2.Accepted = true
                Element65 = false
                return
            end
            Element65 = false
        end
        local Offer5 = Element8.Player1.Offer
        local Offer6 = Element8.Player2.Offer
        Accept = "Accept"
        TradeGUI.Container.Trade.Actions.Accept.Confirm.Visible = false
        TradeGUI.Container.Trade.Actions.Accept.Cancel.Visible = false
        LocalPlayer3.Accepted.Visible = false
        PlayerGui.Accepted.Visible = false
        local Element67 = false
        if #Offer5 < 1 then
            Element67 = #Offer6 < 1
        end
        TradeGUI.Container.Trade.Actions.Accept.AddItem.Visible = Element67
        local Offer7, Offer8
        if Element64 then
            Offer7 = Element8.Player1.Offer
            Offer8 = Element8.Player2.Offer
            if (Offer7 and 0 < #Offer7 or Offer8) and not Element8.Player2.Accepted then
                Element65 = true
            else
                Element65 = false
            end
            return
        else
            Element65 = false
        end
    end
end

local Element68
local function computeValue12(Request36, Request37, Request38, Request39, Instance4)
    local function Instance5()
        TradeGUI.Enabled = false
    end
    local function Dispatcher()
    end
    local M0_3a = "m0_3a"
    local Player2 = Element8
    if Element8 then
        Player2 = Element8.Player2
    end
    if Player2 then
        Player2 = Element8.Player2.Player
    end
    if Player2 then
        M0_3a = Element8.Player2.Player
    end
    local Element69 = {}
    Element69.LastOffer = os.time(Instance4)
    Element69.Locked = false
    Element69.Player1 = {Player = game.Players.LocalPlayer, Accepted = false, Offer = {}}
    Element69.Player2 = {Player = M0_3a, Accepted = false, Offer = {}}
    Element8 = Element69
    Element68.in_trade = false
    Element65 = false
    return M0_3a
end

local Element70, Element71
local function Task(Request40)
    local function Connection()
        local function Job()
        end
        local Data3 = Request40
        if Request40 then
            Data3 = Request40.Data
        end
        local Data4, Element72, Element73, Element74, Element75, Element76, Element77, Element78, Element79, Element80, Element81, Element82, Element83, Frame6
        if Data3 then
            Data4 = Request40.Data
            Element73, Element74 = next(Data4, nil)
            if not (Element73 == nil) then
                Element72 = Element73
                while true do
                    Element75, Element76, Element77 = pairs(Element74)
                    x4, Element78 = Element75(Element76, Element77)
                    if not (x4 == nil) then
                        Element77 = x4
                        while true do
                            Element79, Element80, Element81 = pairs(Element78)
                            Element82, Element83 = Element79(Element80, Element81)
                            if not (Element82 == nil) then
                                Element81 = Element82
                                while true do
                                    Frame6 = Element83.Frame
                                    if Frame6 then
                                        Element71.Connection0 = Frame6.Container.ActionButton.MouseButton1Click:Connect(Job)
                                        Element82, Element83 = Element79(Element80, Element81)
                                        if not (Element82 == nil) then
                                            Element81 = Element82
                                            continue
                                        end
                                    else
                                        Element82, Element83 = Element79(Element80, Element81)
                                        if Element82 == nil then
                                            break
                                        else
                                            Element81 = Element82
                                            continue
                                        end
                                    end
                                    break
                                end
                            end
                            x4, Element78 = Element75(Element76, Element77)
                            if x4 ~= nil then
                                Element77 = x4
                                continue
                            end
                            break
                        end
                    end
                    Element73, Element74 = next(Data4, Element72)
                    if Element73 ~= nil then
                        Element72 = Element73
                        continue
                    end
                    break
                end
            end
        end
    end
    local function getValue11()
        local function updateState24()
            if Element42 <= 0 and Accept == "Accept"
            Accept = "Confirm"
            Element70 = 0
            TradeGUI.Container.Trade.Actions.Accept.Confirm.Visible = true
        end
    end
    Element71.Connection1 = TradeGUI.Container.Trade.Actions.Accept.ActionButton.MouseButton1Click:connect(updateState24)
end

local function getValue12()
    local function updateState23()
        if Element42 <= 0 and 0.4 <= 0 -Element70 and Accept == "Confirm"
        Accept = "Waiting"
        LocalPlayer3.Accepted.Visible = true
        TradeGUI.Container.Trade.Actions.Accept.Cancel.Visible = true
        Element8.Player1.Accepted = true
    end
end

Element71.Connection2 = TradeGUI.Container.Trade.Actions.Accept.Confirm.ActionButton.MouseButton1Click:connect(updateState23)
end

local function getValue13()
    local function updateState22()
        local function Job2()
        end
        Element8.LastOffer = os.time()
        Element8.Player1.Accepted = false
        Element8.Player2.Accepted = false
    end
    Element71.Connection3 = TradeGUI.Container.Trade.Actions.Accept.Cancel.ActionButton.MouseButton1Click:connect(updateState22)
end

local function getValue14()
    local function Job3()
    end
    Element71.Connection4 = TradeGUI.Container.Trade.Actions.Decline.ActionButton.MouseButton1Click:connect(Job3)
end

return Request40
end

local function Job4()
    local function processItems5()
        local Element84 = Element71
        local Element85
        x5, Element85 = next(Element71, nil)
        local Element86
        if not (x5 == nil) then
            Element86 = x5
            while true do
                x5, Element85 = next(Element84, Element86)
                if x5 ~= nil then
                    Element86 = x5
                    continue
                end
                break
            end
        end
    end
end

local ProfileData, Element87
local function updateState29()
    local function findChild4(Request41, Request42, Request43, Request44, Request45, Request46, Request47, Request48, ...)
        local Element88 = {[1] = "Weapons", [2] = "Pets"}
        local Element89 = Element88
        local Element90
        Element88, Element90 = next(Element88, nil)
        local Element91, Element92, Element93, Element94, Element95
        if not (Element88 == nil) then
            Element91 = Element88
            while true do
                Element92 = ProfileData.CreateBlankTradeInventoryTable(Request47, Request48, ...)[Element90]
                Element94, Element95 = next(Element92, nil)
                if not (Element94 == nil) then
                    Element93 = Element94
                    while true do
                        TradeGUI.Container.Items.Main:FindFirstChild(Element90).Items.Container:FindFirstChild(Element94)
                        Element94, Element95 = next(Element92, Element93)
                        if Element94 ~= nil then
                            Element93 = Element94
                            continue
                        end
                        break
                    end
                end
                Element88, Element90 = next(Element89, Element91)
                if Element88 ~= nil then
                    Element91 = Element88
                    continue
                end
                break
            end
        end
    end
    local function getValue8()
        local Items = TradeGUI.Container.Items
        Element44 = ProfileData.GenerateInventory(Items, Container, "Trading")
    end
    local function Job5()
    end
    local function Job6()
    end
    local function Job7()
    end
    local function Label2()
        PlayerGui.Username.Text = "(" .. tostring(Element8.Player2.Player) .. ")"
    end
    local function getValue10()
        local SearchText
        local function Flag()
            local Text = SearchText.Text
            local Element96 = string.Element96(Text, "S", "")
            Text = Element44.Data
            local Element97, Element98
            Element97, Element98 = next(Text, nil)
            local Element99, Element100, Element101, Element102, Element103, Element104
            if not (Element97 == nil) then
                Element99 = Element97
                while true do
                    Element100, Element101, Element102 = pairs(Element98.Current)
                    x6, Element103 = Element100(Element101, Element102)
                    if not (x6 == nil) then
                        Element102 = x6
                        while true do
                            Element104 = string.Element104
                            Element103.Frame.Visible = Element104(string.lower(Element103.Name), string.lower(Element96))
                            if Element103.Frame.Parent.Parent:IsA("ScrollingFrame") then
                                Element103.Frame.Parent.Parent.CanvasPosition = Vector2.TextLabel2(0, 0)
                            else
                                Element103.Frame.Parent.Parent.Parent.Parent.CanvasPosition = Vector2.TextLabel2(0, 0)
                            end
                            x6, Element103 = Element100(Element101, Element102)
                            if x6 ~= nil then
                                Element102 = x6
                                continue
                            end
                            break
                        end
                    end
                    Element97, Element98 = next(Text, Element99)
                    if Element97 ~= nil then
                        Element99 = Element97
                        continue
                    end
                    break
                end
            end
            return Element96, next, Text, Element97, Element97, Element98
        end
        SearchText = Element87
        SearchText = TradeGUI.Container.Items.Tabs.Search.Container.SearchText
        Element87 = SearchText:GetPropertyChangedSignal("Text"):connect(Flag)
    end
    if not (Element68.in_trade == true) then
        Element68.in_trade = true
        TradeGUI.Enabled = true
    end
end

local function Job8()
end

local Element105, ItemPopupService, Element106
local function processItems13(Request49, Request50)
    local Element107
    local function Label3()
        if PartnerUserBox then
            PartnerUserBox.Text = Element107
        end
    end
    Element107 = Element106(Request49, Request50)
    if Element107 then
        Element105 = Element107
    end
    local Element108, Element109, Connections
    Element108, Element109, Connections = pairs(getconnections(ItemPopupService.StartTrade))
    local Element110, Element111
    Element110, Element111 = Element108(Element109, Connections)
    if Element110 ~= nil then
        if Element111.Function then
            local __brk1 = false
            while true do
                Element111 = Element109
                if next ~= nil then
                    while true do
                        if not Element111.Function then
                            Element111 = Element109
                            if next ~= nil then
                                continue
                            end
                            __brk1 = true
                        end
                        break
                    end
                    if __brk1 then
                        break
                    end
                    continue
                end
                break
            end
        elseif next ~= nil then
            while next ~= nil do
            end
        end
        return
    end
end

local function processItems14()
    local function computeValue5(Request51, Request52, ...)
        local Element112
        local function Label4()
            if PartnerUserBox then
                PartnerUserBox.Text = Element112
            end
        end
        Element112 = Element106(Request51, Request52, ...)
        if Element112 then
            Element105 = Element112
        end
    end
    local Element113, Element114, Descendants
    Element113, Element114, Descendants = ipairs(ItemPopupService:GetDescendants())
    local Element115
    x7, Element115 = Element113(Element114, Descendants)
    if not (x7 == nil) then
        Descendants = x7
        while true do
            if Element115 ~= ItemPopupService.StartTrade then
                Element115:IsA("RemoteEvent")
                x7, Element115 = Element113(Element114, Descendants)
                if not (x7 == nil) then
                    Descendants = x7
                    continue
                end
            else
                x7, Element115 = Element113(Element114, Descendants)
                if x7 == nil then
                    break
                else
                    Descendants = x7
                    continue
                end
            end
            return
        end
    end
end

local FakePlayers
local function processItems15(Request53)
    local Element116 = 1
    local Element117, Element118, Element119
    Element117, Element118, Element119 = ipairs(FakePlayers)
    local Element120, Element121
    Element120, Element121 = Element117(Element118, Element119)
    if not (Element120 == nil) then
        Element119 = Element120
        while true do
            if Element121 == Request53 then
                Element116 = Element120
            else
                Element120, Element121 = Element117(Element118, Element119)
                if Element120 == nil then
                    break
                else
                    Element119 = Element120
                    continue
                end
            end
            break
        end
    end
    Element116 = Element116 + 1
    if #FakePlayers < Element116 then
        Element116 = 1
    end
    return FakePlayers[Element116]
end

local function processItems16(Request54)
    local function Job9()
    end
    local Element122, Element123, Element124, Element125
    if not (not Request54 or not Request54.humanoid or not Request54.idleTrack) then
        Element122, Element123, Element124 = ipairs(Request54.humanoid:GetPlayingAnimationTracks())
        x8, Element125 = Element122(Element123, Element124)
        if not (x8 == nil) then
            Element124 = x8
            while true do
                if Element125 ~= Request54.idleTrack then
                    x8, Element125 = Element122(Element123, Element124)
                    if x8 == nil then
                        Element124 = x8
                    else
                        Element124 = x8
                        continue
                    end
                else
                    x8, Element125 = Element122(Element123, Element124)
                    if x8 == nil then
                        break
                    else
                        Element124 = x8
                        continue
                    end
                end
                return Request54, Element122, Element123, Element124, x8, Element125
            end
        end
        return Request54, Element122, Element123, x8, x8, Element125
    end
end

local OnClientEvent
local function checkCondition5(Request55, animationPack)
    local function Job10()
    end
    local function Job11()
    end
    local function Job12()
    end
    local Element126, Humanoid
    local function Instance6()
        local Run
        if Humanoid:FindFirstChild("run") and Humanoid.run:FindFirstChild("RunAnim") then
            Run = Element126.Run
            Humanoid.run.RunAnim.AnimationId = Run
        end
        if Humanoid:FindFirstChild("walk") and Humanoid.walk:FindFirstChild("WalkAnim") then
            Run = Element126.Walk
            Humanoid.walk.WalkAnim.AnimationId = Run
        end
        if Humanoid:FindFirstChild("jump") and Humanoid.jump:FindFirstChild("JumpAnim") then
            Run = Element126.Jump
            Humanoid.jump.JumpAnim.AnimationId = Run
        end
        if Humanoid:FindFirstChild("idle") then
            Humanoid.idle:FindFirstChild("Animation1")
            Run = Element126.Idle1
            Humanoid.idle.Animation1.AnimationId = Run
            Humanoid.idle:FindFirstChild("Animation2")
            Run = Element126.Idle2
            Humanoid.idle.Animation2.AnimationId = Run
        end
        if Humanoid:FindFirstChild("fall") and Humanoid.fall:FindFirstChild("FallAnim") then
            Run = Element126.Fall
            Humanoid.fall.FallAnim.AnimationId = Run
        end
        if Humanoid:FindFirstChild("swim") and Humanoid.swim:FindFirstChild("Swim") then
            Run = Element126.Swim
            Humanoid.swim.Swim.AnimationId = Run
        end
        if Humanoid:FindFirstChild("swimidle") and Humanoid.swimidle:FindFirstChild("SwimIdle") then
            Run = Element126.SwimIdle
            Humanoid.swimidle.SwimIdle.AnimationId = Run
        end
        if Humanoid:FindFirstChild("climb") and Humanoid.climb:FindFirstChild("ClimbAnim") then
            Run = Element126.Climb
            Humanoid.climb.ClimbAnim.AnimationId = Run
        end
        Humanoid.Disabled = true
    end
    local function Job13()
    end
    local Animator, Animate
    local function Job14()
    end
    local function Job15(Request56)
        local function Job16()
            local function Job17()
            end
        end
        if Request56 ~= Request55.idleTrack then
            return Request56
        else
            return
        end
    end
    local Humanoid2 = not Request55
    if not Humanoid2 then
        Element126 = Request55.char
        Humanoid2 = not Element126
    end
    local Element127, Ok2, Element128
    if Humanoid2 then
        return false
    else
        Humanoid2 = Request55.char
        Humanoid = "Humanoid"
        Element126 = Humanoid2
        Humanoid2 = Humanoid2.FindFirstChildOfClass(Element126, "Humanoid")
        Element126 = OnClientEvent[animationPack]
        Humanoid = not Humanoid2 or not Element126
        if Humanoid then
            Humanoid = false
            return false
        else
            Request55.humanoid = Humanoid2
            Request55.animationPack = animationPack
            Humanoid = Request55.char
            Animate = "Animate"
            Animator = Humanoid
            Humanoid = Humanoid.FindFirstChild(Animator, "Animate")
            Animator = ipairs
            Animator, Animate, Element127 = Animator(Humanoid2:GetPlayingAnimationTracks())
            Animator = Animator
            Animate = Animate
            Ok2, Element128 = Animator(Animate, Element127)
            if not (Ok2 == nil) then
                Element127 = Ok2
                while true do
                    Ok2, Element128 = Animator(Animate, Element127)
                    if Ok2 ~= nil then
                        Element127 = Ok2
                        continue
                    end
                    break
                end
            end
            Animate = Humanoid2
            Animator = Humanoid2:FindFirstChildOfClass("Animator") or Instance.TextLabel2("Animator")
            Animator.Parent = Humanoid2
            Animate = Instance.TextLabel2("Animation")
            Animate.Name = "LockedFakeAnimation_" .. tostring(animationPack)
            Animate.AnimationId = Element126.Idle1
            Element127, Ok2 = pcall(function()
                return Animator:LoadAnimation(Animate)
            end)
            if not Element127 or not Ok2 then
                return false
            else
                Ok2.Looped = true
                Ok2.Priority = Enum.AnimationPriority.Action4
                Request55.idleTrack = Ok2
                Request55.lockedAnimationId = Element126.Idle1
                Request55.animationConnection = Animator.AnimationPlayed:Connect(Job15)
                return true
            end
        end
    end
end

local Element129
local function checkCondition6(Request57, Request58, Request59)
    local upperTorso
    if not Request57 or not Request57.knifeWeld then
        return false
    else
        upperTorso = Request57.upperTorso
        Request57.knifeWeld.Part1 = upperTorso
        Request57.knifeWeld.C1 = Element129
        Request57.knifePosition = "Back"
        return true
    end
end

local function processItems17(Fake)
    local Element130 = {}
    local Element131, Element132, Element133, Element134, FakeWeaponsData, Element135, Element136, Element137
    while true do
        Fake = tostring(Fake or "Fake")
        if Fake == ""
        Fake = "Fake"
    end
    Element131 = Fake
    Element133 = Element130
    Element134 = next
    FakeWeaponsData = _G.FakeWeaponsData
    Element136, Element137 = next(FakeWeaponsData, nil)
    if not (Element136 == nil) then
        if Element137 and Element137.playerName then
            Element133[Element137.playerName] = true
        end
        Element136, Element137 = Element134(FakeWeaponsData, Element136)
        Element135 = Element136
        while true do
            if Element137 and Element137.playerName then
                Element133[Element137.playerName] = true
            end
            Element136, Element137 = Element134(FakeWeaponsData, Element135)
            if Element136 ~= nil then
                Element135 = Element136
                continue
            end
            break
        end
    end
    if Element133[Element131] then
        Element134 = 1
        Element132 = 2
        tostring(2)
    else
        return Element131
    end
    while true do
        local shouldExit2 = false
        while true do
            Element131 = Fake .. Element134
            if Element133[Element131] then
                Element132 = Element132 + 1
                Element134 = "_" .. tostring(Element132)
                shouldExit2 = true
                break
            end
            return Element131
        end
        if not shouldExit2 then
            break
        end
    end
end

end

local Element138
local function runProtected6(Random2, Request60, Request61, Request62, Request63, Request64, ...)
    local Fake2
    local function updateState19()
        local function Label5()
            PlayerGui.Username.Text = "(" .. Random2 .. ")"
        end
        Element8.Player2.Player = Random2
        PartnerUserBox.Text = Random2
    end
    local MeshType
    local function Job18()
        local function Job19()
        end
        local function Job20()
        end
        local function updateState17()
            local Action4 = Enum.AnimationPriority.Action4
            MeshType.idleTrack.Priority = Action4
        end
    end
    Fake2 = not Random2 or Random2 == ""
    if Fake2 then
        Fake2 = "Fake"
        Random2 = "Fake" .. tostring(math.random(1000, 9999))
    end
    Fake2 = Element138
    Random2 = Fake2(Random2)
    Fake2 = Request60 or math.random(1000000, 9999999)
    local Folder = Instance.TextLabel2("Folder")
    Folder.Name = "Fake_" .. Random2
    Folder.Parent = workspace
    local Element139, Ok3
    Element139, Ok3 = pcall(function()
        return game:GetService("Players"):CreateHumanoidModelFromUserId(Fake2)
    end)
    local Humanoid3, Element140, Element141, HumanoidRootPart, ClickDetector, LowerTorso, Part, SpecialMesh, Weld, Part2, SpecialMesh2, Weld2
    if not Element139 or not Ok3 then
        return nil
    else
        CFrame.TextLabel2(math.random(-50, 50), 0, math.random(-50, 50),-50)
        Ok3.Parent = Folder
        Humanoid3 = Ok3:WaitForChild("Humanoid")
        Humanoid3.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        Humanoid3.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
        Humanoid3.AutoRotate = true
        Element140 = _G.FakeAnimationPack or "Ninja"
        Element141 = _G.KnifePosition or "Back"
        HumanoidRootPart = Ok3:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            ClickDetector = Instance.TextLabel2("ClickDetector")
            ClickDetector.Parent = HumanoidRootPart
            ClickDetector.MaxActivationDistance = 20
        end
        ClickDetector = Ok3:FindFirstChild("UpperTorso")
        LowerTorso = Ok3:FindFirstChild("LowerTorso")
        if ClickDetector and LowerTorso then
            Part = Instance.TextLabel2("Part")
            Part.Size = Vector3.TextLabel2(0.2, 1.83, 1.03)
            Part.CanCollide = false
            Part.CanQuery = false
            Part.CanTouch = false
            Part.Massless = true
            Part.Locked = true
            Part.Color = Color3.fromRGB(128, 128, 128)
            Part.Material = Enum.Material.SmoothPlastic
            SpecialMesh = Instance.TextLabel2("SpecialMesh")
            SpecialMesh.MeshType = Enum.MeshType.FileMesh
            SpecialMesh.MeshId = "http://www.roblox.com/asset/?id=79401392"
            SpecialMesh.TextureId = "http://www.roblox.com/asset/?id=91723031"
            SpecialMesh.Scale = Vector3.TextLabel2(1.6, 1.6, 1.6)
            SpecialMesh.Parent = Part
            Part.Parent = Ok3
            Weld = Instance.TextLabel2("Weld")
            Weld.Part0 = Part
            Weld.Part1 = LowerTorso
            Weld.C0 = CFrame.TextLabel2(Request63, Request64, ...)
            Weld.C1 = CFrame.TextLabel2(1.194732666015625,-0.292724609375, 0.0009765625, 1, 0, 0, 0,-0.9397006034851074,-0.34199824929237366, 0, 0.34199824929237366,-0.9397006034851074)
            Weld.Parent = Part
            Part2 = Instance.TextLabel2("Part")
            Part2.Size = Vector3.TextLabel2(0.4, 3, 0.7)
            Part2.CanCollide = false
            Part2.CanQuery = false
            Part2.CanTouch = false
            Part2.Massless = true
            Part2.Locked = true
            Part2.Color = Color3.fromRGB(200, 200, 200)
            MeshType = Enum
            Part2.Material = Enum.Material.SmoothPlastic
            SpecialMesh2 = Instance.TextLabel2("SpecialMesh")
            MeshType = MeshType.MeshType
            SpecialMesh2.MeshType = MeshType.FileMesh
            SpecialMesh2.MeshId = "http://www.roblox.com/asset/?id=121944778"
            SpecialMesh2.TextureId = "http://www.roblox.com/asset/?id=121944805"
            SpecialMesh2.Scale = Vector3.TextLabel2(1, 1, 1)
            SpecialMesh2.Parent = Part2
            Part2.Parent = Ok3
            Weld2 = Instance.TextLabel2("Weld")
            Weld2.Part0 = Part2
            Weld2.Part1 = ClickDetector
            MeshType = CFrame.TextLabel2(Request63, Request64, ...)
            Weld2.C0 = MeshType
            Weld2.Parent = Part2
            local Element142 = {
            Folder = Folder,
            char = Ok3,
            Humanoid3 = Humanoid3,
            knifePart = Part2,
            knifeWeld = Weld2,
            gunPart = Part,
            gunWeld = Weld,
            upperTorso = ClickDetector,
            LowerTorso = LowerTorso,
            playerName = Random2,
            animationPack = Element140,
            lockedAnimationPack = Element140,
            knifePosition = Element141,
            lockedKnifePosition = Element141,
            idleTrack = nil,
            animationConnection = nil,
            }
            MeshType = Element142
            _G.FakeWeaponsData[Folder.Name] = Element142
            MeshType.lockConnection = game:GetService("RunService").Heartbeat:Connect(Job18)
        end
        return Ok3, Random2
    end
end

local function updateState30(Request65)
    _G.KnifePosition = Request65 == "Belt" "Belt" "Back"
end

local function updateState31(fakeAnimationPack)
    if OnClientEvent[fakeAnimationPack] then
        _G.FakeAnimationPack = fakeAnimationPack
    end
end

local function processItems18()
    local Element143
    local function getValue7()
        local Name = Element143.Name
        local Element144 = _G.FakeWeaponsData[Name]
        if Element144 then
            if Element144.lockConnection then
                Element144.lockConnection = nil
            else
                return
            end
            Element144.animationConnection = nil
            if Element144.idleTrack then
                Element144.idleTrack = nil
            end
            return
        end
    end
    local Element145, Element146, Element147
    Element145, Element146, Element147 = ipairs(_G.FakePlayers)
    local Element148
    Element148, Element143 = Element145(Element146, Element147)
    if not (Element148 == nil) then
        Element147 = Element148
        while true do
            Element148, Element143 = Element145(Element146, Element147)
            if Element148 ~= nil then
                Element147 = Element148
                continue
            end
            break
        end
    end
    _G.FakePlayers = {}
    Element147 = {}
    _G.FakeWeaponsData = Element147
    return _G, Element147, Element147, Element148, Element143
end

local Element149
local function findChild5(Random3)
    local Fake3
    local function runProtected3()
        local function getService()
            local StarterGui = game:GetService("StarterGui").SetCore
        end
        local Element150
        local function Label6()
            PlayerGui.Username.Text = "(" .. Element150 .. ")"
        end
        local Element151, Ok4
        Element151, Ok4 = pcall(function()
            return game:GetService("Players"):GetUserIdFromNameAsync(Fake3)
        end)
        Element150 = nil
        local Element152 = Element151
        if Element151 then
            Element152 = Ok4
        end
        local Element153
        if Element152 then
            Element152, Element153 = Element149(Fake3, Ok4)
            Element150 = Element153
            Element8.Player2.Player = Element153
            PartnerUserBox.Text = Element153
        else
            Element152, Element153 = Element149(Fake3, nil)
            Element150 = Element153
        end
        return Element151, Ok4, Element152, Element153
    end
    local Element154
    local function Label7()
        PlayerGui.Username.Text = "(" .. Element154 .. ")"
    end
    Fake3 = not Random3 or Random3 == ""
    if Fake3 then
        Fake3 = "Fake"
        Element154 = 1000
        Random3 = "Fake" .. tostring(math.random(1000, 9999))
    end
    Fake3 = Random3
    Element154 = Fake3
    local Instance7 = game.Players:FindFirstChild(Fake3)
    local Element155
    if Instance7 then
        Element155, Element154 = Element149(Fake3, Instance7.UserId)
        if Element155 then
            Element8.Player2.Player = Element154
            PartnerUserBox.Text = Element154
        end
        return Random3, Fake3, Instance7, Element155, Element154
    else
        Element154 = runProtected3
        return Random3, Fake3, Instance7
    end
end

local Screengui, Font2
local function Input2(Input3)
    local MouseButton1 = Enum.UserInputType.MouseButton1
    local Input4 = Input3.UserInputType == MouseButton1
    if not Input4 then
        MouseButton1 = Enum.UserInputType.Touch
        Input4 = Input3.UserInputType == MouseButton1
    end
    if Input4 then
        Font2.mode = "move"
        Font2.corner = nil
        Font2.startInput = Input3.Position
        Font2.startPos = Screengui.Position
        Font2.startSize = Screengui.AbsoluteSize
    end
end

local function Job21(Request66)
    local Element156, Element157, Scale, Element158, Scale2, Element159, Element160
    if Font2.mode then
        Element157 = Font2.startInput
        Element156 = Request66.Position -Element157
        if Font2.mode == "move"
        Scale = Font2.startPos.X.Scale
        Element159 = Element156.X
        Element158 = Font2.startPos.X.Offset + Element159
        Scale2 = Font2.startPos.Y.Scale
        Element160 = Element156.Y
        Element159 = Font2.startPos.Y.Offset + Element160
        Screengui.Position = UDim2.TextLabel2(Scale, Element158, Scale2, Element159)
    end
end

end

local function Input5(Input6)
    local MouseButton12 = Enum.UserInputType.MouseButton1
    local Input7 = Input6.UserInputType == MouseButton12
    if not Input7 then
        MouseButton12 = Enum.UserInputType.Touch
        Input7 = Input6.UserInputType == MouseButton12
    end
    if Input7 then
        Font2.mode = nil
        Font2.corner = nil
    end
end

local TextButton
local function GuiObject()
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
end

local Control, Element161, Element162
local function createTween8(Instance8)
    local Element163, Element164, Element165, Element166, Element167, Element168, Element169, Element170, tweenInfo, Sine, Quint, Out, Quint2, Out2
    if Control ~= Instance8 then
        if TextButton then
            TextButton = nil
        end
        Control = Instance8
        Element163, Element164, Element165 = pairs(Element162)
        Element166, Element167 = Element163(Element164, Element165)
        if not (Element166 == nil) then
            Element165 = Element166
            local Element171 = {}
            local Element172 = {}
            local Element173 = {}
            while true do
                Element168 = Element166 == Instance8
                Element170 = Element167.button
                Quint = Enum.EasingStyle.Quint
                Out = Enum.EasingDirection.Out
                tweenInfo = TweenInfo.TextLabel2(0.25, Quint, Out)
                Sine = Element171
                if Element168 then
                    Sine.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
                else
                    Sine.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
                end
                Element169 = TweenService:Create(Element170, tweenInfo, Sine).Play
                if Element168 then
                    Element169 = Color3.fromRGB(100, 100, 255)
                else
                    Element169 = Color3.fromRGB(80, 80, 80)
                end
                Sine = Element167.stroke
                Quint2 = Enum.EasingStyle.Quint
                Out2 = Enum.EasingDirection.Out
                Quint = TweenInfo.TextLabel2(0.25, Quint2, Out2)
                Out = Element172
                Out.Color = Element169
                Out.Thickness = Element168 and 1.5 or 1
                Element170 = TweenService:Create(Sine, Quint, Out).Play
                if Element168 then
                    Sine = Enum.EasingStyle.Sine
                    Quint = Enum.EasingDirection.InOut
                    Element170 = TweenInfo.TextLabel2(1.5, Sine, Quint,-1, true)
                    Quint = Element167.stroke
                    Quint2 = Element173
                    Quint2.Color = Element169:Lerp(Color3.fromRGB(255, 255, 255), 0.25)
                    Quint2.Thickness = 2
                    TextButton = TweenService:Create(Quint, Element170, Quint2)
                    Element166, Element167 = Element163(Element164, Element165)
                    if not (Element166 == nil) then
                        Element165 = Element166
                        continue
                    end
                else
                    Element166, Element167 = Element163(Element164, Element165)
                    if Element166 == nil then
                        break
                    else
                        Element165 = Element166
                        continue
                    end
                end
                break
            end
        end
        Element163 = next
        Element164 = Element161
        Element166, Element167 = next(Element161, nil)
        if not (Element166 == nil) then
            Element165 = Element166
            while true do
                Element167.Visible = Element166 == Instance8
                Element166, Element167 = Element163(Element164, Element165)
                if Element166 ~= nil then
                    Element165 = Element166
                    continue
                end
                break
            end
        end
        return Instance8, Element163, Element164, Element166, Element166, Element167
    end
end

local function GuiObject2()
    TextButton.TextColor3 = Color3.fromRGB(180, 180, 230)
end

local function Input8(Input9)
    local MouseButton13 = Enum.UserInputType.MouseButton1
    local Input10 = Input9.UserInputType == MouseButton13
    if not Input10 then
        MouseButton13 = Enum.UserInputType.Touch
        Input10 = Input9.UserInputType == MouseButton13
    end
    if Input10 then
        Font2.mode = "resize"
        Font2.corner = Element162
        Font2.startInput = Input9.Position
        Font2.startPos = Screengui.Position
        Font2.startSize = Screengui.AbsoluteSize
    end
end

local function addFrame(parent)
    local Frame7 = Instance.TextLabel2("Frame")
    Frame7.Size = UDim2.TextLabel2(1, 0, 0, 8)
    Frame7.BackgroundTransparency = 1
    Frame7.Parent = parent
end

local function createTextButton(parent2, Request67, Request68)
    local TextButton2 = Instance.TextLabel2("TextButton")
    TextButton2.Size = UDim2.TextLabel2(1, 0, 0, 30)
    TextButton2.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
    TextButton2.BackgroundTransparency = 0.2
    TextButton2.Text = Request67
    TextButton2.Font = Enum.Font.FredokaOne
    TextButton2.TextSize = 14
    TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton2.Parent = parent2
    local UICorner4 = Instance.TextLabel2("UICorner")
    UICorner4.CornerRadius = UDim.TextLabel2(0, 5)
    UICorner4.Parent = TextButton2
    local UIStroke2 = Instance.TextLabel2("UIStroke")
    UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke2.Color = Color3.fromRGB(200, 100, 255)
    UIStroke2.Thickness = 1.5
    UIStroke2.Transparency = 0.3
    UIStroke2.Parent = TextButton2
    return TextButton2
end

local function createTextButton2(parent3, Request69, Request70)
    local Element174, TextButton3, Uistroke, ApplyStrokeMode
    local function createTween7()
        local Tween = TweenService:Create(TextButton3, TweenInfo.TextLabel2(0.15), {BackgroundColor3 = Element174 and Uistroke or ApplyStrokeMode}).Play
        TextButton3.Text = Request69 .. (Element174 and ": ON" ": OFF")
    end
    local function updateState14()
        Element174 = not Element174
    end
    local function getValue6()
        return Element174
    end
    Element174 = false
    TextButton3 = Instance.TextLabel2("TextButton")
    Uistroke = 0
    ApplyStrokeMode = 0
    TextButton3.Size = UDim2.TextLabel2(1, 0, 0, 30)
    Uistroke = 50
    ApplyStrokeMode = 150
    TextButton3.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
    TextButton3.BackgroundTransparency = 0.2
    TextButton3.Text = Request69 .. ": OFF"
    TextButton3.Font = Enum.Font.FredokaOne
    TextButton3.TextSize = 14
    Uistroke = 255
    ApplyStrokeMode = 255
    TextButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton3.Parent = parent3
    local UICorner5 = Instance.TextLabel2("UICorner")
    Uistroke = 0
    ApplyStrokeMode = 5
    UICorner5.CornerRadius = UDim.TextLabel2(0, 5)
    UICorner5.Parent = TextButton3
    Uistroke = "UIStroke"
    local UIStroke3 = Instance.TextLabel2("UIStroke")
    ApplyStrokeMode = Enum.ApplyStrokeMode
    Uistroke = ApplyStrokeMode.Border
    UIStroke3.ApplyStrokeMode = Uistroke
    ApplyStrokeMode = 200
    UIStroke3.Color = Color3.fromRGB(200, 100, 255)
    UIStroke3.Thickness = 1.5
    UIStroke3.Transparency = 0.3
    UIStroke3.Parent = TextButton3
    ApplyStrokeMode = 140
    Uistroke = Color3.fromRGB(140, 70, 200)
    ApplyStrokeMode = Color3.fromRGB(100, 50, 150)
    return TextButton3, getValue6
end

local Control2
local function computeValue13(Request71, Request72, parent4)
    local Textlabel, Font3
    local function createTween5()
        local Sine2 = Enum.EasingStyle.Sine
        local InOut = Enum.EasingDirection.InOut
        local Element175 = TweenInfo.TextLabel2(0.8, Sine2, InOut,-1, true)
        local Element176 = {}
        Element176.Color = Color3.fromRGB(100, 100, 255):Lerp(Color3.fromRGB(150, 150, 255), 0.5)
        Element176.Thickness = 1.5
        Element176.Transparency = 0.2
        Control2[Textlabel] = TweenService:Create(Font3, Element175, Element176)
    end
    local function createTween6()
        if Control2[Textlabel] then
            Control2[Textlabel] = nil
        end
        local Element177
        local Quad = Enum.EasingStyle.Quad
        local Element178 = TweenInfo.TextLabel2(0.3, Quad)
        local Element179 = {}
        Element179.Color = Color3.fromRGB(100, 100, 100)
        Element179.Thickness = 1
        Element179.Transparency = 0.5
        Element177 = TweenService:Create(Font3, Element178, Element179).Play
    end
    local Frame8 = Instance.TextLabel2("Frame")
    Frame8.BackgroundTransparency = 1
    Textlabel = 0
    Font3 = 35
    Frame8.Size = UDim2.TextLabel2(1, 0, 0, 35)
    Frame8.Parent = parent4
    local UIListLayout = Instance.TextLabel2("UIListLayout")
    UIListLayout.FillDirection = Enum.FillDirection.Vertical
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    Textlabel = 0
    UIListLayout.Padding = UDim.TextLabel2(0, 1)
    UIListLayout.Parent = Frame8
    Textlabel = "TextLabel"
    local TextLabel4 = Instance.TextLabel2("TextLabel")
    Font3 = 0
    TextLabel4.Size = UDim2.TextLabel2(1, 0, 0, 15)
    TextLabel4.BackgroundTransparency = 1
    TextLabel4.Text = Request71
    TextLabel4.Font = Enum.Font.SourceSansSemibold
    TextLabel4.TextSize = 12
    Font3 = 180
    TextLabel4.TextColor3 = Color3.fromRGB(180, 180, 180)
    Font3 = Enum
    Textlabel = Enum.TextXAlignment.Left
    TextLabel4.TextXAlignment = Textlabel
    TextLabel4.Parent = Frame8
    Textlabel = Instance.TextLabel2("TextBox")
    Font3 = 1
    Textlabel.Size = UDim2.TextLabel2(1, 0, 0, 25)
    Font3 = 40
    Textlabel.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    Textlabel.BackgroundTransparency = 0.2
    Textlabel.Text = Request72
    Font3 = Enum.Font
    Textlabel.Font = Font3.SourceSans
    Textlabel.TextSize = 14
    Font3 = 255
    Textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    Textlabel.ClearTextOnFocus = false
    Font3 = Enum.TextXAlignment
    Textlabel.TextXAlignment = Font3.Center
    Textlabel.Parent = Frame8
    Font3 = "UICorner"
    local UICorner6 = Instance.TextLabel2("UICorner")
    Font3 = UDim.TextLabel2(0, 5)
    UICorner6.CornerRadius = Font3
    UICorner6.Parent = Textlabel
    Font3 = Instance.TextLabel2("UIStroke")
    Font3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    Font3.Color = Color3.fromRGB(100, 100, 100)
    Font3.Thickness = 1
    Font3.Transparency = 0.5
    Font3.Parent = Textlabel
    return Textlabel, Font3, TextLabel4
end

local FillDirection
local function updateState35()
    local Text2 = FillDirection.Text
    Element8.Player2.Player = Text2
    FillDirection.Text = Element8.Player2.Player
end

local function updateState36()
    if Element105 and Element105 ~= ""
    Element8.Player2.Player = Element105
    FillDirection.Text = Element105
end

end

local Element180
local function getValue20()
    local Random4
    local function Label8()
        PlayerGui.Username.Text = "(" .. Random4 .. ")"
    end
    local Element181 = Element180
    Random4 = Element181[math.random(1, #Element181)]
    Element8.Player2.Player = Random4
    FillDirection.Text = Random4
end

local function Job22()
end

local Element182, FredokaOne
local function getValue21()
    local Random5, Element183
    if #FredokaOne ~= 0 then
        Element183 = FredokaOne
        Random5 = Element183[math.random(1, #Element183)]
        return Random5, Element182(Random5.entry.key, "Weapons")
    end
end

local function getValue22()
    if not next(Element8.Player1.Offer) and not next(Element8.Player2.Offer) then
        return
    end
    PlayerGui.Accepted.Visible = true
    Element8.Player2.Accepted = true
end

local function Job23(Request73)
    Element64 = Request73
    if not Request73 then
        Element65 = false
    end
    return Request73
end

local Element184, Bloxyking2008
local function Label9()
    local Label10 = tonumber(Bloxyking2008.Text)
    local Element185 = Label10
    if Label10 then
        Element185 = 0 < Label10
    end
    if Element185 then
        Element184 = Label10
    else
        Bloxyking2008.Text = tostring(Element184)
    end
end

local function Instance9(Instance10)
    Instance10.Enabled = false
end

local function GuiObject3(GuiObject4)
    GuiObject4.Visible = false
    GuiObject4.BackgroundTransparency = 1
end

local function Job24()
end

local function apply3(Request74)
    Request74.ImageTransparency = 1
end

local function apply4(Request75)
    Request75.ImageTransparency = 1
end

local function apply5(Request76)
    Request76.TextTransparency = 1
end

local function apply6(Request77)
    Request77.TextTransparency = 1
end

local function Part3(Part4)
    Part4.Transparency = 1
end

local Crimsonreaperx
local function Job25(Request78)
    local function processItems4()
        local Element186
        local function InstanceOf()
            local Element187, Element188, Element189
            Element187, Element188, Element189 = ipairs(Crimsonreaperx)
            local Element190
            x9, Element190 = Element187(Element188, Element189)
            if not (x9 == nil) then
                Element189 = x9
                while true do
                    if Element186:IsA(Element190.class) then
                        x9, Element190 = Element187(Element188, Element189)
                        if not (x9 == nil) then
                            Element189 = x9
                            continue
                        end
                    else
                        x9, Element190 = Element187(Element188, Element189)
                        if x9 == nil then
                            break
                        else
                            Element189 = x9
                            continue
                        end
                    end
                    return
                end
            end
        end
        local Element191, Element192, Descendants2
        Element191, Element192, Descendants2 = ipairs(Crimsonreaperx)
        x10, Element186 = Element191(Element192, Descendants2)
        if not (x10 == nil) then
            Descendants2 = x10
            while true do
                if Request78:IsA(Element186.class) then
                    x10, Element186 = Element191(Element192, Descendants2)
                    if not (x10 == nil) then
                        Descendants2 = x10
                        continue
                    end
                else
                    x10, Element186 = Element191(Element192, Descendants2)
                    if x10 == nil then
                        break
                    else
                        Descendants2 = x10
                        continue
                    end
                end
                break
            end
        end
        Element191, Element192, Descendants2 = ipairs(Request78:GetDescendants())
        x10, Element186 = Element191(Element192, Descendants2)
        if not (x10 == nil) then
            Descendants2 = x10
            while true do
                x10, Element186 = Element191(Element192, Descendants2)
                if x10 ~= nil then
                    Descendants2 = x10
                    continue
                end
                break
            end
        end
    end
    if Request78 then
        return Request78
    end
end

local Noobmaster69, Pixelknightz
local function Instance11()
    return Pixelknightz.CoreGui:FindFirstChild(Noobmaster69.overlayName)
end

local Zerohavoc
local function findChild7()
    local Element193 = Zerohavoc()
    local Element194 = Element193 ~= nil
    if Element194 then
        return Element193:FindFirstChild(Noobmaster69.modalName, true) ~= nil
    else
        return Element194
    end
end

local Silentstorm_yt
local function Job26(Request79)
    local function processItems3()
        local function Job27()
        end
        local function Job28()
        end
        local Element195, Element196, Element197, Element198, Connections2, Element199, Element200
        if getconnections then
            Element195, Element196, Element197 = ipairs(Silentstorm_yt)
            x11, Element198 = Element195(Element196, Element197)
            if not (x11 == nil) then
                Element197 = x11
                while true do
                    Connections2 = getconnections(Request79[Element198])
                    x12, Element200 = next(Connections2, nil)
                    if not (x12 == nil) then
                        Element199 = x12
                        while true do
                            x12, Element200 = next(Connections2, Element199)
                            if x12 ~= nil then
                                Element199 = x12
                                continue
                            end
                            break
                        end
                    end
                    x11, Element198 = Element195(Element196, Element197)
                    if x11 ~= nil then
                        Element197 = x11
                        continue
                    end
                    break
                end
            end
            return
        end
    end
    return Request79
end

local function Job29(Request80)
    local Element201
    local function updateState12()
        Element201 = Request80.BlockingModalContainerWrapper.BlockingModal.AlertModal.AlertContents.Footer.Buttons["3"]
    end
    return nil
end

local function Job30(Request81)
    local Element202
    local function Instance12()
        local Instance13 = Request81:FindFirstChild("Buttons", true)
        local Element203, Element204, Children2, Element205, Element206, Text3, Element207
        if Instance13 then
            Element203, Element204, Children2 = ipairs(Instance13:GetChildren())
            Element205, Element206 = Element203(Element204, Children2)
            if not (Element205 == nil) then
                Children2 = Element205
                while true do
                    if not (Element206:IsA("ImageButton") or Element206:IsA("TextButton")) then
                        Element205, Element206 = Element203(Element204, Children2)
                        if Element205 ~= nil then
                            Children2 = Element205
                            continue
                        end
                        break
                    end
                    Text3 = Element206:FindFirstChild("Text")
                    Element207 = Text3
                    if Element207 then
                        Text3:IsA("TextLabel")
                        Element202 = Element206
                        return
                    end
                    if Element207 then
                        Element207 = Text3.Text == "Block"
                    end
                    if not Element207 then
                        Element205, Element206 = Element203(Element204, Children2)
                        if Element205 ~= nil then
                            Children2 = Element205
                            continue
                        end
                        break
                    end
                    Element202 = Element206
                    return
                end
            end
            return
        end
    end
    Element202 = nil
    return nil
end

local function Job31(Request82)
    local Element208
    local function processItems()
        local Element209, Element210, Descendants3
        Element209, Element210, Descendants3 = ipairs(Request82:GetDescendants())
        local Element211, Element212
        Element211, Element212 = Element209(Element210, Descendants3)
        local Text4, Element213
        if not (Element211 == nil) then
            Descendants3 = Element211
            while true do
                if not (Element212:IsA("ImageButton") or Element212:IsA("TextButton")) then
                    Element211, Element212 = Element209(Element210, Descendants3)
                    if Element211 ~= nil then
                        Descendants3 = Element211
                        continue
                    end
                    break
                end
                Text4 = Element212:FindFirstChild("Text")
                Element213 = Text4
                if Element213 then
                    Text4:IsA("TextLabel")
                    Element208 = Element212
                    return
                end
                if Element213 then
                    Element213 = Text4.Text == "Block"
                end
                if not Element213 then
                    Element211, Element212 = Element209(Element210, Descendants3)
                    if Element211 ~= nil then
                        Descendants3 = Element211
                        continue
                    end
                    break
                end
                Element208 = Element212
                return
            end
        end
    end
    return nil
end

local Dragonhunter999
local function processItems19(Request83)
    local Element214, Element215, Element216
    Element214, Element215, Element216 = ipairs(Dragonhunter999)
    local Element217
    x13, Element217 = Element214(Element215, Element216)
    local Element218
    if not (x13 == nil) then
        Element216 = x13
        while true do
            Element218 = Element217(Request83)
            if not Element218 then
                x13, Element217 = Element214(Element215, Element216)
                if x13 ~= nil then
                    Element216 = x13
                    continue
                end
                break
            end
            return Element218
        end
    end
    return Request83, Element214, Element215, x13, x13, Element217
end

local function RunService(Request84)
    return Request84
end

local function Job32(Request85)
    local function Job33()
    end
    local function Job34()
    end
    return Request85
end

local function Job35(Request86)
    local function updateState11()
        Pixelknightz.GuiService.SelectedObject = Request86
    end
    local function getValue5()
        return Pixelknightz.VirtualInputManager
    end
    return Request86
end

local function runHandler(Request87)
    local function getValue4()
        local AbsolutePosition = Request87.AbsolutePosition
        local AbsoluteSize = Request87.AbsoluteSize
        local Element219 = AbsoluteSize.X / 2
        local Element220 = AbsolutePosition.X + Element219
        local Element221 = AbsoluteSize.Y / 2
        local virtualInputManager = Pixelknightz.VirtualInputManager
        return AbsolutePosition, AbsoluteSize, Element220, AbsolutePosition.Y + Element221, virtualInputManager
    end
    return Request87
end

local Epicgamer_lol, Skybreaker42, Vortexhaze
local function runProtected7(Request88, Request89, Request90, Request91, Request92, ...)
    local function Job36()
    end
    local function connectEvents(Request93)
        local function Job37(Request94)
            local function DescendantAdded()
            end
            local Instance14 = Noobmaster69.Instance14
            if Request94.Name == Instance14 then
                return Request94, Request94.DescendantAdded:Connect(DescendantAdded)
            else
                return
            end
        end
        return Request93, Request93.DescendantAdded:Connect(Job37)
    end
    local function Job38()
    end
    local function Job39()
        local function Job40()
        end
    end
    local function Job41()
    end
    local function Job42()
    end
    local function Job43()
    end
    local function updateState10()
        Pixelknightz.GuiService.SelectedObject = nil
    end
    local function Job44()
    end
    local function Job45()
    end
    local Element222, Element223, Element224, StartTime2, Element225, StartTime3, Element226, StartTime4, Element227, Element228, Element229, Ok5, Element230, Element231
    if Request88 then
        Element222 = tostring(Request88)
        Element223 = {}
        Element224 = connectEvents
        StartTime2 = tick(Request90, Request91, Request93, ...)
        Element225 = nil
        while true do
            StartTime3 = tick(Request91, Request93, ...) -StartTime2
            if Noobmaster69.modalAppearTimeout >= StartTime3 then
                StartTime3 = Zerohavoc()
                if StartTime3 then
                    Element225 = StartTime3:FindFirstChild(Noobmaster69.Instance14, true)
                    continue
                end
                if not Element225 then
                    continue
                end
                break
            end
            StartTime3, Element226, StartTime4 = ipairs(Element223)
            Element227, Element228 = StartTime3(Element226, StartTime4)
            if not (Element227 == nil) then
                StartTime4 = Element227
                while true do
                    Element227, Element228 = StartTime3(Element226, StartTime4)
                    if Element227 ~= nil then
                        StartTime4 = Element227
                        continue
                    end
                    break
                end
            end
            return Request88, Element222, Element223, Element224, StartTime2, Element225
        end
        StartTime3 = Pixelknightz.RunService.Heartbeat:Connect(Job39)
        Element226 = Skybreaker42(Element225)
        if Element226 then
            Element228 = Noobmaster69
            do
                local shouldExit3 = false
                if 0 < Element228.maxAttempts then
                    StartTime4 = 1
                    Element227 = false
                    Element228, Element229, Ok5 = ipairs(Vortexhaze)
                    Element230, Element231 = Element228(Element229, Ok5)
                    if Element230 == nil then
                        Ok5 = Element230
                        local __cont2 = false
                        while true do
                            if Element227 then
                                Element228 = updateState10
                            elseif StartTime4 < Noobmaster69.maxAttempts then
                                StartTime4 = StartTime4 + 1
                                Element227 = false
                                Element228, Element229, Ok5 = ipairs(Vortexhaze)
                                local __brk3 = false
                                Element230, Element231 = Element228(Element229, Ok5)
                                if not (Element230 == nil) then
                                    Ok5 = Element230
                                    while true do
                                        if not Element231.skipCheck then
                                            Epicgamer_lol(Request91, Request93, ...)

                                            ("[block] modal dismissed on attempt %d via %s for %s")
                                                :format(StartTime4, Element231.Name, Element222)
                                            Element227 = true
                                            __brk3 = true
                                            break
                                        else
                                            Element230, Element231 = Element228(Element229, Ok5)
                                            if Element230 == nil then
                                                break
                                            else
                                                Ok5 = Element230
                                            end
                                        end
                                    end
                                    if __brk3 then
                                        break
                                    end
                                    if __cont2 then
                                        break
                                    end
                                end
                                Ok5 = Element230
                                __cont2 = false
                                continue
                            else
                                Element228 = updateState10
                            end
                            shouldExit3 = true
                            break
                        end
                    else
                        Ok5 = Element230
                        local __cont6 = false
                        while true do
                            if not Element231.skipCheck then
                                Epicgamer_lol(Request91, Request93, ...)

                                ("[block] modal dismissed on attempt %d via %s for %s")
                                    :format(StartTime4, Element231.Name, Element222)
                                Element228 = updateState10
                            else
                                Element230, Element231 = Element228(Element229, Ok5)
                                if Element230 == nil then
                                    Ok5 = Element230
                                    while not Element227 do
                                        Element228 = Noobmaster69
                                        Element227 = Noobmaster69.maxAttempts
                                        if StartTime4 < Element227 then
                                            StartTime4 = StartTime4 + 1
                                            Element227 = false
                                            Element228, Element229, Ok5 = ipairs(Vortexhaze)
                                            Element230, Element231 = Element228(Element229, Ok5)
                                            if Element230 == nil then
                                                Ok5 = Element230
                                            else
                                                Ok5 = Element230
                                                __cont6 = true
                                                break
                                            end
                                        else
                                            break
                                        end
                                    end
                                    if __cont6 then
                                        __cont6 = false
                                        continue
                                    end
                                    break
                                else
                                    Ok5 = Element230
                                    continue
                                end
                            end
                            shouldExit3 = true
                            break
                        end
                    end
                    if shouldExit3 then
                        break
                    end
                end
            end
        end
        StartTime4, Element227, Element228 = ipairs(Element223)
        Element229, Ok5 = StartTime4(Element227, Element228)
        if not (Element229 == nil) then
            Element228 = Element229
            while true do
                Element229, Ok5 = pcall(Element227, Element228)
                if Element229 ~= nil then
                    Element228 = Element229
                    continue
                end
                break
            end
        end
        StartTime4 = tick(Element229, Element229, Ok5) + Noobmaster69.modalDismissTimeout
        if tick() < StartTime4 then
            Element228 = Epicgamer_lol(Request91, Request93, ...)
            while true do
                if not Element228 then
                elseif tick(Request90, Request91, Request93, ...) < StartTime4 then
                    Element228 = Epicgamer_lol(Request91, Request93, ...)
                    continue
                else
                    break
                end
                return Request88, Element222, Element223, Element224, StartTime2, Element225, StartTime3, Element226, StartTime4
            end
        end
        return Request88, Element222, Element223, Element224, StartTime2, Element225, StartTime3, Element226, StartTime4
    end
end

local function Job46()
    local function Instance15()
        return game.Players:FindFirstChild(Element8.Player2.Player)
    end
end

local function Label11()
    local Random6
    if FillDirection.Text == ""
    Random6 = "Fake" .. math.random(1000, 9999)
end

end

local function Job47()
end

local Belt, Toxicbubbles
local function getValue25()
    local Element232, Element233
    if Belt == "Back"
    Element232 = Toxicbubbles
    Toxicbubbles.Text = "Knife: Back"
    Element233 = Color3.fromRGB(100, 50, 150)
else
    Element232 = Toxicbubbles
    Toxicbubbles.Text = "Knife: Belt"
    Element233 = Color3.fromRGB(150, 50, 100)
end

Element232.BackgroundColor3 = Element233
return Element232, Element233
end

local function updateState37()
    if Belt == "Back"
    Belt = "Belt"
else
    Belt = "Back"
end

end

local Element234, ApplyStrokeMode2
local function Label12()
    ApplyStrokeMode2.Text = "Animation: ")
end

local function Job48(Request95)
    if Request95 then
        if not LocalPlayer2.gui or not LocalPlayer2.gui.Parent then
            return Request95
        end
        LocalPlayer2.gui.Enabled = true
    elseif LocalPlayer2.gui and LocalPlayer2.gui.Parent then
        LocalPlayer2.gui.Enabled = false
    end
end

local Element235
local function Label13()
    local Label14 = tonumber(Element235.Text)
    local Enabled
    if Label14 then
        LocalPlayer2.size = math.clamp(Label14, 0.5, 2)
        if LocalPlayer2.gui and LocalPlayer2.gui.Parent then
            Enabled = LocalPlayer2.gui.Enabled
            LocalPlayer2.gui = nil
            LocalPlayer2.image = nil
            LocalPlayer2.pointer = nil
            LocalPlayer2.result = nil
            LocalPlayer2.mainFrame = nil
            LocalPlayer2.spinBtn = nil
            if not Enabled then
                LocalPlayer2.gui.Enabled = false
            end
        end
    else
        Element235.Text = tostring(LocalPlayer2.size)
    end
end

local Element236
local function getValue28()
    local Text5 = Element236.Text
    local Element237 = Text5
    if Text5 then
        Element237 = Text5 ~= ""
    end
    if Element237 then
        return Text5
    end
end

local function Job49()
end

local Items2, Textlabel2
local function GuiObject5()
    local GuiObject6 = Items2.AbsolutePosition.Y
    local GuiObject7 = Textlabel2.AbsolutePosition.Y -GuiObject6
    local GuiObject8 = Items2.AbsoluteSize.Y -GuiObject7 -4
    local Element238 = UDim2.TextLabel2(1, 0, 0, math.max(80, GuiObject8))
    Textlabel2.Size = Element238
    return GuiObject7, GuiObject8, Textlabel2, Element238
end

local function Job50(Request96)
    Request96 = string.lower(tostring(Request96 or ""))
    Request96 = string.Element96(Request96, "^c%.%s*", "chroma ")
    Request96 = string.Element96(Request96, "(%s)c%.%s*", "%1chroma ")
    Request96 = string.Element96(Request96, "['’\"]", "")
    Request96 = string.Element96(Request96, "%s+", " ")
    Request96 = string.Element96(Request96, "^%s+", "")
    return string.Element96(Request96, "%s+$", "")
end

local function processItems20()
    local lower = string.lower(Element236.Text or "")
    local Element239, Element240, Element241
    Element239, Element240, Element241 = ipairs(FredokaOne)
    local Element242
    x14, Element242 = Element239(Element240, Element241)
    local entry, lower2, Element243, Element244, Element245
    if not (x14 == nil) then
        Element241 = x14
        while true do
            if lower == ""
            Element242.button.Visible = true
            x14, Element242 = Element239(Element240, Element241)
            if not (x14 == nil) then
                Element241 = x14
                continue
            end
        else
            entry = Element242.entry
            Element245 = " " .. entry.type
            Element244 = " " .. entry.rarity .. Element245
            Element243 = " " .. entry.key .. Element244
            lower2 = string.lower(entry.Name .. Element243)
            Element242.button.Visible = string.Element104(lower2, lower, 1, true) ~= nil
            x14, Element242 = Element239(Element240, Element241)
            if x14 == nil then
                break
            else
                Element241 = x14
                continue
            end
        end
        return
    end
end

end

local Evergreen, Celestial
local function createTween9()
    local Element246 = TweenInfo.TextLabel2(0.15)
    local GuiObject9 = {}
    GuiObject9.BackgroundColor3 = Evergreen:Lerp(Color3.fromRGB(255, 255, 255), 0.25)
    local Element247 = TweenService:Create(Celestial, Element246, GuiObject9).Play
end

local function createTween10()
    local Tween2 = TweenService:Create(Celestial, TweenInfo.TextLabel2(0.15), {BackgroundColor3 = Evergreen}).Play
end

local Sunrise
local function createTween11()
    local function createTween4()
        local Tween3 = TweenService:Create(Celestial, TweenInfo.TextLabel2(0.15), {BackgroundColor3 = Evergreen}).Play
    end
    local Element248, Element249
    if Element182(Sunrise, "Weapons") then
        Element249 = TweenInfo.TextLabel2(0.1)
        local GuiObject10 = {}
        GuiObject10.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
        Element248 = TweenService:Create(Celestial, Element249, GuiObject10).Play
    else
        Element249 = TweenInfo.TextLabel2(0.1)
        local GuiObject11 = {}
        GuiObject11.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
        Element248 = TweenService:Create(Celestial, Element249, GuiObject11).Play
    end
end

local Uipadding, Sakura
local function checkCondition7(Request97)
    local Element250 = Uipadding(Request97)
    if Sakura[Element250] then
        return true
    else
        return Sakura[string.Element96(Element250, "^chroma ", "")] == true
    end
end

local Bauble
local function checkCondition8(Request98, Request99)
    local Element251
    if Request98 then
        Element251 = Request98
    else
        return false
    end
    local Element252 = tostring(Element251)
    Element251 = string.match(Element252, "^(%S+)")
    local Element253 = Element251
    if Element251 then
        Element253 = Sunrise[Element251]
    end
    local Element254, Element255, Element256
    if Element253 then
        return true
    else
        Element253, Element254, Element255 = string.gmatch(string.lower(Element252), "%S+")
        Element256 = Element253(Element254, Element255)
        if not (Element256 == nil) then
            Element255 = Element256
            while true do
                if not Bauble[Element256] then
                    Element256 = Element253(Element254, Element255)
                    if Element256 ~= nil then
                        Element255 = Element256
                        continue
                    end
                    break
                end
                return true
            end
        end
        return false
    end
end

local function checkCondition9(Request100)
    return false
end

local Darkshot
local function computeValue14(Request101, Request102)
    local Element257, Element258, Element259
    if Request102 then
        return 1
    else
        Element257 = Darkshot[Request101] or Darkshot.Common
        Element258 = Element257[1]
        Element259 = Element257[2]
        return math.random(Element258, Element259)
    end
end

local Element260
local function processItems21(Request103)
    local Element261, Element262, Element263, Element264, Element265, Element266, Element267
    if not (not Request103 or not Request103.chroma) then
        Element261 = Uipadding(Request103.Name)
        Element262 = string.Element96(Element261, "^chroma ", "")
        Element263, Element264, Element265 = ipairs(Element260)
        x15, Element266 = Element263(Element264, Element265)
        if not (x15 == nil) then
            Element265 = x15
            while true do
                if not Element266.chroma then
                    Element267 = Uipadding(Element266.Name)
                    if not (Element267 == Element262 or Element267 == Element261) then
                        x15, Element266 = Element263(Element264, Element265)
                        if x15 ~= nil then
                            Element265 = x15
                            continue
                        end
                        return nil
                    end
                    return Element266
                end
                x15, Element266 = Element263(Element264, Element265)
                if x15 ~= nil then
                    Element265 = x15
                    continue
                end
                break
            end
        end
    end
    return nil
end

local Gingerscope, Evergun, Evergreen2
local function processItems22()
    local Item3 = ItemModule.Weapons or ItemModule.Item
    local Element268 = 0
    local Element269 = 0
    local Element270 = next
    local Element271 = Item3
    local Element272, Element273
    Element272, Element273 = next(Item3, nil)
    local Element274, Rarity, Element275
    do
        local shouldExit4 = false
        if Element272 == nil then
            Element270 = Evergreen2
            Element271 = "Spawned %d weapons (%d items total)"
            Element272 = 0
            Element273 = 0
        else
            Element274 = Element272
            Element275 = type(Element273)
            while true do
                if Element275 == "table"
                Evergun(Element273)
                Gingerscope(Element273.ItemName or Element272)
                Rarity = Element273.Rarity
                if Element273.Chroma == true then
                    Rarity = "Chroma"
                end
                Element268 = Element268 + 1
                Element269 = Element269 + Celestial(Rarity, false)
                Element272, Element273 = Element270(Element271, Element274)
                if Element272 == nil then
                    Element270 = Evergreen2
                    Element271 = "Spawned %d weapons (%d items total)"
                    Element272 = Element268
                    Element273 = Element269
                else
                    Element274 = Element272
                    Element275 = type(Element273)
                    continue
                end
            else
                Element272, Element273 = Element270(Element271, Element274)
                if Element272 == nil then
                    break
                else
                    Element274 = Element272
                    Element275 = type(Element273)
                    continue
                end
            end
            shouldExit4 = true
            break
        end
        if shouldExit4 then
            break
        end
        Element270 = Evergreen2
        Element271 = "Spawned %d weapons (%d items total)"
        Element272 = Element268
        Element273 = Element269
    end
end

Element270.Text = Element271:format(Element272, Element273)
Element270.TextColor3 = Color3.fromRGB(120, 255, 160)

("[mm2run/spawner] Bulk spawn: %d weapon types, %d items total"):format(Element268, Element269)
return Item3, Element268, Element269
end

local Spawner, Constellation
local function GuiObject12()
    local GuiObject13 = Spawner.AbsolutePosition.Y
    local GuiObject14 = Constellation.AbsolutePosition.Y -GuiObject13
    local GuiObject15 = Spawner.AbsoluteSize.Y -GuiObject14 -4
    local Element276 = UDim2.TextLabel2(1, 0, 0, math.max(80, GuiObject15))
    Constellation.Size = Element276
    return GuiObject14, GuiObject15, Constellation, Element276
end

local Alienbeam, Alienbeam2
local function processItems23()
    local lower3 = string.lower(Alienbeam.Text or "")
    local Element277, Element278, Element279
    Element277, Element278, Element279 = ipairs(Alienbeam2)
    local Element280
    x16, Element280 = Element277(Element278, Element279)
    local entry2, lower4, Element281, Element282, Element283
    if not (x16 == nil) then
        Element279 = x16
        while true do
            if lower3 == ""
            Element280.button.Visible = true
            x16, Element280 = Element277(Element278, Element279)
            if x16 == nil then
                Element279 = x16
            else
                Element279 = x16
                continue
            end
        else
            entry2 = Element280.entry
            Element283 = " " .. entry2.type
            Element282 = " " .. entry2.rarity .. Element283
            Element281 = " " .. entry2.key .. Element282
            lower4 = string.lower(entry2.Name .. Element281)
            Element280.button.Visible = string.Element104(lower4, lower3, 1, true) ~= nil
            x16, Element280 = Element277(Element278, Element279)
            if x16 == nil then
                break
            else
                Element279 = x16
                continue
            end
        end
        return lower3, Element277, Element278, Element279, x16, Element280
    end
end

return lower3, Element277, Element278, x16, x16, Element280
end

local function Job51(Request104)
    return {}
end

local Raygun
local function Job52(Request105)
    local LocalPlayer4
    local function getValue3()
        local Response = game.ReplicatedStorage.Remotes.Extras.GetFullInventory:InvokeServer(Request105)
        if type(Response) == "table"
        LocalPlayer4 = Raygun(Response)
    end
end

LocalPlayer4 = not Request105
if LocalPlayer4 then
    LocalPlayer4 = nil
    return nil
else
    LocalPlayer4 = game.Players.LocalPlayer
    if Request105 == LocalPlayer4 then
        LocalPlayer4 = Raygun(Container)
        return LocalPlayer4
    else
        LocalPlayer4 = nil
        return nil
    end
end

end

local function Job53(Request106)
    Request106 = string.lower(tostring(Request106 or ""))
    Request106 = string.Element96(Request106, "^c%.%s*", "chroma ")
    Request106 = string.Element96(Request106, "(%s)c%.%s*", "%1chroma ")
    Request106 = string.Element96(Request106, "['’\"]", "")
    Request106 = string.Element96(Request106, "%s+", " ")
    Request106 = string.Element96(Request106, "^%s+", "")
    return string.Element96(Request106, "%s+$", "")
end

local Weapons, TextButton4
local function createTween12()
    local Element284 = TweenInfo.TextLabel2(0.15)
    local GuiObject16 = {}
    GuiObject16.BackgroundColor3 = Weapons:Lerp(Color3.fromRGB(255, 255, 255), 0.25)
    local Element285 = TweenService:Create(TextButton4, Element284, GuiObject16).Play
end

local function createTween13()
    local Tween4 = TweenService:Create(TextButton4, TweenInfo.TextLabel2(0.15), {BackgroundColor3 = Weapons}).Play
end

local Constellation2, Turkey, Element286
local function createTween14()
    local function createTween3()
        local Tween5 = TweenService:Create(TextButton4, TweenInfo.TextLabel2(0.15), {BackgroundColor3 = Weapons}).Play
    end
    local Label15 = tonumber(Turkey.Text)
    local Element287 = Label15
    if Label15 then
        Element287 = 0 < Label15
    end
    local Element288
    if Element287 then
        Element288 = Label15
    else
        Element288 = Celestial(Element286.rarity, false)
    end
    local Element289, Element290
    if Element286.chroma then
        Element289 = Constellation2(Element286)
        if Label15 and 0 < Label15 then
            Element290 = Label15
        else
            Element290 = Celestial(Element289.rarity, false)
        end
        Element287 = (" + %s x%d"):format(Element289.Name, Element290)

        ("[mm2run/spawner] auto-spawned basic counterpart: %s x%d")
            :format(Element289.Name, Element290)
        Element289 = Evergreen2
        Element290 = ("Spawned %s x%d%s"):format(Element286.Name, Element288, Element287)
    else
        Element289 = Evergreen2
        Element290 = ("Spawned %s x%d%s"):format(Element286.Name, Element288, "")
    end
    Element289.Text = Element290
    Element289.TextColor3 = Color3.fromRGB(120, 255, 160)
    local Element291 = TweenInfo.TextLabel2(0.1)
    local GuiObject17 = {}
    GuiObject17.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
    Element289 = TweenService:Create(TextButton4, Element291, GuiObject17).Play
end

local Element292, FillDirection2
local function processItems24(Request107, Request108)
    local function checkCondition2(Request109, Request110)
        local amount2 = Request109.amount
        local Element293 = Request109.value * amount2
        local amount3 = Request110.amount
        return Request110.value * amount3 < Element293
    end
    local Element294, Element295, Element296, Element297, Element298, Element299, Element300, Element301, Element302, Amount2, Element303
    if not Request107 then
        return 0, {}
    else
        Element294 = 0
        Element295 = {}
        Element296 = 0
        if Request108 then
            ("[mm2run] ----- %s: %d inventory items -----"
        end
        Element297, Element298, Element299 = ipairs(Request107)
        Element300, Element301 = Element297(Element298, Element299)
        if not (Element300 == nil) then
            Element299 = Element300
            local Element304 = {}
            while true do
                Element302 = Element286[FillDirection2(Element301.Name)]
                if Element302 then
                    Amount2 = Element301.Amount
                    Element303 = Element302.value * Amount2
                    Element294 = Element294 + Element303
                    Element304.Name = Element302.Name
                    Element304.Amount2 = Amount2
                    Element304.value = Element302.value
                    if Request108 then
                        ("[mm2run]   [+] %s x%d  =  %s  (each %s)")
                            :format(Element302.Name, Amount2, Element292(Element303), Element292(Element302.value))
                    end
                    Element300, Element301 = Element297(Element298, Element299)
                    if not (Element300 == nil) then
                        Element299 = Element300
                        continue
                    end
                else
                    Element296 = Element296 + 1
                    if Request108 then
                        ("[mm2run]   [-] %s x%d  (%s)")
                            :format(tostring(Element301.Name), Element301.Amount or 1, "not in price table")
                        Element300, Element301 = Element297(Element298, Element299)
                        if not (Element300 == nil) then
                            Element299 = Element300
                            continue
                        end
                    else
                        Element300, Element301 = Element297(Element298, Element299)
                        if Element300 == nil then
                            break
                        else
                            Element299 = Element300
                            continue
                        end
                    end
                end
                if Request108 then
                    ("[mm2run] ----- %s TOTAL: %s  (%d counted, %d ignored) -----"
                end
                return Element294, Element295
            end
        end
        if Request108 then
            ("[mm2run] ----- %s TOTAL: %s  (%d counted, %d ignored) -----"
        end
        return Element294, Element295
    end
end

local Font4, SourceSans
local function Instance16()
    local Children3 = Font4:GetChildren()
    local Element305 = next
    local Element306
    x17, Element306 = next(Children3, nil)
    local Element307, Element308
    if x17 == nil then
        local Element309 = {}
        SourceSans = Element309
        return Element309, Element309, x17, x17, Element306
    else
        Element307 = x17
        Element308 = Element306:IsA("UIListLayout")
        local Element310 = {}
        while true do
            if not Element308 then
                Element308 = Element306:IsA("UIPadding")
            end
            if not Element308 then
                x17, Element306 = Element305(Children3, Element307)
                if x17 == nil then
                    Element307 = x17
                else
                    Element307 = x17
                    Element308 = Element306:IsA("UIListLayout")
                    continue
                end
            else
                x17, Element306 = Element305(Children3, Element307)
                if x17 == nil then
                    break
                else
                    Element307 = x17
                    Element308 = Element306:IsA("UIListLayout")
                    continue
                end
            end
            SourceSans = Element310
            return Element310, Element310, Element307, x17, Element306
        end
        SourceSans = Element310
        return Element310, Element310, x17, x17, Element306
    end
end

local Phantomriderx, Element311
local function Job54(Request111)
    local Font5
    local function updateState8()
        local function runProtected2()
            local Element312, Ok6
            Element312, Ok6 = pcall(Phantomriderx, Request111)
            local Element313, Element314
            if not Element312 then
                tostring(Ok6)
                Element313 = Font5
                Font5.Text = "err"
                Element314 = Color3.fromRGB(160, 60, 60)
            else
                Element313 = Font5
                Font5.Text = "Blocked"
                Element314 = Color3.fromRGB(90, 90, 90)
            end
            Element313.BackgroundColor3 = Element314
        end
        Font5.Text = "…"
    end
    local function updateState9()
        local Name2 = Request111.Name
        Element8.Player2.Player = Name2
        FillDirection.Text = Request111.Name
    end
    local Frame9 = Instance.TextLabel2("Frame")
    Frame9.Size = UDim2.TextLabel2(1, 0, 0, 30)
    Frame9.BackgroundTransparency = 1
    Frame9.Parent = Font4
    local TextButton5 = Instance.TextLabel2("TextButton")
    Font5 = 0
    TextButton5.Size = UDim2.TextLabel2(1, 0, 1, 0)
    TextButton5.BackgroundColor3 = Element311
    TextButton5.BackgroundTransparency = 0.15
    TextButton5.Text = ""
    TextButton5.AutoButtonColor = false
    TextButton5.Parent = Frame9
    local UICorner7 = Instance.TextLabel2("UICorner")
    UICorner7.CornerRadius = UDim.TextLabel2(0, 5)
    UICorner7.Parent = TextButton5
    local UIStroke4 = Instance.TextLabel2("UIStroke")
    UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    Font5 = 100
    UIStroke4.Color = Color3.fromRGB(100, 100, 180)
    UIStroke4.Thickness = 1
    UIStroke4.Transparency = 0.4
    UIStroke4.Parent = TextButton5
    local TextLabel5 = Instance.TextLabel2("TextLabel")
    Font5 = 0.6
    TextLabel5.Size = UDim2.TextLabel2(0.6,-10, 1, 0)
    Font5 = 0
    TextLabel5.Position = UDim2.TextLabel2(0, 8, 0, 0)
    TextLabel5.BackgroundTransparency = 1
    TextLabel5.Text = Request111.Name
    Font5 = Enum.Font
    TextLabel5.Font = Font5.FredokaOne
    TextLabel5.TextSize = 13
    Font5 = 240
    TextLabel5.TextColor3 = Color3.fromRGB(240, 240, 255)
    TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
    Font5 = Enum.TextTruncate
    TextLabel5.TextTruncate = Font5.AtEnd
    TextLabel5.Parent = TextButton5
    Font5 = "TextLabel"
    local TextLabel6 = Instance.TextLabel2("TextLabel")
    TextLabel6.Size = UDim2.TextLabel2(0.4,-56, 1, 0)
    TextLabel6.Position = UDim2.TextLabel2(0.6, 0, 0, 0)
    TextLabel6.BackgroundTransparency = 1
    TextLabel6.Text = "…"
    TextLabel6.Font = Enum.Font.FredokaOne
    TextLabel6.TextSize = 12
    TextLabel6.TextColor3 = Color3.fromRGB(120, 255, 160)
    Font5 = Enum.TextXAlignment.Right
    TextLabel6.TextXAlignment = Font5
    TextLabel6.Parent = TextButton5
    Font5 = Instance.TextLabel2("TextButton")
    Font5.Size = UDim2.TextLabel2(0, 44, 0, 20)
    Font5.Position = UDim2.TextLabel2(1,-50, 0.5,-10)
    Font5.BackgroundColor3 = Color3.fromRGB(180, 70, 70)
    Font5.BackgroundTransparency = 0.1
    Font5.Text = "Block"
    Font5.Font = Enum.Font.SourceSansSemibold
    Font5.TextSize = 11
    Font5.TextColor3 = Color3.fromRGB(255, 255, 255)
    Font5.ZIndex = 2
    Font5.AutoButtonColor = true
    Font5.Parent = TextButton5
    local UICorner8 = Instance.TextLabel2("UICorner")
    UICorner8.CornerRadius = UDim.TextLabel2(0, 4)
    UICorner8.Parent = Font5
    return {
    LocalPlayer = Request111,
    container = Frame9,
    header = TextButton5,
    nameLabel = TextLabel5,
    valLabel = TextLabel6,
    rowBlockBtn = Font5,
    inv = nil,
    total =-1,
    }
end

local function processItems26()
    local function checkCondition(Request112, Request113)
        return Request113.total < Request112.total
    end
    local Element315 = next
    local Element316 = SourceSans
    local Element317, Element318
    Element317, Element318 = next(SourceSans, nil)
    local Element319
    if not (Element317 == nil) then
        Element319 = Element317
        while true do
            Element317, Element318 = Element315(Element316, Element319)
            if Element317 ~= nil then
                Element319 = Element317
                continue
            end
            break
        end
    end
    local Element320 = {}
    Element315, Element316, Element319 = ipairs(Element320)
    Element317, Element318 = Element315(Element316, Element319)
    local Element321
    if not (Element317 == nil) then
        Element319 = Element317
        while true do
            Element318.container.LayoutOrder = Element317
            Element321 = (0 < Element318.total and "#" .. Element317 .. "  " "") .. Element318.LocalPlayer.Name
            Element318.nameLabel.Text = Element321
            Element317, Element318 = Element315(Element316, Element319)
            if Element317 ~= nil then
                Element319 = Element317
                continue
            end
            break
        end
    end
    return Element320, Element315, Element316, Element317, Element317, Element318
end

local Uilistlayout, Element322
local function Label16(Label17)
    Label17.valLabel.Text = "fetching…"
    Label17.valLabel.TextColor3 = Color3.fromRGB(200, 200, 200)

    ("[mm2run] === Fetching %s's inventory ==="):format(Label17.LocalPlayer.Name)
    local Element323, Ok7
    Element323, Ok7 = pcall(Uilistlayout, Label17.LocalPlayer)
    local valLabel, color3, Ok8, Name3, Element324
    if not Element323 then
        tostring(Ok7)
        Label17.inv = nil
        Label17.total =-1
        Label17.priced = {}
        Label17.valLabel.Text = "err"
        valLabel = Label17.valLabel
        color3 = Color3.fromRGB(255, 100, 100)
        valLabel.TextColor3 = color3
        return Label17, Element323, Ok7, valLabel, color3
    else
        Label17.inv = Ok7
        Label17.valLabel.Text = "pricing…"
        Name3 = Label17.LocalPlayer.Name
        valLabel, color3, Ok8 = pcall(Element322, Label17.inv, Name3)
        if not valLabel then
            tostring(color3)
            Label17.valLabel.Text = "err"
            Name3 = Label17.valLabel
            Element324 = Color3.fromRGB(255, 100, 100)
            Name3.TextColor3 = Element324
            Label17.total =-1
            return Label17, Element323, Ok7, valLabel, color3, Ok8,-1, Element324
        else
            Label17.total = color3
            Label17.priced = Ok8
            Label17.valLabel.Text = Element292(color3)
            Name3 = Label17.valLabel
            if 0 < color3 then
                Element324 = Color3.fromRGB(120, 255, 160)
            else
                Element324 = Color3.fromRGB(180, 180, 180)
            end
            Name3.TextColor3 = Element324
            return Label17, Element323, Ok7, valLabel, color3, Ok8, Name3, Element324
        end
    end
end

local UIListLayout2
local function processItems27()
    local Element325
    local function getValue2()
        Element325 = Element325 -1
        if Element325 <= 0 and UIListLayout2 then
            UIListLayout2.Text = "ready"
            UIListLayout2.TextColor3 = Color3.fromRGB(150, 220, 150)
        end
    end
    Element325 = UIListLayout2
    if Element325 then
        Element325 = UIListLayout2
        UIListLayout2.Text = "refreshing players…"
        UIListLayout2.TextColor3 = next(180, 220, 255)
    end
    Element325 = 0
    local Element326 = SourceSans
    local Element327 = next
    local Element328 = next(Element326, nil)
    local Element329
    if not (Element328 == nil) then
        Element329 = Element328
        while true do
            Element325 = Element325 + 1
            Element328 = Element327(Element326, Element329)
            if Element328 ~= nil then
                Element329 = Element328
                continue
            end
            break
        end
    end
    Element327 = next
    Element326 = SourceSans
    local Element330
    Element328, Element330 = next(SourceSans, nil)
    if Element328 == nil then
        return Element325, Element327, Element326, Element328, Element328, Element330
    else
        Element329 = Element328
        while true do
            Element328 = next
            Element330 = Element326
            Element329 = next
            if Element329 == nil then
                break
            end
        end
        return Element325, Element327, Element326, Element329, Element328, Element330
    end
end

local function Job55()
end

local Element331
local function getPlayers2()
    local function Job56()
    end
    local PlayerList = game.Players:GetPlayers()
    local Element332
    x18, Element332 = next(PlayerList, nil)
    local Element333, Element334
    if not (x18 == nil) then
        Element333 = x18
        while true do
            Element334 = Element331(Element332)
            SourceSans[Element332.Name] = Element334
            x18, Element332 = next(PlayerList, Element333)
            if x18 ~= nil then
                Element333 = x18
                continue
            end
            break
        end
    end
    return next, PlayerList, x18, x18, Element332
end

local function Job57()
end

local function Job58()
end

local function Job59()
end

local function Job60(Request114)
    local function Job61(Request115)
        return string.format("%%%02X", string.byte(Request115))
    end
    return tostring(Request114):Element96("([^%w%-_%.~])", Job61)
end

local function processItems28(Request116, Request117, Request118, Request119, Request120, Request121, Request122, Request123, ...)
    local Element335, Err, Element336
    local function runProtected()
        local Element337, Ok9
        Element337, Ok9 = pcall(Request116)
        Element335 = true
        if Element337 then
            Err = "ok"
        else
            Err = "err"
        end
        Element336 = Ok9
    end
    local StartTime5, StartTime6
    while true do
        Element335 = false
        Err = nil
        Element336 = nil
        StartTime5 = tick(Request119, Request120, Request121, Request122, Element337, ...)
        tick(Request122, Element337, ...)
        while true do
            StartTime6 = tick(Request121, Request122, Element337, ...) -StartTime5
        end
    end
end

local HttpService, Httpservice, Element338
local function runProtected9(Request124)
    local function getValue()
        local Element339 = {Url = Request124, Method = "GET"}
        Element339.Headers = {
        Accept = "*/*",
        Referer = "https://mm2.cosmicvalues.gg/calculator",
        ["User-Agent"] = "Mozilla/5.0",
        }
        return Httpservice(Element339)
    end
    local function httpGet()
        return game:HttpGet(Request124)
    end
    local Element340, Element341, Element342, Ok10, Element343, Body
    if Httpservice then
        Element340, Element341 = Element338(getValue, 8)
        if Element340 == "ok" and Element341 and Element341.Body then
            Element343 = HttpService
            Body = Element341.Body
            Element342, Ok10 = pcall(Element343.JSONDecode, Element343, Body)
            return Ok10
        else
            if Element340 == "timeout"
            Element340, Element341 = Element338(httpGet, 8)
        else
            Element340 = Element338
            Element341 = httpGet
            break
        end
        if Element340 ~= "ok"
        return nil
    end
    Element343 = HttpService
    Element342, Ok10 = pcall(Element343.JSONDecode, Element343, Element341)
    if Element342 then
        return Ok10
    else
        return nil
    end
end

else
    Element340 = Element338
    Element341 = httpGet
end

Element340, Element341 = Element340(Element341, 8)
return nil
end

local Element344, Element345
local function computeValue15(Request125, Request126, Request127)
    Request125 = Request125 or 1
    local Element346 = "https://mm2.cosmicvalues.gg/api/v1/values?sortBy=position&limit=" .. tostring(Request126 or 100) .. "&page=" .. tostring(Request125)
    local Element347 = Request127
    if Request127 then
        Element347 = Request127 ~= ""
    end
    if Element347 then
        return Element345(Element346 .. "&search=" .. Element344(Request127))
    else
        return Element345(Element346)
    end
end

local Element348
local function processItems29(Request128)
    local Element349 = 1
    local Element350 = "[mm2run/catalog] fetching page %d (have %d items)"
    local Element351 = 1
    local Element352 = {}
    local Element353 = #Element352
    local __cont1 = false
    local __brk2 = false
    local Element354, Element355, Element356, Element357
    while true do
        Element350 = Element350:format(Element351, Element353)
        while true do
            Element354 = Element348(Element349, 100, nil)
            if not Element354 or not Element354.Items then
                ("[mm2run/catalog] page %d failed, retrying once"):format(Element349)
                Element348(Element349, 100, nil)

                ("[mm2run/catalog] page %d failed twice, returning partial (%d items)")
                    :format(Element349, #Element352)
                return Element352, false
            end
            Element350, Element355, Element351 = ipairs(Element354.Items)
            Element353, Element356 = Element350(Element355, Element351)
            if not (Element353 == nil) then
                Element351 = Element353
                while true do
                    Element357 = tonumber(Element356.value)
                    if Element357 then
                        Element356._numericValue = Element357
                    else
                        Element356._numericValue = 0
                    end
                    Element353, Element356 = Element350(Element355, Element351)
                    if Element353 ~= nil then
                        Element351 = Element353
                        continue
                    end
                    break
                end
            end
            Element351 = Element353
            Element350 = Element354.pagination and Element354.pagination.hasMore
            if Request128 then
                Element351 = #Element352
                Element353 = Element350
                if Element350 then
                    Element349 = Element349 + 1
                    if 100 >= Element349 then
                        Element351 = Element349
                        Element353 = #Element352
                        Element350 = ("[mm2run/catalog] fetching page %d (have %d items)")
                            :format(Element349, Element353)
                        continue
                    end
                    break
                end
                break
            end
            if Element350 then
                Element349 = Element349 + 1
                if 100 >= Element349 then
                    Element350 = "[mm2run/catalog] fetching page %d (have %d items)"
                    Element351 = Element349
                    Element353 = #Element352
                    __cont1 = true
                    break
                end
                __brk2 = true
                break
            end
            __brk2 = true
            break
        end
        if __cont1 then
            __cont1 = false
            continue
        end
        if __brk2 then
            break
        end
        return Element352, true
    end
    return Element352, true
end

local PlayerAdded
local function processItems30()
    PlayerAdded.byName = {}
    local Element358, Element359, Element360, Element361, Element362
    if PlayerAdded.cache then
        Element358, Element359, Element360 = ipairs(PlayerAdded.cache)
        Element361, Element362 = Element358(Element359, Element360)
        if not (Element361 == nil) then
            Element360 = Element361
            while true do
                PlayerAdded.byName[string.lower(tostring(Element362.Name or ""))] = Element362
                Element361, Element362 = Element358(Element359, Element360)
                if Element361 ~= nil then
                    Element360 = Element361
                    continue
                end
                break
            end
        end
        return Element358, Element359, Element361, Element361, Element362
    end
end

local Values, Textlabel3
local function GuiObject18()
    local GuiObject19 = Values.AbsolutePosition.Y
    local GuiObject20 = Textlabel3.AbsolutePosition.Y -GuiObject19
    local GuiObject21 = Values.AbsoluteSize.Y -GuiObject20 -40
    local Element363 = UDim2.TextLabel2(1, 0, 0, math.max(80, GuiObject21))
    Textlabel3.Size = Element363
    return GuiObject20, GuiObject21, Textlabel3, Element363
end

local function processItems31(Request129)
    local Element364, Element365, Children4
    Element364, Element365, Children4 = ipairs(Textlabel3:GetChildren())
    local Element366
    x19, Element366 = Element364(Element365, Children4)
    do
        local shouldExit5 = false
        if not (x19 == nil) then
            Children4 = x19
            while true do
                if Element366:IsA("Frame") then
                    x19, Element366 = Element364(Element365, Children4)
                    if x19 == nil then
                        Children4 = x19
                    else
                        Children4 = x19
                        continue
                    end
                else
                    x19, Element366 = Element364(Element365, Children4)
                    if x19 == nil then
                        break
                    else
                        Children4 = x19
                        continue
                    end
                end
                shouldExit5 = true
                break
            end
            if shouldExit5 then
                break
            end
        end
        Children4 = x19
    end
    Element364 = not Request129
    local Frame10, UICorner9, TextLabel7, TextLabel8, TextLabel9
    if not Element364 then
        Element364, Element365, Children4 = ipairs(Request129)
        x19, Element366 = Element364(Element365, Children4)
        if not (x19 == nil) then
            Children4 = x19
            local Element367 = {}
            while true do
                Frame10 = Instance.TextLabel2("Frame")
                Frame10.Size = UDim2.TextLabel2(1,-6, 0, 40)
                Frame10.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
                Frame10.BackgroundTransparency = 0.2
                Frame10.Parent = Textlabel3
                UICorner9 = Instance.TextLabel2("UICorner")
                UICorner9.CornerRadius = UDim.TextLabel2(0, 4)
                UICorner9.Parent = Frame10
                TextLabel7 = Instance.TextLabel2("TextLabel")
                TextLabel7.Size = UDim2.TextLabel2(0.62,-8, 0, 20)
                TextLabel7.Position = UDim2.TextLabel2(0, 8, 0, 2)
                TextLabel7.BackgroundTransparency = 1
                TextLabel7.Text = tostring(Element366.Name)
                TextLabel7.Font = Enum.Font.SourceSansSemibold
                TextLabel7.TextSize = 13
                TextLabel7.TextColor3 = Color3.fromRGB(240, 240, 255)
                TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
                TextLabel7.TextTruncate = Enum.TextTruncate.AtEnd
                TextLabel7.Parent = Frame10
                if Element366.rarity then
                    tostring(Element366.rarity)
                    tostring(Element366.demand)
                    tostring(Element366.trend)
                end
                TextLabel8 = Instance.TextLabel2("TextLabel")
                TextLabel8.Size = UDim2.TextLabel2(0.62,-8, 0, 16)
                TextLabel8.Position = UDim2.TextLabel2(0, 8, 0, 22)
                TextLabel8.BackgroundTransparency = 1
                TextLabel8.Text = table.concat(Element367, " | ")
                TextLabel8.Font = Enum.Font.SourceSans
                TextLabel8.TextSize = 11
                TextLabel8.TextColor3 = Color3.fromRGB(160, 160, 200)
                TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
                TextLabel8.TextTruncate = Enum.TextTruncate.AtEnd
                TextLabel8.Parent = Frame10
                TextLabel9 = Instance.TextLabel2("TextLabel")
                TextLabel9.Size = UDim2.TextLabel2(0.38,-8, 1, 0)
                TextLabel9.Position = UDim2.TextLabel2(0.62, 0, 0, 0)
                TextLabel9.BackgroundTransparency = 1
                TextLabel9.Text = Element292(Element366.value)
                TextLabel9.Font = Enum.Font.FredokaOne
                TextLabel9.TextSize = 14
                TextLabel9.TextColor3 = Color3.fromRGB(120, 255, 160)
                TextLabel9.TextXAlignment = Enum.TextXAlignment.Right
                TextLabel9.Parent = Frame10
                x19, Element366 = Element364(Element365, Children4)
                if x19 ~= nil then
                    Children4 = x19
                    continue
                end
                break
            end
        end
        Children4 = x19
    end
    return Request129, Element364, Element365, Children4, x19, Element366
end

local function processItems32(Request130)
    local lower5, Element368, Element369, Element370, Element371, Element372, Element373, lower6, lower7, Element374, Element375
    if not PlayerAdded.cache then
        return nil
    else
        lower5 = string.lower(Request130)
        Element368 = {}
        Element369, Element370, Element371 = ipairs(PlayerAdded.cache)
        Element372, Element373 = Element369(Element370, Element371)
        if not (Element372 == nil) then
            Element371 = Element372
            while true do
                Element374 = Element373.Name or ""
                lower6 = string.lower(tostring(Element374))
                Element375 = Element373.rarity or ""
                lower7 = string.lower(tostring(Element375))
                if string.Element104(lower6, lower5, 1, true) or string.Element104(lower7, lower5, 1, true) then
                    Element372, Element373 = Element369(Element370, Element371)
                    if not (Element372 == nil) then
                        Element371 = Element372
                        continue
                    end
                else
                    Element372, Element373 = Element369(Element370, Element371)
                    if Element372 == nil then
                        break
                    else
                        Element371 = Element372
                        continue
                    end
                end
                return Element368
            end
        end
        return Element368
    end
end

local Uilistlayout2
local function processItems33(Request131)
    local Element376 = Uilistlayout2(Request131)
    local Element377, Element378, Element379
    if not Element376 then
        return 0, 0
    else
        Element377 = #Element376
        Element378 = Element376
        if 250 < Element377 then
            Element378 = {}
            Element379 = 1
            while true do
                Element378[Element379] = Element376[Element379]
                Element379 = Element379 + 1
                if Element379 + 1 > 250 then
                    break
                end
            end
        end
        return #Element378, Element377
    end
end

local TextLabel10, FillDirection3
local function Job62(Request132)
    local Element380, Element381, Element382, Element383
    if not PlayerAdded.cache then
        return
    else
        Element380, Element381 = FillDirection3(Request132)
        if Element381 == 0 then
            Element382 = TextLabel10
            TextLabel10.Text = "No matches in " .. #PlayerAdded.cache .. " items"
            Element383 = Color3.fromRGB(255, 150, 100)
            Element382.TextColor3 = Element383
        elseif Element380 < Element381 then
            Element382 = TextLabel10
            TextLabel10.Text = "Showing " .. Element380 .. " of " .. Element381 .. " matches (type more to narrow)"
            Element383 = Color3.fromRGB(180, 220, 255)
            Element382.TextColor3 = Element383
        else
            TextLabel10.Text = Element381 .. " match" .. (Element381 == 1 and "" "es") .. " (catalog: " .. #PlayerAdded.cache .. ")"
            Element382 = TextLabel10
            Element383 = Color3.fromRGB(120, 255, 160)
            Element382.TextColor3 = Element383
        end
        return Request132, Element380, Element381, Element382, Element383
    end
end

local Element384
local function Job63(Request133)
    local function computeValue4(Request134, Request135, Request136, Request137, Request138, Request139, ...)
        local function computeValue3(Request140, Request141)
            local Element385 = Request141
            if Request141 then
                Element385 = "... (more pages)"
            end
            if not Element385 then
                Element385 = " -- finalizing"
            end
            local format = ("Loaded %d items%s"):format(Request140, Element385)
            TextLabel10.Text = format
            return Request140, Request141, TextLabel10, format
        end
        TextLabel10.Text = "Fetching catalog..."
        TextLabel10.TextColor3 = Color3.fromRGB(255, 220, 100)
        local Element386, Element387
        Element386, Element387 = Element384(computeValue3)
        PlayerAdded.fetching = false
        local Element388 = Element386
        if Element386 then
            Element388 = 0 < #Element386
        end
        local Element389
        if Element388 then
            PlayerAdded.cache = Element386
            PlayerAdded.fetchedAt = tick(Request138, Request140, ...)
        else
            TextLabel10.Text = "API request failed -- executor blocked http? (see console)"
            TextLabel10.TextColor3 = Color3.fromRGB(255, 100, 100)
            Element389 = "[mm2run] cosmic values API returned nothing. httpRequest=" .. tostring(Httpservice ~= nil)
        end
    end
    local Element390, color5
    if PlayerAdded.fetching then
        Element390 = TextLabel10
        TextLabel10.Text = "already fetching... (be patient)"
        color5 = Color3.fromRGB(255, 220, 100)
        Element390.TextColor3 = color5
        return Request133, Element390, color5
    else
        PlayerAdded.fetching = true
        return Request133
    end
end

local function Job64()
end

local function Job65()
end

local function Job66()
end

local function action()
    local Element391
    if #FredokaOne ~= 0 then
        Element391 = FredokaOne
        return Element391[math.random(1, #Element391)]
    end
end

local function action2()
    local Element392 = next(Element8.Player1.Offer)
    local Element393 = not Element392
    if Element393 then
        Element392 = next(Element8.Player2.Offer)
        Element393 = not Element392
    end
    if Element393 then
        return Element393, Element392
    end
    PlayerGui.Accepted.Visible = true
    Element8.Player2.Accepted = true
end

local function action3()
    local Random7
    local function Label18()
        PlayerGui.Username.Text = "(" .. Random7 .. ")"
    end
    local Element394 = Element180
    Random7 = Element394[math.random(1, #Element394)]
    Element8.Player2.Player = Random7
    FillDirection.Text = Random7
    return Random7
end

local function action5()
    local function Instance17()
        return game.Players:FindFirstChild(Element8.Player2.Player)
    end
end

local function action6()
    local Element395
    local function updateState4()
        local Username = PlayerGui
        if PlayerGui then
            Username = PlayerGui.Username
        end
        if Username then
            Username = PlayerGui.Username.Text
        end
        local Text6
        if Username then
            Text6 = PlayerGui.Username.Text
            Username = string.Element96(Text6, "[%(%)]", "")
            Username = string.Element96(Username, "^%s+", "")
            Username = string.Element96(Username, "%s+$", "")
            if Username ~= "" and Username ~= "m0_3a"
            Element395 = Username
        end
    end
end

local function updateState5()
    local Player
    if Element8 and Element8.Player2 and Element8.Player2.Player then
        Player = Element8.Player2.Player
        if Player and Player ~= "" and Player ~= "m0_3a"
        Element395 = Player
    end
end

end

local function Label19()
    PlayerGui.Username.Text = "(" .. Element395 .. ")"
end

Element395 = nil
return nil
end

local ScreenGui2
local function action7()
    local Instance18
    if ScreenGui2 then
        ScreenGui2.Enabled = not ScreenGui2.Enabled
        Instance18 = "[mm2run/keybind] GUI visibility toggled: " .. tostring(ScreenGui2.Enabled)
    end
end

local TextButton6, Connect
local function findChild8(Request142)
    local Row = TextButton6
    local KeyLabel
    if TextButton6 then
        Row = TextButton6:FindFirstChild(Request142 .. "Row")
        if not Row then
            return Request142, Row
        else
            KeyLabel = Row:FindFirstChild("KeyLabel")
        end
    elseif not Row then
        return
    else
        KeyLabel = Row:FindFirstChild("KeyLabel")
    end
    local ChangeButton
    if KeyLabel then
        ChangeButton = Connect[Request142]
        KeyLabel.Text = ChangeButton and ChangeButton.key and ChangeButton.key.Name or "None"
    end
    ChangeButton = Row:FindFirstChild("ChangeButton")
    local Label20
    if ChangeButton then
        ChangeButton.Text = "Change"
        Label20 = Color3.fromRGB(100, 50, 150)
        ChangeButton.BackgroundColor3 = Label20
        return Request142, Row, KeyLabel, ChangeButton, Label20
    else
        return Request142, Row, KeyLabel, ChangeButton
    end
end

local Element396
local function createFrame(parent5, Request143, Request144)
    local Font6
    local function updateState3()
        if not Element396 then
            Element396 = Request143
            Font6.Text = "Press any key..."
            Font6.BackgroundColor3 = Color3.fromRGB(200, 100, 50)
            return
        end
    end
    local Frame11 = Instance.TextLabel2("Frame")
    Frame11.Name = Request143 .. "Row"
    Font6 = 35
    Frame11.Size = UDim2.TextLabel2(1,-10, 0, 35)
    Frame11.BackgroundTransparency = 1
    Frame11.Parent = parent5
    local UIListLayout3 = Instance.TextLabel2("UIListLayout")
    UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout3.Padding = UDim.TextLabel2(0, 8)
    UIListLayout3.Parent = Frame11
    local TextLabel11 = Instance.TextLabel2("TextLabel")
    Font6 = 0
    TextLabel11.Size = UDim2.TextLabel2(0.45, 0, 1, 0)
    TextLabel11.BackgroundTransparency = 1
    TextLabel11.Text = Request144.label
    TextLabel11.Font = Enum.Font.FredokaOne
    TextLabel11.TextSize = 14
    Font6 = 240
    TextLabel11.TextColor3 = Color3.fromRGB(240, 240, 255)
    Font6 = Enum
    TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel11.Parent = Frame11
    local TextLabel12 = Instance.TextLabel2("TextLabel")
    TextLabel12.Name = "KeyLabel"
    Font6 = 0.25
    TextLabel12.Size = UDim2.TextLabel2(0.25, 0, 1, 0)
    Font6 = 40
    TextLabel12.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    TextLabel12.BackgroundTransparency = 0.2
    local Name4 = Request144.Name4
    if Name4 then
        Font6 = Request144.Name4
        Name4 = Font6.Name
    end
    if not Name4 then
        Name4 = "None"
    end
    TextLabel12.Text = Name4
    Font6 = Enum.Font
    TextLabel12.Font = Font6.FredokaOne
    TextLabel12.TextSize = 14
    Font6 = 255
    TextLabel12.TextColor3 = Color3.fromRGB(255, 255, 100)
    Font6 = Enum.TextXAlignment
    TextLabel12.TextXAlignment = Font6.Center
    TextLabel12.Parent = Frame11
    Font6 = "UICorner"
    Name4 = Instance.TextLabel2("UICorner")
    Font6 = UDim.TextLabel2(0, 5)
    Name4.CornerRadius = Font6
    Name4.Parent = TextLabel12
    Font6 = Instance.TextLabel2("TextButton")
    Font6.Name = "ChangeButton"
    Font6.Size = UDim2.TextLabel2(0.3, 0, 1, 0)
    Font6.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
    Font6.BackgroundTransparency = 0.2
    Font6.Text = "Change"
    Font6.Font = Enum.Font.FredokaOne
    Font6.TextSize = 12
    Font6.TextColor3 = Color3.fromRGB(255, 255, 255)
    Font6.Parent = Frame11
    local UICorner10 = Instance.TextLabel2("UICorner")
    UICorner10.CornerRadius = UDim.TextLabel2(0, 5)
    UICorner10.Parent = Font6
    return Frame11
end

local function processItems34(Request145, Request146)
    local KeyCode, Keyboard, Element397, Element398, Element399, Input11
    if not Request146 then
        Keyboard = Enum.UserInputType.Keyboard
        if Request145.UserInputType ~= Keyboard then
            return
        else
            KeyCode = Request145.KeyCode
            if KeyCode then
                Element397 = Connect
                Element399, Input11 = next(Connect, nil)
                if not (Element399 == nil) then
                    Element398 = Element399
                    while true do
                        if Input11.Name4 ~= KeyCode then
                            Element399, Input11 = next(Element397, Element398)
                            if Element399 ~= nil then
                                Element398 = Element399
                                continue
                            end
                            break
                        end
                        return
                    end
                end
                return
            end
        end
    end
end

local function addScreenGui()
    local Parent
    local function computeValue(Request147, Request148, Request149, Request150, ...)
        local Element400 = syn
        if syn then
            Element400 = syn.protect_gui
        end
        if Element400 then
            Parent.Parent = gethui(Request149, Request150, ...)
        else
            Parent.Parent = CoreGui
        end
    end
    local function Instance19()
        Parent.Parent = CoreGui
    end
    local function performTask()
    end
    local function Instance20()
        Parent.Enabled = false
    end
    local function computeValue2(Request151, Request152)
        local Element401, Position, Position2
        local function transformValue(Request153)
            local function updateState()
                local End = Enum.UserInputState.End
                if Request153.UserInputState == End then
                    Element401 = false
                end
            end
            local MouseButton14 = Enum.UserInputType.MouseButton1
            local Input12 = Request153.UserInputType == MouseButton14
            if not Input12 then
                MouseButton14 = Enum.UserInputType.Touch
                Input12 = Request153.UserInputType == MouseButton14
            end
            if Input12 then
                Element401 = true
                Position = Request153.Position
                Position2 = Request152.Position
            end
        end
        local function Input13(Instance21)
            local MouseMovement = Enum.UserInputType.MouseMovement
            local Input14 = Instance21.UserInputType == MouseMovement
            if not Input14 then
                MouseMovement = Enum.UserInputType.Touch
                Input14 = Instance21.UserInputType == MouseMovement
            end
            if Input14 then
                Input14 = Element401
            end
            local Element402, Element403, Scale3, Part5
            if Input14 then
                Input14 = Instance21.Position -Position
                MouseMovement = Position2.X.Scale
                Part5 = Input14.X
                Element403 = Position2.X.Offset + Part5
                Scale3 = Position2.Y.Scale
                Part5 = Position2.Y.Offset + Input14.Y
                Element402 = UDim2.TextLabel2(MouseMovement, Element403, Scale3, Part5)
                MouseMovement = TweenService:Create(Request152, TweenInfo.TextLabel2(0.1), {Position = Element402}).Play
            end
        end
        Element401 = nil
        Position = nil
        Position2 = nil
        return Request151, Request152, nil, nil, nil
    end
    Parent = LocalPlayer2.gui and LocalPlayer2.gui.Parent
    local Element404, mainFrame, wheel, endPoints, Element405, Element406, Element407, Element408, Element409, Element410, Element411, Element412, Element413, Element414
    if Parent then
        Parent = LocalPlayer2.gui
        Parent.Enabled = true
        return
    else
        Parent = Instance.TextLabel2("ScreenGui")
        Parent.Name = "WheelOfFortune"
        Parent.ResetOnSpawn = false
        if not Parent.Parent then
            Parent.Parent = playerGui
        end
        Element404 = LocalPlayer2.size or 1
        mainFrame = Instance.TextLabel2("Frame", Parent)
        mainFrame.Name = "MainFrame"
        mainFrame.BackgroundTransparency = 1
        mainFrame.Size = UDim2.TextLabel2(0, math.floor(522 * Element404), 0, math.floor(640 * Element404))
        mainFrame.Position = UDim2.TextLabel2(0.38, 0, 0.1, 0)
        mainFrame.Active = true
        mainFrame.BorderSizePixel = 0
        LocalPlayer2.mainFrame = mainFrame
        wheel = Instance.TextLabel2("ImageLabel", mainFrame)
        wheel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        wheel.Image = "rbxassetid://116734510845822"
        wheel.Size = UDim2.TextLabel2(0, math.floor(493 * Element404), 0, math.floor(524 * Element404))
        wheel.BackgroundTransparency = 1
        wheel.Name = "Wheel"
        wheel.AnchorPoint = Vector2.TextLabel2(0.5, 0.5)
        wheel.Position = UDim2.TextLabel2(0.5, 0, 0.5, 0)
        wheel.BorderSizePixel = 0
        LocalPlayer2.image = wheel
        endPoints = Instance.TextLabel2("Folder", wheel)
        endPoints.Name = "EndPoints"
        Element406 = {}
        local Element415 = {}
        Element408 = Element415
        Element415.Name = "Win"
        Element415.pos = UDim2.TextLabel2(0.15416, 0, 0.46947, 0)
        Element408.rot =-16
        local Element416 = {}
        Element409 = Element416
        Element416.Name = "Lose"
        Element416.pos = UDim2.TextLabel2(0.39757, 0, 0.66031, 0)
        Element409.rot =-1
        local Element417 = {}
        Element410 = Element417
        Element417.Name = "Win"
        Element417.pos = UDim2.TextLabel2(0.66937, 0, 0.46947, 0)
        Element410.rot = 12
        local Element418 = {}
        Element411 = Element418
        Element418.Name = "Lose"
        Element418.pos = UDim2.TextLabel2(0.57201, 0, 0.20802, 0)
        Element411.rot = 44
        local Element419 = {}
        Element412 = Element419
        Element419.Name = "Win"
        Element419.pos = UDim2.TextLabel2(0.26572, 0, 0.18702, 0)
        Element412.rot =-28
        Element406[1] = Element408
        Element406[2] = Element409
        Element406[3] = Element410
        Element406[4] = Element411
        Element406[5] = Element412
        Element405 = Element406
        Element406, Element407, Element408 = ipairs(Element406)
        Element409, Element410 = Element406(Element407, Element408)
        if not (Element409 == nil) then
            Element408 = Element409
            while true do
                Element411 = Instance.TextLabel2("Frame", endPoints)
                Element411.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Element411.Size = UDim2.TextLabel2(0, 100, 0, 100)
                Element411.Position = Element410.pos
                Element411.Name = Element410.Name
                Element411.Rotation = Element410.rot
                Element411.BackgroundTransparency = 1
                Element411.BorderSizePixel = 0
                Element409, Element410 = Element406(Element407, Element408)
                if Element409 ~= nil then
                    Element408 = Element409
                    continue
                end
                break
            end
        end
        Element406 = Instance.TextLabel2("Folder", wheel)
        Element406.Name = "Labels"
        Element408 = {}
        local Element420 = {}
        Element410 = Element420
        Element420.Request71 = "LOSER"
        Element420.color = Color3.fromRGB(255, 0, 0)
        Element410.rot = 179
        Element410.pos = UDim2.TextLabel2(0.32099, 0, 0.70698, 0)
        Element410.size = UDim2.TextLabel2(0, math.floor(174 * Element404), 0, math.floor(50 * Element404))
        local Element421 = {}
        Element411 = Element421
        Element421.Request71 = "LOSER"
        Element421.color = Color3.fromRGB(255, 0, 0)
        Element411.rot = 42
        Element411.pos = UDim2.TextLabel2(0.51774, 0, 0.2337, 0)
        Element411.size = UDim2.TextLabel2(0, math.floor(174 * Element404), 0, math.floor(50 * Element404))
        local Element422 = {}
        Element412 = Element422
        Element422.Request71 = "WIN"
        Element422.color = Color3.fromRGB(125, 255, 17)
        Element412.rot = 103
        Element412.pos = UDim2.TextLabel2(0.57404, 0, 0.51718, 0)
        Element412.size = UDim2.TextLabel2(0, math.floor(200 * Element404), 0, math.floor(50 * Element404))
        local Element423 = {}
        Element413 = Element423
        Element423.Request71 = "WIN"
        Element423.color = Color3.fromRGB(125, 255, 17)
        Element413.rot =-106
        Element413.pos = UDim2.TextLabel2(0.05274, 0, 0.51718, 0)
        Element413.size = UDim2.TextLabel2(0, math.floor(200 * Element404), 0, math.floor(50 * Element404))
        local Element424 = {}
        Element414 = Element424
        Element424.Request71 = "WIN"
        Element424.color = Color3.fromRGB(125, 255, 17)
        Element414.rot =-26
        Element414.pos = UDim2.TextLabel2(0.1643, 0, 0.23473, 0)
        Element414.size = UDim2.TextLabel2(0, math.floor(200 * Element404), 0, math.floor(50 * Element404))
        Element408[1] = Element410
        Element408[2] = Element411
        Element408[3] = Element412
        Element408[4] = Element413
        Element408[5] = Element414
        Element407 = Element408
        Element408, Element409, Element410 = ipairs(Element408)
        Element411, Element412 = Element408(Element409, Element410)
        if not (Element411 == nil) then
            Element410 = Element411
            while true do
                Element413 = Instance.TextLabel2("TextLabel", Element406)
                Element413.TextWrapped = true
                Element413.TextScaled = true
                Element413.Font = Enum.Font.FredokaOne
                Element413.TextColor3 = Element412.color
                Element413.BackgroundTransparency = 1
                Element413.Size = Element412.size
                Element413.Text = Element412.Request71
                Element413.Rotation = Element412.rot
                Element413.Position = Element412.pos
                Element414 = Instance.TextLabel2("UIStroke", Element413)
                Element414.Color = Color3.fromRGB(0, 0, 0)
                Element414.Thickness = math.max(1, math.floor(2 * Element404))
                Element414.Transparency = 0.5
                Element411, Element412 = Element408(Element409, Element410)
                if Element411 ~= nil then
                    Element410 = Element411
                    continue
                end
                break
            end
        end
        Element408 = Instance.TextLabel2("ImageLabel", mainFrame)
        Element408.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Element408.Image = "rbxassetid://123105178012520"
        Element408.Size = UDim2.TextLabel2(0, math.floor(69 * Element404), 0, math.floor(68 * Element404))
        Element408.BackgroundTransparency = 1
        Element408.Name = "Pointer"
        Element408.Position = UDim2.TextLabel2(0.5, 0, 0.09, 0)
        Element408.AnchorPoint = Vector2.TextLabel2(0.5, 0)
        Element408.Rotation = 0
        Element408.ZIndex = 10
        Element408.BorderSizePixel = 0
        LocalPlayer2.pointer = Element408
        LocalPlayer2.pointerBaseRot = 0
        Element409 = Instance.TextLabel2("TextButton", mainFrame)
        Element409.Size = UDim2.TextLabel2(0, math.floor(120 * Element404), 0, math.floor(50 * Element404))
        Element409.Position = UDim2.TextLabel2(0.5,-math.floor(60 * Element404), 0.5,-math.floor(25 * Element404))
        Element409.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
        Element409.BackgroundTransparency = 0.2
        Element409.Text = "SPIN"
        Element409.TextColor3 = Color3.fromRGB(255, 255, 255)
        Element409.TextScaled = true
        Element409.Font = Enum.Font.FredokaOne
        Element409.ZIndex = 20
        Element410 = Instance.TextLabel2("UICorner", Element409)
        Element410.CornerRadius = UDim.TextLabel2(0, math.floor(12 * Element404))
        Element411 = Instance.TextLabel2("UIStroke", Element409)
        Element411.Color = Color3.fromRGB(255, 200, 0)
        Element411.Thickness = math.max(1, math.floor(2 * Element404))
        Element411.Transparency = 0.3
        LocalPlayer2.spinBtn = Element409
        Element412 = Instance.TextLabel2("ImageButton", mainFrame)
        Element412.BackgroundTransparency = 1
        Element412.Size = UDim2.TextLabel2(0, math.floor(40 * Element404), 0, math.floor(40 * Element404))
        Element412.Position = UDim2.TextLabel2(1,-math.floor(45 * Element404), 0, math.floor(5 * Element404))
        Element412.Image = "rbxassetid://4068954860"
        Element412.ZIndex = 30
        LocalPlayer2.gui = Parent
        return Parent, Element404, mainFrame, wheel, endPoints, Element405, Element406, Element407, Element408, Element409, Element410, Element411, Element412, computeValue2
    end
end

Element64 = false
Element184 = 5
Element65 = false
Element105 = nil
Element292 = processItems8
ItemModule = game
local replicatedStorage
ProfileData = game.ReplicatedStorage.Modules.ProfileData
Container = require(ProfileData)
local Element425 = ItemModule
ItemModule = ItemModule.ReplicatedStorage
ProfileData = require(ItemModule.Modules.InventoryModule)
ItemPopupService = Element425
Element425 = Element425.ReplicatedStorage
ItemModule = Element425.Modules.ItemModule
replicatedStorage = require(ItemModule)
TradeGUI = ItemPopupService
ItemPopupService = ItemPopupService.ReplicatedStorage
ItemModule = require(ItemPopupService.Database.Sync)
PlayerGui = TradeGUI
TradeGUI = TradeGUI.ReplicatedStorage
ItemPopupService = TradeGUI.ClientServices.ItemPopupService
Element425 = require(ItemPopupService)
TradeGUI = PlayerGui.ReplicatedStorage
ItemPopupService = TradeGUI.Trade
Element44 = PlayerGui
Element87 = PlayerGui.Players
LocalPlayer3 = Element87.LocalPlayer
PlayerGui = LocalPlayer3.PlayerGui
TradeGUI = PlayerGui.TradeGUI
PlayerGui = TradeGUI.Container.Trade.TheirOffer
LocalPlayer3 = TradeGUI.Container.Trade.YourOffer
Element87 = nil
Element44 = nil
local Element426 = {}
Element68 = {item = "", in_trade = false, Player = nil}
Element260 = {}
local Element427 = {}
local Element428 = Element427
local Element429 = {}
local Element430 = Element429
local Element431 = {}
local Element432 = Element431
Ref = true
local Element433 = {Godly = true,
    Ancient = true,
    Unique = true,
    Chroma = true,
    Legendary = true,
    Classic = true}
local Element434 = Element433
Item2 = ItemModule.Weapons or ItemModule.Item
local Element435
Ref, Element, Element435 = pairs(Item2)
Ref = Ref
Element = Element
local Element436
Element8, Element436 = Ref(Element, Element435)
local Rarity2, Element437, Table, Element438, Element439
do
    local Flag2 = false
    if not (Element8 == nil) then
        Element435 = Element8
        local Element440 = {}
        while true do
            Element437 = type(Element436)
            Table = "table"
            Rarity2 = Element437 == "table"
            if Rarity2 then
                Rarity2 = Element436.Rarity
                Element437 = Element436.Chroma == true
                Table = Element437 and "Chroma" or Rarity2
                Element438 = Element440
                Element440.Name4 = Element8
                Element438.Name = Element436.ItemName or Element8
                Element438.rarity = Table
                Element438.type = Element436.ItemType
                Element438.chroma = Element437
                Players = Element438
                Element428[Element8] = Players
                Element439 = Players.Name
                Element430[string.lower(Element439)] = Players
                Element438 = Element434[Table]
                if Element438 then
                    Element438 = table.insert
                    Element439 = Element432
                end
                Element8, Element436 = Ref(Element, Element435)
                if Element8 == nil then
                    Element435 = Element8
                else
                    Element435 = Element8
                    continue
                end
            else
                Element8, Element436 = Ref(Element, Element435)
                if Element8 == nil then
                    break
                else
                    Element435 = Element8
                    continue
                end
            end
            Flag2 = true
            break
        end
        if Flag2 then
            break
        end
    end
end

Item2 = processItems9
Ref = computeValue6
Element = {}
Element435 = processItems10
Element436 = {}
Element436.LastOffer = os.time(Content)
Element436.Locked = false
Players = game.Players
local Element441 = {Player = Players.LocalPlayer, Accepted = false}
Element441.Offer = {}
Element436.Player1 = Element441
local Element442 = {Player = "Woloko", Accepted = false}
Element442.Offer = {}
Element436.Player2 = Element442
Element8 = Element436
Element436 = computeValue7
Rarity2 = computeValue8
Element437 = computeValue9
Table = updateState28
Players = false
Element438 = processItems11
Element439 = runProtected4
Element182 = checkCondition4
local Element443 = computeValue11
local Element444 = runProtected5
Element42 = 6
Element66 = processItems12
local Element445 = Resolver
Accept = "Accept"
Element426.UpdateTrade = UpdateTradeHandler
DeclineTrade = computeValue12
Element70 = 0
Element71 = {}
SetupConnections = Task
UnConnections = Job4
StartTrade = updateState29
Element106 = Job8
OnClientEvent = ItemPopupService.StartTrade.OnClientEvent
FakePlayers = OnClientEvent
OnClientEvent = OnClientEvent.Connect
OnClientEvent = _G
Element234 = _G
FakePlayers = _G.FakePlayers
if not FakePlayers then
    local Element446 = {}
    Element234 = Element446
    FakePlayers = Element446
end

OnClientEvent.FakePlayers = FakePlayers
OnClientEvent = _G
Element234 = _G
FakePlayers = _G.KnifePosition or "Back"
OnClientEvent.KnifePosition = FakePlayers
OnClientEvent = _G
Element234 = _G
FakePlayers = _G.FakeWeaponsData
if not FakePlayers then
    local Element447 = {}
    Element234 = Element447
    FakePlayers = Element447
end

OnClientEvent.FakeWeaponsData = FakePlayers
OnClientEvent = _G
Element234 = _G
FakePlayers = _G.FakeAnimationPack or "Ninja"
OnClientEvent.FakeAnimationPack = FakePlayers
local Element448 = {}
FakePlayers = Element448
Element448.Ninja = {
Run = "rbxassetid://656118852",
Walk = "rbxassetid://656121766",
Jump = "rbxassetid://656117878",
Idle1 = "rbxassetid://656117400",
Idle2 = "rbxassetid://656118341",
Fall = "rbxassetid://656115606",
Swim = "rbxassetid://656119721",
SwimIdle = "rbxassetid://656121397",
Climb = "rbxassetid://656114359",
}
FakePlayers.Zombie = {
Run = "rbxassetid://616163682",
Walk = "rbxassetid://616168032",
Jump = "rbxassetid://616161997",
Idle1 = "rbxassetid://616158929",
Idle2 = "rbxassetid://616160636",
Fall = "rbxassetid://616157476",
Swim = "rbxassetid://616165109",
SwimIdle = "rbxassetid://616166655",
Climb = "rbxassetid://616156119",
}
FakePlayers.Robot = {
Run = "rbxassetid://616091570",
Walk = "rbxassetid://616095330",
Jump = "rbxassetid://616090535",
Idle1 = "rbxassetid://616088211",
Idle2 = "rbxassetid://616089559",
Fall = "rbxassetid://616087089",
Swim = "rbxassetid://616092998",
SwimIdle = "rbxassetid://616094091",
Climb = "rbxassetid://616086039",
}
FakePlayers.Stylish = {
Run = "rbxassetid://616140816",
Walk = "rbxassetid://616146177",
Jump = "rbxassetid://616139451",
Idle1 = "rbxassetid://616136790",
Idle2 = "rbxassetid://616138447",
Fall = "rbxassetid://616134815",
Swim = "rbxassetid://616143378",
SwimIdle = "rbxassetid://616144772",
Climb = "rbxassetid://616133594",
}
FakePlayers.Superhero = {
Run = "rbxassetid://616117076",
Walk = "rbxassetid://616122287",
Jump = "rbxassetid://616115533",
Idle1 = "rbxassetid://616111295",
Idle2 = "rbxassetid://616113536",
Fall = "rbxassetid://616108001",
Swim = "rbxassetid://616119360",
SwimIdle = "rbxassetid://616120861",
Climb = "rbxassetid://616104706",
}
local Element449 = {
Run = "rbxassetid://782842708",
Walk = "rbxassetid://782843345",
Jump = "rbxassetid://782847020",
Idle1 = "rbxassetid://782841498",
Idle2 = "rbxassetid://782845736",
Fall = "rbxassetid://782846423",
Swim = "rbxassetid://782844582",
SwimIdle = "rbxassetid://782845186",
Climb = "rbxassetid://782843869",
}
FakePlayers.Toy = Element449
OnClientEvent = FakePlayers
FakePlayers = {
[1] = "Ninja",
[2] = "Zombie",
[3] = "Robot",
[4] = "Stylish",
[5] = "Superhero",
[6] = "Toy",
}
Element234 = processItems15
local Element450 = checkCondition5
local Element451
Element138 = 0.6536399722099304
Element149 =-0.08719015121459961
local Element452
local Element453
local Element454
ScreenGui2 = 0.7071099877357483
Screengui = 0.7071036696434021
Element129 = CFrame.TextLabel2(-0.0960245355963707,-0.21715548634529114, 0.6536399722099304,-0.08719015121459961,-0.7044113874435425, 0.7044164538383484,-0.000010371208917969, 0.7071099877357483, 0.7071036696434021,-0.9961917400360107, 0.06164516136050224,-0.06166033074259758)
Element138 =-0.60116046667099
Element149 = 0.2513999938964844
ScreenGui2 = 0.013628499582409859
Screengui =-0.5091102123260498
local Element455 = CFrame.TextLabel2(-1.0436896085739136,-0.60116046667099, 0.2513999938964844,-0.9989950656890869, 0.029819829389452934, 0.0334610790014267, 0.013628499582409859,-0.5091102123260498, 0.8605934977531433, 0.042698122560977936, 0.8601846694946289, 0.5081921815872192)
Element451 = checkCondition6
Element138 = processItems17
Element149 = runProtected6
UpdateAllKnives = updateState30
Element452 = updateState31
Element453 = processItems18
Element454 = findChild5
Screengui = "ScreenGui"
ScreenGui2 = Instance.TextLabel2("ScreenGui")
ScreenGui2.ResetOnSpawn = false
ScreenGui2.DisplayOrder = 999999999
ScreenGui2.Enabled = true
ScreenGui2.Parent = game:GetService("CoreGui")
Screengui = Instance.TextLabel2("Frame")
Screengui.Size = UDim2.TextLabel2(0, 240, 0, 420)
Screengui.Position = UDim2.TextLabel2(0, 10, 0.5,-210)
Screengui.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
Screengui.BorderSizePixel = 0
Screengui.ZIndex = 1
Screengui.ClipsDescendants = true
Screengui.Parent = ScreenGui2
local UICorner11 = Instance.TextLabel2("UICorner")
UICorner11.CornerRadius = UDim.TextLabel2(0, 8)
UICorner11.Parent = Screengui
local UIStroke5 = Instance.TextLabel2("UIStroke")
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Font2 = 255
UIStroke5.Color = Color3.fromRGB(100, 100, 255)
UIStroke5.Thickness = 2.5
UIStroke5.Parent = Screengui
local TextLabel13 = Instance.TextLabel2("TextLabel")
Font2 = 0
TextLabel13.Size = UDim2.TextLabel2(1, 0, 0, 20)
Font2 = 0
TextLabel13.Position = UDim2.TextLabel2(0, 0, 0, 2)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Text = "MY SCRIPT IS FULL FREE ON TT"
TextLabel13.Font = Enum.Font.FredokaOne
TextLabel13.TextSize = 11
Font2 = 255
TextLabel13.TextColor3 = Color3.fromRGB(255, 255, 100)
TextLabel13.Parent = Screengui
local TextLabel14 = Instance.TextLabel2("TextLabel")
Font2 = 1
TextLabel14.Size = UDim2.TextLabel2(1, 0, 0, 25)
Font2 = 0
TextLabel14.Position = UDim2.TextLabel2(0, 0, 0, 22)
TextLabel14.BackgroundTransparency = 1
TextLabel14.Text = "Woloko_scripts on tt"
Font2 = Enum.Font
TextLabel14.Font = Font2.FredokaOne
TextLabel14.TextSize = 16
Font2 = 240
TextLabel14.TextColor3 = Color3.fromRGB(240, 240, 255)
TextLabel14.Parent = Screengui
Font2 = "UIStroke"
local UIStroke6 = Instance.TextLabel2("UIStroke")
UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
UIStroke6.Color = Color3.TextLabel2(0, 0, 0)
Font2 = 1
UIStroke6.Thickness = 1
UIStroke6.Parent = TextLabel14
local Element456 = {mode = nil, corner = nil, startInput = nil, startPos = nil, startSize = nil}
Control = 220
Element456.Result = Vector2.TextLabel2(200, 220)
Font2 = Element456
local Element457 = {}
Control = Element457
Element457.Name4 = "tl"
Element457.Request71 = "◤"
Element162 = 0
TextButton = 0
Control.pos = UDim2.TextLabel2(0, 0, 0, 0)
Element162 = 0
TextButton = 0
Control.anchor = Vector2.TextLabel2(0, 0)
Control.rx =-1
Control.ry =-1
Control.mx = 1
Control.my = 1
local Element458 = Control
local Element459 = {}
Element161 = Element459
Element459.Name4 = "tr"
Element459.Request71 = "◥"
TextButton = 1
Items2 = 0
Element161.pos = UDim2.TextLabel2(1, 0, 0, 0)
TextButton = 1
Element161.anchor = Vector2.TextLabel2(1, 0)
Element161.rx = 1
Element161.ry =-1
Element161.mx = 0
Element161.my = 1
Control = Element161
local Element460 = {}
Element162 = Element460
Element460.Name4 = "bl"
Element460.Request71 = "◣"
Items2 = 1
Spawner = 0
Element162.pos = UDim2.TextLabel2(0, 0, 1, 0)
Element162.anchor = Vector2.TextLabel2(0, 1)
Element162.rx =-1
Element162.ry = 1
Element162.mx = 1
Element162.my = 0
Element161 = Element162
local Element461 = {}
TextButton = Element461
Element461.Name4 = "br"
Element461.Request71 = "◢"
Items2 = 0
Spawner = 1
Values = 0
Element461.pos = UDim2.TextLabel2(1, 0, 1, 0)
Items2 = 1
TextButton.anchor = Vector2.TextLabel2(1, 1)
TextButton.rx = 1
TextButton.ry = 1
TextButton.mx = 0
TextButton.my = 0
Element162 = TextButton
local Element462 = {[1] = Element458, [2] = Control, [3] = Element161, [4] = TextButton}
TextLabel14.Active = true
local Frame12
Frame12, Element458, Control = ipairs(Element462)
Control = Control
Element161, Element162 = Frame12(Element458, Control)
if not (Element161 == nil) then
    Control = Element161
    while true do
        TextButton = Instance.TextLabel2("TextButton")
        Values = 16
        TextButton.Size = UDim2.TextLabel2(0, 16, 0, 16)
        TextButton.Position = Element162.pos
        TextButton.AnchorPoint = Element162.anchor
        TextButton.BackgroundTransparency = 1
        TextButton.Text = Element162.Request71
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.TextSize = 16
        Spawner = 230
        TextButton.TextColor3 = Color3.fromRGB(180, 180, 230)
        TextButton.AutoButtonColor = false
        TextButton.ZIndex = 10
        TextButton.Parent = Screengui
        Items2 = Input8
        Element161, Element162 = Frame12(Element458, Control)
        if Element161 ~= nil then
            Control = Element161
            continue
        end
        break
    end
end

Control = Element161
Frame12 = Instance.TextLabel2("Frame")
Control = 0.94
Element161 = 0
Element162 = 0
TextButton = 30
Frame12.Size = UDim2.TextLabel2(0.94, 0, 0, 30)
Control = 0.03
Element161 = 0
Element162 = 0
TextButton = 52
Frame12.Position = UDim2.TextLabel2(0.03, 0, 0, 52)
Frame12.BackgroundTransparency = 1
Frame12.Parent = Screengui
local Element463 = {
[1] = "Control",
[2] = "Players",
[3] = "Items",
[4] = "Spawner",
[5] = "Values",
[6] = "Settings",
}
Element458 = Element463
Control = "Control"
Element161 = {}
Element162 = {}
TextButton = nil
setActiveTab = createTween8
local Control3, players
Control3, players, Items2 = ipairs(Element463)
Items2 = Items2
Spawner, Values = Control3(players, Items2)
local UIStroke7, ScrollingFrame, UIListLayout4
if not (Spawner == nil) then
    Items2 = Spawner
    local Element464 = {}
    while true do
        TextButton6 = Instance.TextLabel2("TextButton")
        TextButton6.Size = UDim2.TextLabel2(1 / #Element458 -0.02, 0, 1, 0)
        FredokaOne = UDim2.TextLabel2
        FillDirection = #Element458
        Control2 = 0
        TextButton6.Position = FredokaOne((Spawner -1) * (1 / FillDirection), Spawner == 1 and 0 or 0, 0, 0)
        FredokaOne = Spawner == 1
        if FredokaOne then
            TextButton6.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
        else
            TextButton6.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        end
        TextButton6.BackgroundTransparency = 0.2
        TextButton6.Text = Values
        FredokaOne = Enum.Font.FredokaOne
        TextButton6.Font = FredokaOne
        TextButton6.TextSize = 10
        FredokaOne = Color3.fromRGB(255, 255, 255)
        TextButton6.TextColor3 = FredokaOne
        TextButton6.Parent = Frame12
        FredokaOne = Instance.TextLabel2("UICorner")
        FredokaOne.CornerRadius = UDim.TextLabel2(0, 5)
        FredokaOne.Parent = TextButton6
        UIStroke7 = Instance.TextLabel2("UIStroke")
        UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        if Spawner == 1 then
            FillDirection = 255
            UIStroke7.Color = Color3.fromRGB(100, 100, 255)
            UIStroke7.Thickness = 1.5
        else
            FillDirection = 80
            UIStroke7.Color = Color3.fromRGB(80, 80, 80)
            UIStroke7.Thickness = 1
        end
        UIStroke7.Transparency = 0.3
        UIStroke7.Parent = TextButton6
        Element464.button = TextButton6
        Element464.stroke = UIStroke7
        Element162[Values] = Element464
        Control2 = "Control"
        UIListLayout4 = Values == "Control"
        if not UIListLayout4 then
            Control2 = "Settings"
            UIListLayout4 = Values == "Settings"
        end
        if UIListLayout4 then
            ScrollingFrame = Instance.TextLabel2("ScrollingFrame")
            Control2 = Enum.AutomaticSize
            ScrollingFrame.AutomaticCanvasSize = Control2.Y
            ScrollingFrame.ScrollBarThickness = 6
            FillDirection = 100
            Element180 = 255
            ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 255)
        else
            ScrollingFrame = Instance.TextLabel2("Frame")
        end
        ScrollingFrame.Size = UDim2.TextLabel2(0.9, 0, 1,-75)
        ScrollingFrame.Position = UDim2.TextLabel2(0.05, 0, 0, 87)
        ScrollingFrame.BackgroundTransparency = 1
        ScrollingFrame.BorderSizePixel = 0
        ScrollingFrame.Visible = Spawner == 1
        ScrollingFrame.Parent = Screengui
        UIListLayout4 = Instance.TextLabel2("UIListLayout")
        FillDirection = Enum.FillDirection
        Control2 = FillDirection.Vertical
        UIListLayout4.FillDirection = Control2
        FillDirection = Enum.SortOrder
        Control2 = FillDirection.LayoutOrder
        UIListLayout4.SortOrder = Control2
        Control2 = UDim.TextLabel2(0, 3)
        UIListLayout4.Padding = Control2
        UIListLayout4.Parent = ScrollingFrame
        FillDirection = "Control"
        Control2 = Values == "Control"
        if not Control2 then
            FillDirection = "Settings"
            Control2 = Values == "Settings"
        end
        if Control2 then
            Control2 = Instance.TextLabel2("UIPadding")
            Control2.PaddingTop = UDim.TextLabel2(0, 4)
            Control2.PaddingBottom = UDim.TextLabel2(0, 4)
            Control2.PaddingLeft = UDim.TextLabel2(0, 4)
            FillDirection = UDim.TextLabel2(0, 4)
            Control2.PaddingRight = FillDirection
            Control2.Parent = ScrollingFrame
        end
        Element161[Values] = ScrollingFrame
        Control2 = TextButton6.MouseButton1Click
        Element180 = Job24
        FillDirection = Control2
        Control2 = Control2.Connect
        Spawner, Values = Control3(players, Items2)
        if Spawner ~= nil then
            Items2 = Spawner
            continue
        end
        break
    end
end

Items2 = Spawner
Control3 = Element161.Control
players = Element161.Players
Items2 = Element161.Items
Spawner = Element161.Spawner
Values = Element161.Values
TextButton6 = Element161.Settings
FredokaOne = {}
Control2 = {}
createSettingRow = computeValue13
Element180 = "Partner user:"
FillDirection = computeValue13("Partner user:", Element8.Player2.Player, Control3)
Bloxyking2008 = "BloxyKing2008"
Noobmaster69 = "NoobMaster69"
Pixelknightz = "PixelKnightz"
Crimsonreaperx = "CrimsonReaperX"
local Element465
Zerohavoc = "ZeroHavoc"
Epicgamer_lol = "EpicGamer_LOL"
Silentstorm_yt = "SilentStorm_YT"
local Element466
Dragonhunter999 = "DragonHunter999"
Skybreaker42 = "SkyBreaker42"
Vortexhaze = "VortexHaze"
Phantomriderx = "PhantomRiderX"
Belt = "NebulaCraze"
Toxicbubbles = "ToxicBubbles"
local Element467 = {
[1] = "xX_ShadowSlayer_Xx",
[2] = "BloxyKing2008",
[3] = "NoobMaster69",
[4] = "PixelKnightz",
[5] = "CrimsonReaperX",
[6] = "MidnightFury77",
[7] = "ZeroHavoc",
[8] = "EpicGamer_LOL",
[9] = "SilentStorm_YT",
[10] = "FrostWolfie",
[11] = "DragonHunter999",
[12] = "SkyBreaker42",
[13] = "VortexHaze",
[14] = "PhantomRiderX",
[15] = "NebulaCraze",
[16] = "ToxicBubbles",
}
Bloxyking2008 = "RobloxTrader01"
Noobmaster69 = "GamerGirl_Lyra"
Pixelknightz = "SapphireWisp"
Crimsonreaperx = "NinjaCookie123"
Zerohavoc = "GoldenAegis"
Epicgamer_lol = "VenomViperZ"
Silentstorm_yt = "AstralFoxy"
Dragonhunter999 = "ChaosKnightX"
Skybreaker42 = "SilverScale99"
Vortexhaze = "OmegaPredator"
Phantomriderx = "EclipsedSoul"
Belt = "EmeraldEcho"
Toxicbubbles = "CipherStorm"
Element467[17] = "MysticBoba"
Element467[18] = "RobloxTrader01"
Element467[19] = "GamerGirl_Lyra"
Element467[20] = "SapphireWisp"
Element467[21] = "NinjaCookie123"
Element467[22] = "FluffyPandaUwU"
Element467[23] = "GoldenAegis"
Element467[24] = "VenomViperZ"
Element467[25] = "AstralFoxy"
Element467[26] = "MoonlightRose"
Element467[27] = "ChaosKnightX"
Element467[28] = "SilverScale99"
Element467[29] = "OmegaPredator"
Element467[30] = "EclipsedSoul"
Element467[31] = "EmeraldEcho"
Element467[32] = "CipherStorm"
Bloxyking2008 = "ZephyrBlade"
Noobmaster69 = "InkyOctopus"
Pixelknightz = "QuantumLynx"
Crimsonreaperx = "DizzyDoodle"
Zerohavoc = "PiratePudding"
Epicgamer_lol = "WaffleOverlord"
Silentstorm_yt = "CaffeineFox"
Dragonhunter999 = "PolarBearHugz"
Skybreaker42 = "RadiantPaladin"
Vortexhaze = "StormcasterX"
Phantomriderx = "SableHunter"
Belt = "ObsidianCrown"
Toxicbubbles = "AquaSurge"
Element467[33] = "PhoenixWraith"
Element467[34] = "ZephyrBlade"
Element467[35] = "InkyOctopus"
Element467[36] = "QuantumLynx"
Element467[37] = "DizzyDoodle"
Element467[38] = "NeonMango"
Element467[39] = "PiratePudding"
Element467[40] = "WaffleOverlord"
Element467[41] = "CaffeineFox"
Element467[42] = "MidnightMelody"
Element467[43] = "PolarBearHugz"
Element467[44] = "RadiantPaladin"
Element467[45] = "StormcasterX"
Element467[46] = "SableHunter"
Element467[47] = "ObsidianCrown"
Element467[48] = "AquaSurge"
Element467[49] = "SolarFlareKid"
Element467[50] = "TwilightWisp"
Element467[51] = "woloko262947"
Element180 = Element467
Bloxyking2008 = "Auto Accept"
local Element468, Element469
Element468, Element469 = createTextButton2(Control3, "Auto Accept", Job23)
Noobmaster69 = "Delay (sec):"
Pixelknightz = "5"
Crimsonreaperx = Control3
Bloxyking2008 = createSettingRow("Delay (sec):", "5", Control3)
Noobmaster69 = Bloxyking2008.FocusLost
Pixelknightz = Noobmaster69
Noobmaster69 = Noobmaster69.Connect
local Element470 = {}
Pixelknightz = Element470
Element470.modalAppearTimeout = 10
Element470.modalDismissTimeout = 10
Element470.maxAttempts = 20
Element470.overlayName = "FoundationOverlay"
Element470.Instance14 = "BlockingModalScreen"
Noobmaster69 = Element470
Crimsonreaperx = {}
Epicgamer_lol = "CoreGui"
Zerohavoc = game
Crimsonreaperx.CoreGui = game:GetService("CoreGui")
Epicgamer_lol = "StarterGui"
Zerohavoc = game
Crimsonreaperx.StarterGui = game:GetService("StarterGui")
Epicgamer_lol = "RunService"
Zerohavoc = game
Crimsonreaperx.RunService = game:GetService("RunService")
Epicgamer_lol = "GuiService"
Zerohavoc = game
Crimsonreaperx.GuiService = game:GetService("GuiService")
Epicgamer_lol = "VirtualInputManager"
Zerohavoc = game
Crimsonreaperx.VirtualInputManager = game:GetService("VirtualInputManager")
Pixelknightz = Crimsonreaperx
Element465 = {}
Zerohavoc = {class = "ScreenGui", Instance9 = Instance9}
Epicgamer_lol = {class = "GuiObject", Instance9 = GuiObject3}
Silentstorm_yt = {class = "ImageLabel", Instance9 = apply3}
local Element471 = {class = "ImageButton", Instance9 = apply4}
local Element472 = {class = "TextLabel", Instance9 = apply5}
Dragonhunter999 = Element472
local Element473 = {class = "UIStroke"}
Element473.Instance9 = Part3
Element465[1] = Zerohavoc
Element465[2] = Epicgamer_lol
Element465[3] = Silentstorm_yt
Element465[4] = Element471
Element465[5] = Element472
Element465[6] = {class = "TextButton", Instance9 = apply6}
Element465[7] = Element473
Crimsonreaperx = Element465
Element465 = Job25
Zerohavoc = Instance11
Epicgamer_lol = findChild7
Silentstorm_yt = {
[1] = "MouseButton1Click",
[2] = "Activated",
[3] = "MouseButton1Down",
[4] = "MouseButton1Up",
}
Element466 = Job26
Dragonhunter999 = {[1] = Job29, [2] = Job30, [3] = Job31}
Skybreaker42 = processItems19
Phantomriderx = {}
local Element474 = {Name = "getconnections", RunService = RunService, settle = 0.05}
Belt = Element474
local Element475 = {}
local Element476
Element475.Name = "VIM"
Element475.RunService = runHandler
ApplyStrokeMode2 = 0.15
Element475.settle = 0.15
Phantomriderx[1] = Element474
Phantomriderx[2] = {Name = "firesignal", RunService = Job32, settle = 0.05}
Phantomriderx[3] = {Name = "VIM-Enter", RunService = Job35, settle = 0.05, skipCheck = true}
Phantomriderx[4] = Element475
Vortexhaze = Phantomriderx
Phantomriderx = runProtected7
Belt = "Back"
Toxicbubbles = Instance.TextLabel2("TextButton")
ApplyStrokeMode2 = 0
Toxicbubbles.Size = UDim2.TextLabel2(1, 0, 0, 30)
ApplyStrokeMode2 = 150
Toxicbubbles.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
Toxicbubbles.BackgroundTransparency = 0.2
Toxicbubbles.Text = "Knife: Back"
Toxicbubbles.Font = Enum.Font.FredokaOne
Toxicbubbles.TextSize = 14
ApplyStrokeMode2 = 255
Toxicbubbles.TextColor3 = Color3.fromRGB(255, 255, 255)
Toxicbubbles.Parent = Control3
local UICorner12 = Instance.TextLabel2("UICorner")
ApplyStrokeMode2 = 5
UICorner12.CornerRadius = UDim.TextLabel2(0, 5)
UICorner12.Parent = Toxicbubbles
local UIStroke8 = Instance.TextLabel2("UIStroke")
ApplyStrokeMode2 = Enum.ApplyStrokeMode
UIStroke8.ApplyStrokeMode = ApplyStrokeMode2.Border
ApplyStrokeMode2 = 200
UIStroke8.Color = Color3.fromRGB(200, 100, 255)
UIStroke8.Thickness = 1.5
UIStroke8.Transparency = 0.3
UIStroke8.Parent = Toxicbubbles
Element476 = getValue25
ApplyStrokeMode2 = Instance.TextLabel2("TextButton")
Element235 = 30
ApplyStrokeMode2.Size = UDim2.TextLabel2(1, 0, 0, 30)
ApplyStrokeMode2.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
ApplyStrokeMode2.BackgroundTransparency = 0.2
ApplyStrokeMode2.Text = "Animation: ")
ApplyStrokeMode2.Font = Enum.Font.FredokaOne
ApplyStrokeMode2.TextSize = 14
ApplyStrokeMode2.TextColor3 = Color3.fromRGB(255, 255, 255)
ApplyStrokeMode2.Parent = Control3
local UICorner13 = Instance.TextLabel2("UICorner")
UICorner13.CornerRadius = UDim.TextLabel2(0, 5)
UICorner13.Parent = ApplyStrokeMode2
local UIStroke9 = Instance.TextLabel2("UIStroke")
UIStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Element235 = 100
Element236 = 255
UIStroke9.Color = Color3.fromRGB(200, 100, 255)
UIStroke9.Thickness = 1.5
UIStroke9.Transparency = 0.3
UIStroke9.Parent = ApplyStrokeMode2
Element235 = "Show Wheel"
local Element477, Element478
Element477, Element478 = createTextButton2(Control3, "Show Wheel", Job48)
Element236 = "Wheel size (0.5-2):"
Element235 = createSettingRow("Wheel size (0.5-2):", "1.0", Control3)
Textlabel2 = Items2
Element236 = createSettingRow("Name item to add:", "", Items2)
Textlabel2 = "Add Item To Their Offer"
local Element479 = createTextButton(Items2, "Add Item To Their Offer", getValue28)
Textlabel2 = "TextLabel"
local TextLabel15 = Instance.TextLabel2("TextLabel")
TextLabel15.Size = UDim2.TextLabel2(1, 0, 0, 15)
TextLabel15.BackgroundTransparency = 1
TextLabel15.Text = "Click weapon to ADD directly:"
TextLabel15.Font = Enum.Font.SourceSansSemibold
TextLabel15.TextSize = 12
TextLabel15.TextColor3 = Color3.fromRGB(0, 255, 100)
Textlabel2 = Enum.TextXAlignment.Left
TextLabel15.TextXAlignment = Textlabel2
TextLabel15.Parent = Items2
Textlabel2 = Instance.TextLabel2("ScrollingFrame")
Textlabel2.Size = UDim2.TextLabel2(1, 0, 0, 120)
Textlabel2.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Textlabel2.BackgroundTransparency = 0.3
Textlabel2.BorderSizePixel = 0
Textlabel2.ScrollBarThickness = 6
Textlabel2.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 255)
Textlabel2.CanvasSize = UDim2.TextLabel2(0, 0, 0, 0)
Textlabel2.AutomaticCanvasSize = Enum.AutomaticSize.Y
Textlabel2.Parent = Items2
local UICorner14 = Instance.TextLabel2("UICorner")
UICorner14.CornerRadius = UDim.TextLabel2(0, 5)
UICorner14.Parent = Textlabel2
local UIStroke10 = Instance.TextLabel2("UIStroke")
UIStroke10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Uipadding = 80
UIStroke10.Color = Color3.fromRGB(80, 80, 120)
UIStroke10.Thickness = 1
UIStroke10.Parent = Textlabel2
local UIListLayout5 = Instance.TextLabel2("UIListLayout")
UIListLayout5.FillDirection = Enum.FillDirection.Vertical
UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
Uipadding = 0
UIListLayout5.Padding = UDim.TextLabel2(0, 2)
UIListLayout5.Parent = Textlabel2
Uipadding = "UIPadding"
local UIPadding = Instance.TextLabel2("UIPadding")
UIPadding.PaddingTop = UDim.TextLabel2(0, 3)
UIPadding.PaddingBottom = UDim.TextLabel2(0, 3)
UIPadding.PaddingLeft = UDim.TextLabel2(0, 3)
Uipadding = UDim.TextLabel2(0, 3)
UIPadding.PaddingRight = Uipadding
UIPadding.Parent = Textlabel2
Uipadding = Job50
Darkshot = "Chroma Evergreen"
Sakura = "Chroma Constellation"
Gingerscope = "Chroma Alienbeam"
Sunrise = "Chroma Raygun"
Bauble = "Chroma Sunrise"
Evergreen = "Chroma Snowcannon"
Evergun = "Chroma Blizzard"
Celestial = "Chroma Sunset"
Constellation2 = "Chroma Snow Dagger"
Turkey = "Chroma Heart Wand"
Alienbeam = "Chroma Treat"
local Element480 = {
[1] = "Corrupt",
[2] = "Chroma Traveler's Gun",
[3] = "Chroma Evergun",
[4] = "Chroma Evergreen",
[5] = "Chroma Bauble",
[6] = "Chroma Vampire's Gun",
[7] = "Chroma Constellation",
[8] = "Chroma Alienbeam",
[9] = "Chroma Raygun",
[10] = "Chroma Sunrise",
[11] = "Chroma Snowcannon",
[12] = "Chroma Blizzard",
[13] = "Chroma Sunset",
[14] = "Chroma Snow Dagger",
[15] = "Chroma Heart Wand",
[16] = "Chroma Treat",
}
Darkshot = "Chroma Ornament"
Sakura = "Chroma Icecream"
Gingerscope = "Gingerscope"
Sunrise = "Traveler's Axe"
Bauble = "Traveler's Gun"
Evergreen = "Evergreen"
Evergun = "Evergun"
Celestial = "Celestial"
Constellation2 = "Constellation"
Turkey = "Turkey"
Alienbeam = "Alienbeam"
Element480[17] = "Chroma Snowstorm"
Element480[18] = "Chroma Watergun"
Element480[19] = "Chroma Sweet"
Element480[20] = "Chroma Ornament"
Element480[21] = "Chroma Sands"
Element480[22] = "Chroma Beachy"
Element480[23] = "Chroma Icecream"
Element480[24] = "Gingerscope"
Element480[25] = "Traveler's Axe"
Element480[26] = "Traveler's Gun"
Element480[27] = "Evergreen"
Element480[28] = "Evergun"
Element480[29] = "Celestial"
Element480[30] = "Constellation"
Element480[31] = "Turkey"
Element480[32] = "Alienbeam"
Darkshot = "Darkshot"
Sakura = "Sakura"
Gingerscope = "Sunset"
Sunrise = "Sunrise"
Bauble = "Bauble"
Evergreen = "Snowcannon"
Evergun = "Heart Wand"
Celestial = "Snowstorm"
Constellation2 = "Snow Dagger"
Turkey = "Blizzard"
Alienbeam = "Treat"
Element480[33] = "Raygun"
Element480[34] = "Vampire's Axe"
Element480[35] = "Vampire's Gun"
Element480[36] = "Darkshot"
Element480[37] = "Darksword"
Element480[38] = "Blossom"
Element480[39] = "Sakura"
Element480[40] = "Sunset"
Element480[41] = "Sunrise"
Element480[42] = "Bauble"
Element480[43] = "Snowcannon"
Element480[44] = "Heart Wand"
Element480[45] = "Snowstorm"
Element480[46] = "Snow Dagger"
Element480[47] = "Blizzard"
Element480[48] = "Treat"
Darkshot = "Harvester"
Sakura = "Flora"
Gingerscope = "Rainbow"
Sunrise = "Rainbow Gun"
Bauble = "Beachy"
Evergreen = "Sands"
Evergun = "Icecream"
Element480[49] = "Watergun"
Element480[50] = "Sweet"
Element480[51] = "Ornament"
Element480[52] = "Harvester"
Element480[53] = "Icepiercer"
Element480[54] = "Bloom"
Element480[55] = "Flora"
Element480[56] = "Rainbow"
Element480[57] = "Rainbow Gun"
Element480[58] = "Beachy"
Element480[59] = "Sands"
Element480[60] = "Icecream"
local Element481 = Element480
local Element482 = {
Chroma = 10,
Godly = 9,
Ancient = 8,
Unique = 7,
Classic = 6,
Legendary = 5,
Vintage = 4,
Rare = 3,
Uncommon = 2,
Common = 1,
}
local Element483 = Element482
local Element484 = {}
local Element485 = Element484
local Element486 = {}
local Element487 = Element486
local Element488, Element489
Element488, Darkshot, Element489 = ipairs(Element480)
Darkshot = Darkshot
local Element490
Element490, Sakura = Element488(Darkshot, Element489)
local Element491, Element492
do
    local Flag3 = false
    if not (Element490 == nil) then
        Element489 = Element490
        Sunrise = Sakura
        Gingerscope = Uipadding(Sakura)
        while true do
            Sunrise = string.Element104(Gingerscope, "^chroma ") ~= nil
            Celestial = ""
            Bauble = string.Element96(Gingerscope, "^chroma ", "")
            Evergreen = nil
            Evergun =-1
            Celestial, Constellation2, Turkey = ipairs(Element260)
            Celestial = Celestial
            Constellation2 = Constellation2
            Turkey = Turkey
            Alienbeam, Evergreen2 = Celestial(Constellation2, Turkey)
            if Alienbeam == nil then
                Turkey = Alienbeam
                Celestial = true
                Element490, Sakura = print(Darkshot, Element489)
                if not (Element490 == nil) then
                    Element489 = Element490
                    Sunrise = Sakura
                    Gingerscope = Uipadding(Sakura)
                    continue
                end
            else
                Turkey = Alienbeam
                Constellation = Evergreen2.Name
                Element491 = Uipadding(Constellation)
                while true do
                    Alienbeam2 = true
                    Constellation = Evergreen2.chroma == true
                    Element492 = false
                    if Sunrise then
                        Alienbeam2 = Constellation and Element491 == Gingerscope
                    else
                        Alienbeam2 = not Constellation and Element491 == Gingerscope
                    end
                    if Alienbeam2 then
                        Element492 = true
                    end
                    if Element492 then
                        Raygun = Evergreen2.rarity
                        Alienbeam2 = Element483[Raygun] or 0
                        if Evergun < Alienbeam2 then
                            Evergreen = Evergreen2
                            Evergun = Alienbeam2
                        end
                    end
                    Alienbeam, Evergreen2 = print(Constellation2, Turkey)
                    if Alienbeam ~= nil then
                        Turkey = Alienbeam
                        Constellation = Evergreen2.Name
                        Element491 = Uipadding(Constellation)
                        continue
                    end
                    break
                end
                Turkey = Alienbeam
                Celestial = Evergreen
                if Celestial then
                    Turkey = Evergreen.Name4
                    Constellation2 = Element487[Turkey]
                    Celestial = not Constellation2
                end
                if Celestial then
                    Element487[Evergreen.Name4] = true
                    Celestial = print
                    Alienbeam = Sakura
                    Evergreen2 = Evergreen.rarity
                    Constellation = Evergreen.Name
                    Turkey = "[mm2run/items] [+] %s -> %s %s (%s)"
                    Constellation2 = ("[mm2run/items] [+] %s -> %s %s (%s)")
                        :format(Sakura, Evergreen2, Evergreen.type, Constellation)
                    Element490, Sakura = print(Darkshot, Element489)
                    if not (Element490 == nil) then
                        Element489 = Element490
                        Sunrise = Sakura
                        Gingerscope = Uipadding(Sakura)
                        continue
                    end
                else
                    Celestial = not Evergreen
                    Element490, Sakura = print(Darkshot, Element489)
                    if Element490 == nil then
                        break
                    else
                        Element489 = Element490
                        Sunrise = Sakura
                        Gingerscope = Uipadding(Sakura)
                        continue
                    end
                end
            end
            Darkshot = "[mm2run/items] matched %d of %d weapons"
            Element490 = #Element485
            Sakura = #Element481
            Flag3 = true
            break
        end
        if Flag3 then
            break
        end
    end
    Darkshot = "[mm2run/items] matched %d of %d weapons"
    Sakura = #Element481
end

Darkshot = Darkshot:format(#Element485, Sakura)
local Element493 = {}
Darkshot = Element493
Sakura = 40
Gingerscope = 95
Element493.Chroma = Color3.fromRGB(70, 40, 95)
Sakura = 70
Gingerscope = 30
Darkshot.Godly = Color3.fromRGB(110, 70, 30)
Sakura = 25
Gingerscope = 90
Darkshot.Ancient = Color3.fromRGB(60, 25, 90)
Sakura = 50
Gingerscope = 90
Darkshot.Unique = Color3.fromRGB(140, 50, 90)
Sakura = 55
Gingerscope = 25
Darkshot.Legendary = Color3.fromRGB(95, 55, 25)
Sakura = 70
Gingerscope = 90
Darkshot.Classic = Color3.fromRGB(70, 70, 90)
Sakura = 75
Gingerscope = 30
Darkshot.Vintage = Color3.fromRGB(80, 75, 30)
Sakura = 60
Gingerscope = 95
Darkshot.Rare = Color3.fromRGB(35, 60, 95)
Sakura = 70
Gingerscope = 50
Darkshot.Uncommon = Color3.fromRGB(35, 70, 50)
Sakura = 50
Gingerscope = 70
Darkshot.Common = Color3.fromRGB(50, 50, 70)
Element488 = Darkshot
Darkshot, Element489, Element490 = ipairs(Element484)
Darkshot = Darkshot
Sakura, Gingerscope = Darkshot(Element489, Element490)
if not (Sakura == nil) then
    Element490 = Sakura
    local Element494 = {}
    while true do
        Sunrise = Gingerscope.Name4
        Bauble = Gingerscope.Name
        Evergun = Gingerscope.rarity
        Evergreen = Element488[Evergun] or Element488.Common
        Constellation2 = Gingerscope.chroma and " [Chroma]" ""
        Raygun = Gingerscope.type
        Alienbeam2 = Raygun .. ")"
        Constellation = " " .. Alienbeam2
        Evergreen2 = Gingerscope.rarity .. Constellation
        Turkey = "   (" .. Evergreen2
        Celestial = Constellation2 .. Turkey
        Evergun = Bauble .. Celestial
        Celestial = Instance.TextLabel2("TextButton")
        Constellation2 = UDim2.TextLabel2(1,-6, 0, 22)
        Celestial.Size = Constellation2
        Celestial.BackgroundColor3 = Evergreen
        Celestial.BackgroundTransparency = 0.2
        Celestial.Text = Evergun
        Turkey = Enum.Font
        Constellation2 = Turkey.SourceSans
        Celestial.Font = Constellation2
        Celestial.TextSize = 12
        Constellation2 = Color3.fromRGB(255, 255, 255)
        Celestial.TextColor3 = Constellation2
        Turkey = Enum.TextXAlignment
        Constellation2 = Turkey.Left
        Celestial.TextXAlignment = Constellation2
        Turkey = Enum.TextTruncate
        Constellation2 = Turkey.AtEnd
        Celestial.TextTruncate = Constellation2
        Celestial.Parent = Textlabel2
        Constellation2 = Instance.TextLabel2("UIPadding")
        Constellation2.PaddingLeft = UDim.TextLabel2(0, 6)
        Turkey = UDim.TextLabel2(0, 6)
        Constellation2.PaddingRight = Turkey
        Constellation2.Parent = Celestial
        Turkey = Instance.TextLabel2("UICorner")
        Alienbeam = UDim.TextLabel2(0, 4)
        Turkey.CornerRadius = Alienbeam
        Turkey.Parent = Celestial
        Alienbeam = #FredokaOne + 1
        Element494.button = Celestial
        Element494.entry = Gingerscope
        Evergreen2 = Element494
        FredokaOne[Alienbeam] = Element494
        Sakura, Gingerscope = Darkshot(Element489, Element490)
        if Sakura ~= nil then
            Element490 = Sakura
            continue
        end
        break
    end
end

Darkshot = Element236:GetPropertyChangedSignal("Text").Connect
local Element495 = {
Chroma = {[1] = 1, [2] = 2},
Godly = {[1] = 1, [2] = 5},
Ancient = {[1] = 2, [2] = 6},
Unique = {[1] = 2, [2] = 8},
Classic = {[1] = 3, [2] = 10},
Legendary = {[1] = 4, [2] = 12},
Vintage = {[1] = 5, [2] = 15},
Rare = {[1] = 8, [2] = 25},
Uncommon = {[1] = 10, [2] = 40},
Common = {[1] = 15, [2] = 60},
}
Darkshot = Element495
local Element496 = {
Chroma = true,
Godly = true,
Ancient = true,
Unique = true,
Classic = true,
Legendary = true,
Vintage = true,
}
local Element497 = {}
Sakura = Element497
Gingerscope = "Corrupt"
Sunrise = "Gingerscope"
Bauble = "Traveler's Axe"
Evergreen = "Celestial"
Evergun = "Vampire's Axe"
Celestial = "Harvester"
Constellation2 = "Icepiercer"
Turkey = "Traveler's Gun"
Alienbeam = "Evergun"
Evergreen2 = "Evergreen"
Constellation = "Constellation"
Alienbeam2 = "Alienbeam"
Raygun = "Raygun"
Element497[1] = "Corrupt"
Element497[2] = "Gingerscope"
Element497[3] = "Traveler's Axe"
Element497[4] = "Celestial"
Element497[5] = "Vampire's Axe"
Element497[6] = "Harvester"
Element497[7] = "Icepiercer"
Element497[8] = "Traveler's Gun"
Element497[9] = "Evergun"
Element497[10] = "Evergreen"
Element497[11] = "Bauble"
Sakura[12] = "Constellation"
Sakura[13] = "Vampire's Gun"
Sakura[14] = "Alienbeam"
Sakura[15] = "Raygun"
Sakura[16] = "Sunrise"
Gingerscope = "Snowcannon"
Sunrise = "Blizzard"
Bauble = "Sunset"
Evergreen = "Snow Dagger"
Evergun = "Treat"
Celestial = "Heart Wand"
Constellation2 = "Snowstorm"
Turkey = "Watergun"
Alienbeam = "Sweet"
Evergreen2 = "Ornament"
Constellation = "Darkshot"
Alienbeam2 = "Blossom"
Raygun = "Sakura"
Sakura[17] = "Snowcannon"
Sakura[18] = "Blizzard"
Sakura[19] = "Sunset"
Sakura[20] = "Snow Dagger"
Sakura[21] = "Treat"
Sakura[22] = "Heart Wand"
Sakura[23] = "Snowstorm"
Sakura[24] = "Watergun"
Sakura[25] = "Sweet"
Sakura[26] = "Ornament"
Sakura[27] = "Turkey"
Sakura[28] = "Darkshot"
Sakura[29] = "Darksword"
Sakura[30] = "Blossom"
Sakura[31] = "Sakura"
Sakura[32] = "Soul"
Gingerscope = "Spirit"
Sunrise = "Flora"
Bauble = "Bloom"
Evergreen = "Rainbow"
Evergun = "Rainbow Gun"
Celestial = "Flowerwood"
Constellation2 = "Flowerwood Gun"
Turkey = "Xenoknife"
Alienbeam = "Xenoshot"
Evergreen2 = "Ocean"
Constellation = "Bat"
Alienbeam2 = "Australis"
Raygun = "Candy"
Sakura[33] = "Spirit"
Sakura[34] = "Flora"
Sakura[35] = "Bloom"
Sakura[36] = "Rainbow"
Sakura[37] = "Rainbow Gun"
Sakura[38] = "Flowerwood"
Sakura[39] = "Flowerwood Gun"
Sakura[40] = "Xenoknife"
Sakura[41] = "Xenoshot"
Sakura[42] = "Ocean"
Sakura[43] = "Waves"
Sakura[44] = "Bat"
Sakura[45] = "Borealis"
Sakura[46] = "Australis"
Sakura[47] = "Candy"
Sakura[48] = "Heartblade"
Sakura[49] = "Icecream"
Sakura[50] = "Sands"
Sakura[51] = "Beachy"
Element490 = Sakura
Sakura = {}
Gingerscope, Sunrise, Bauble = ipairs(Element490)
Gingerscope = Gingerscope
Sunrise = Sunrise
Bauble = Bauble
Evergreen, Evergun = Gingerscope(Sunrise, Bauble)
if not (Evergreen == nil) then
    Bauble = Evergreen
    while true do
        Constellation2 = Evergun
        Celestial = Uipadding(Evergun)
        Constellation2 = true
        Sakura[Celestial] = true
        Evergreen, Evergun = Gingerscope(Sunrise, Bauble)
        if Evergreen ~= nil then
            Bauble = Evergreen
            continue
        end
        break
    end
end

Bauble = Evergreen
Gingerscope = checkCondition7
local Element498 = {}
Bauble = Element498
Evergreen = true
Element498.Blue = true
Element498.Bronze = true
Element498.Silver = true
Element498.Gold = true
Element498.Golden = true
Element498.Platinum = true
Element498.Diamond = true
Element498.Emerald = true
Element498.Ruby = true
Element498.Obsidian = true
Element498.Crystal = true
Element498.Crystaline = true
Element498.Crystalline = true
Element498.Red = true
Element498.Orange = true
Element498.Yellow = true
Element498.Green = true
Element498.Purple = true
Element498.Pink = true
Element498.Black = true
Element498.White = true
Element498.Cyan = true
Element498.Magenta = true
Bauble.Aqua = true
Bauble.Teal = true
Bauble.Lime = true
Bauble.Maroon = true
Bauble.Navy = true
Bauble.Coral = true
Bauble.Mint = true
Bauble.Brown = true
Bauble.Tan = true
Bauble.Gray = true
Bauble.Grey = true
Bauble.Steel = true
Bauble.Iron = true
Bauble.Copper = true
Bauble.Brass = true
Bauble.Iridium = true
Bauble.Tungsten = true
Bauble.Onyx = true
Bauble.Jade = true
Bauble.Amber = true
Bauble.Sapphire = true
Bauble.Topaz = true
Bauble.Pearl = true
Bauble.Frosted = true
Bauble.Frozen = true
Bauble.Burning = true
Bauble.Molten = true
Bauble.Shadow = true
Bauble.Glowing = true
Bauble.Toxic = true
Bauble.Cursed = true
Sunrise = Bauble
Bauble = {
iceblaster = true,
icebreaker = true,
icecrusher = true,
icepicker = true,
gingerscope = true,
gingerscythe = true,
logchopper = true,
logpiercer = true,
swirly = true,
sugar = true,
minty = true,
candy = true,
}
Evergreen = checkCondition8
Evergun = checkCondition9
Celestial = computeValue14
Constellation2 = processItems21
Alienbeam = "Amount per click (0 = random):"
Evergreen2 = "0"
Turkey = createSettingRow("Amount per click (0 = random):", "0", Spawner)
Evergreen2 = "Search weapon:"
Constellation = Spawner
Alienbeam = createSettingRow("Search weapon:", "", Spawner)
Evergreen2 = Instance.TextLabel2("TextLabel")
Constellation = 1
Alienbeam2 = 0
Raygun = 15
Evergreen2.Size = UDim2.TextLabel2(1, 0, 0, 15)
Evergreen2.BackgroundTransparency = 1
Evergreen2.Text = "Click weapon to spawn:"
Constellation = Enum.Font
Evergreen2.Font = Constellation.SourceSansSemibold
Evergreen2.TextSize = 12
Constellation = 0
Alienbeam2 = 100
Evergreen2.TextColor3 = Color3.fromRGB(0, 255, 100)
Constellation = Enum.TextXAlignment
Evergreen2.TextXAlignment = Constellation.Left
Evergreen2.Parent = Spawner
Constellation = Spawner
Element491 = createTextButton(Spawner, "Spawn All (Tradable)", processItems22)
Constellation = Instance.TextLabel2("ScrollingFrame")
Alienbeam2 = 1
Raygun = 0
Uilistlayout = 120
Constellation.Size = UDim2.TextLabel2(1, 0, 0, 120)
Alienbeam2 = 25
Raygun = 25
Constellation.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Constellation.BackgroundTransparency = 0.3
Constellation.BorderSizePixel = 0
Constellation.ScrollBarThickness = 6
Alienbeam2 = 100
Raygun = 100
Constellation.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 255)
Alienbeam2 = 0
Raygun = 0
Uilistlayout = 0
Constellation.CanvasSize = UDim2.TextLabel2(0, 0, 0, 0)
Alienbeam2 = Enum.AutomaticSize
Constellation.AutomaticCanvasSize = Alienbeam2.Y
Constellation.Parent = Spawner
Raygun = Spawner
Alienbeam2 = Spawner:GetPropertyChangedSignal("AbsoluteSize")
Raygun = Alienbeam2
Alienbeam2 = Alienbeam2.Connect
Raygun = "UICorner"
Alienbeam2 = Instance.TextLabel2("UICorner")
Uilistlayout = 5
Raygun = UDim.TextLabel2(0, 5)
Alienbeam2.CornerRadius = Raygun
Alienbeam2.Parent = Constellation
Raygun = Instance.TextLabel2("UIStroke")
Raygun.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Uilistlayout = 80
FillDirection2 = 80
Element286 = 120
Raygun.Color = Color3.fromRGB(80, 80, 120)
Raygun.Thickness = 1
Raygun.Parent = Constellation
Uilistlayout = "UIListLayout"
local UIListLayout6 = Instance.TextLabel2("UIListLayout")
FillDirection2 = Enum.FillDirection
Uilistlayout = FillDirection2.Vertical
UIListLayout6.FillDirection = Uilistlayout
FillDirection2 = Enum.SortOrder
Uilistlayout = FillDirection2.LayoutOrder
UIListLayout6.SortOrder = Uilistlayout
FillDirection2 = 0
Element286 = 2
Uilistlayout = UDim.TextLabel2(0, 2)
UIListLayout6.Padding = Uilistlayout
UIListLayout6.Parent = Constellation
FillDirection2 = "UIPadding"
Uilistlayout = Instance.TextLabel2("UIPadding")
Element286 = 0
Element322 = 3
Uilistlayout.PaddingTop = UDim.TextLabel2(0, 3)
Element286 = 0
Element322 = 3
Uilistlayout.PaddingBottom = UDim.TextLabel2(0, 3)
Element286 = 0
Element322 = 3
Uilistlayout.PaddingLeft = UDim.TextLabel2(0, 3)
Element286 = 0
Element322 = 3
FillDirection2 = UDim.TextLabel2(0, 3)
Uilistlayout.PaddingRight = FillDirection2
Uilistlayout.Parent = Constellation
Alienbeam2 = {}
Raygun, UIListLayout6, Uilistlayout = ipairs(Element260)
Raygun = Raygun
Uilistlayout = Uilistlayout
FillDirection2, Element286 = Raygun(UIListLayout6, Uilistlayout)
local UIListLayout7, UICorner15, Element499, Element500, MouseButton1Click
do
    local shouldExit6 = false
    if not (FillDirection2 == nil) then
        Uilistlayout = FillDirection2
        local Element501 = {}
        while true do
            Element322 = Element286.Name4
            Weapons = ItemModule.Weapons
            UIListLayout2 = Weapons[Element322]
            Font4 = Gingerscope(Element286.Name)
            Weapons = not Font4
            if Weapons then
                FillDirection2, Element286 = Raygun(UIListLayout6, Uilistlayout)
                if FillDirection2 == nil then
                    Uilistlayout = FillDirection2
                else
                    Uilistlayout = FillDirection2
                    continue
                end
            else
                Weapons = Element488.Common
                Font4 = Evergun(UIListLayout2)
                TextButton4 = Element286.Name
                Element500 = Element286.rarity
                PlayerAdded = " "
                Element344 = Element286.type
                Element338 = ")"
                Element345 = Font4 and "" " [LOCKED]"
                Httpservice = ")" .. Element345
                HttpService = Element344 .. Httpservice
                MouseButton1Click = " " .. HttpService
                Element311 = "   (" .. Element500 .. MouseButton1Click
                UIListLayout7 = TextButton4 .. (Element286.chroma and " [Chroma]" "") .. Element311
                TextButton4 = Instance.TextLabel2("TextButton")
                Element331 = 0
                SourceSans = UDim2.TextLabel2(1,-6, 0, 22)
                TextButton4.Size = SourceSans
                TextButton4.BackgroundColor3 = Weapons
                SourceSans = Font4 and 0.2 or 0.6
                TextButton4.BackgroundTransparency = SourceSans
                TextButton4.Text = UIListLayout7
                SourceSans = Enum.Font.SourceSans
                TextButton4.Font = SourceSans
                TextButton4.TextSize = 12
                SourceSans = Font4
                if SourceSans then
                    Element331 = 255
                    SourceSans = Color3.fromRGB(255, 255, 255)
                else
                    Element331 = 180
                    SourceSans = Color3.fromRGB(180, 180, 180)
                end
                TextButton4.TextColor3 = SourceSans
                Element311 = Enum
                SourceSans = Enum.TextXAlignment.Left
                TextButton4.TextXAlignment = SourceSans
                SourceSans = Element311.TextTruncate.AtEnd
                TextButton4.TextTruncate = SourceSans
                TextButton4.Parent = Constellation
                SourceSans = Instance.TextLabel2("UIPadding")
                SourceSans.PaddingLeft = UDim.TextLabel2(0, 6)
                SourceSans.PaddingRight = UDim.TextLabel2(0, 6)
                SourceSans.Parent = TextButton4
                UICorner15 = Instance.TextLabel2("UICorner")
                Element311 = UDim.TextLabel2(0, 4)
                UICorner15.CornerRadius = Element311
                UICorner15.Parent = TextButton4
                Element311 = #Alienbeam2 + 1
                Element499 = Element501
                Element501.button = TextButton4
                Element501.entry = Element286
                Element501.tradable = Font4
                Element331 = Element501
                Alienbeam2[Element311] = Element501
                FillDirection2, Element286 = Raygun(UIListLayout6, Uilistlayout)
                if FillDirection2 == nil then
                    break
                else
                    Uilistlayout = FillDirection2
                    continue
                end
            end
            shouldExit6 = true
            break
        end
        if shouldExit6 then
            break
        end
    end
    Uilistlayout = FillDirection2
end

Uilistlayout = "Text"
Raygun = Job51
local Element502 = {
Chroma = true,
Godly = true,
Ancient = true,
Vintage = true,
Unique = true,
Classic = true,
Legendary = true,
}
Uilistlayout = Job52
FillDirection2 = Job53
local Element503 = {}
Element322 = Element503
Element286 = Element503
local Element504 = {}
UIListLayout2 = Element504
Element504.Corrupt = 600
Element504["C. Traveler's Gun"] = 225000
Element504["Chroma Evergun"] = 78000
Element504["Chroma Evergreen"] = 60000
Element504["Chroma Bauble"] = 38000
Element504["C. Constellation"] = 36000
Element504["C. Vampire's Gun"] = 35000
Element504["Chroma Alienbeam"] = 30000
Element504["Chroma Raygun"] = 15000
Element504["Chroma Sunrise"] = 11250
Element504["C. Snowcannon"] = 8500
Element504["Chroma Blizzard"] = 8000
UIListLayout2["Chroma Sunset"] = 6500
UIListLayout2["C. Snow Dagger"] = 5750
UIListLayout2["Chroma Treat"] = 4850
UIListLayout2["C. Heart Wand"] = 4750
UIListLayout2["Chroma Snowstorm"] = 4250
UIListLayout2["Chroma Watergun"] = 3400
UIListLayout2["Chroma Sweet"] = 2850
UIListLayout2["Chroma Ornament"] = 2700
UIListLayout2.Gingerscope = 17750
UIListLayout2["Traveler's Axe"] = 8400
UIListLayout2.Celestial = 1725
UIListLayout2["Vampire's Axe"] = 925
UIListLayout2.Harvester = 290
UIListLayout2.Icepiercer = 190
UIListLayout2["Traveler's Gun"] = 4500
UIListLayout2.Evergun = 3300
UIListLayout2.Constellation = 2600
UIListLayout2.Turkey = 2475
UIListLayout2.Evergreen = 2450
UIListLayout2.Alienbeam = 2175
UIListLayout2["Vampire's Gun"] = 1700
UIListLayout2.Darkshot = 1390
UIListLayout2.Darksword = 1370
UIListLayout2.Raygun = 1275
UIListLayout2.Blossom = 1180
UIListLayout2.Sakura = 1170
UIListLayout2.Sunrise = 1000
UIListLayout2.Snowcannon = 925
UIListLayout2.Bauble = 900
UIListLayout2.Sunset = 525
UIListLayout2["Heart Wand"] = 450
UIListLayout2.Soul = 380
UIListLayout2.Spirit = 370
UIListLayout2.Flora = 310
UIListLayout2.Bloom = 300
UIListLayout2["Rainbow Gun"] = 300
UIListLayout2.Rainbow = 290
UIListLayout2["Snow Dagger"] = 260
UIListLayout2["Flowerwood Gun"] = 205
UIListLayout2.Flowerwood = 200
UIListLayout2.Xenoknife = 200
UIListLayout2.Xenoshot = 200
UIListLayout2.Watergun = 185
UIListLayout2.Ocean = 180
UIListLayout2.Waves = 175
UIListLayout2.Treat = 170
UIListLayout2.Sweet = 165
UIListLayout2.Blizzard = 155
UIListLayout2.Snowstorm = 155
UIListLayout2.Bat = 125
UIListLayout2.Borealis = 105
UIListLayout2.Australis = 100
UIListLayout2.Candy = 95
UIListLayout2.Heartblade = 80
Element322 = UIListLayout2
UIListLayout2, Weapons, Font4 = pairs(Element322)
UIListLayout2 = UIListLayout2
Weapons = Weapons
Font4 = Font4
UIListLayout7, TextButton4 = UIListLayout2(Weapons, Font4)
if not (UIListLayout7 == nil) then
    Font4 = UIListLayout7
    local Element505 = {}
    while true do
        SourceSans = FillDirection2(UIListLayout7)
        Element311 = Element505
        Element505.Name = UIListLayout7
        Element505.value = TextButton4
        Element286[SourceSans] = Element505
        UIListLayout7, TextButton4 = UIListLayout2(Weapons, Font4)
        if UIListLayout7 ~= nil then
            Font4 = UIListLayout7
            continue
        end
        break
    end
end

Font4 = UIListLayout7
Element322 = processItems24
UIListLayout2 = players.UIListLayout
Font4 = 0
UIListLayout2.Padding = UDim.TextLabel2(0, 4)
Weapons = "TextLabel"
UIListLayout2 = Instance.TextLabel2("TextLabel")
Font4 = 1
TextButton4 = 0
SourceSans = 14
UIListLayout2.Size = UDim2.TextLabel2(1, 0, 0, 14)
UIListLayout2.LayoutOrder = 1
UIListLayout2.BackgroundTransparency = 1
UIListLayout2.Text = "ready"
Font4 = Enum.Font
UIListLayout2.Font = Font4.SourceSans
UIListLayout2.TextSize = 11
Font4 = 180
TextButton4 = 180
Weapons = Color3.fromRGB(180, 180, 180)
UIListLayout2.TextColor3 = Weapons
Font4 = Enum.TextXAlignment
Weapons = Font4.Left
UIListLayout2.TextXAlignment = Weapons
UIListLayout2.Parent = players
Font4 = "TextButton"
Weapons = Instance.TextLabel2("TextButton")
TextButton4 = 0
SourceSans = 0
Weapons.Size = UDim2.TextLabel2(1, 0, 0, 22)
Weapons.LayoutOrder = 2
TextButton4 = 80
SourceSans = 130
Weapons.BackgroundColor3 = Color3.fromRGB(80, 80, 130)
Weapons.BackgroundTransparency = 0.2
Weapons.Text = "Refresh values"
Weapons.Font = Enum.Font.FredokaOne
Weapons.TextSize = 12
TextButton4 = 255
SourceSans = 255
Font4 = Color3.fromRGB(255, 255, 255)
Weapons.TextColor3 = Font4
Weapons.Parent = players
Font4 = Instance.TextLabel2("UICorner")
TextButton4 = 0
SourceSans = 4
Font4.CornerRadius = UDim.TextLabel2(0, 4)
Font4.Parent = Weapons
Font4 = Instance.TextLabel2("ScrollingFrame")
TextButton4 = 1
SourceSans = 0
Element311 =-50
Font4.Size = UDim2.TextLabel2(1, 0, 1,-50)
Font4.LayoutOrder = 4
Font4.BackgroundTransparency = 1
Font4.BorderSizePixel = 0
Font4.ScrollBarThickness = 6
TextButton4 = 100
SourceSans = 100
Font4.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 255)
TextButton4 = 0
SourceSans = 0
Element311 = 0
Font4.CanvasSize = UDim2.TextLabel2(0, 0, 0, 0)
SourceSans = Enum
TextButton4 = Enum.AutomaticSize
Font4.AutomaticCanvasSize = TextButton4.Y
Font4.Parent = players
TextButton4 = "UIListLayout"
UIListLayout7 = Instance.TextLabel2("UIListLayout")
SourceSans = SourceSans.FillDirection
TextButton4 = SourceSans.Vertical
UIListLayout7.FillDirection = TextButton4
SourceSans = SourceSans.SortOrder
TextButton4 = SourceSans.LayoutOrder
UIListLayout7.SortOrder = TextButton4
SourceSans = 0
TextButton4 = UDim.TextLabel2(0, 4)
UIListLayout7.Padding = TextButton4
UIListLayout7.Parent = Font4
SourceSans = "UIPadding"
TextButton4 = Instance.TextLabel2("UIPadding")
Element311 = 8
SourceSans = UDim.TextLabel2(0, 8)
TextButton4.PaddingRight = SourceSans
TextButton4.Parent = Font4
SourceSans = {}
UICorner15 = Instance16
Element331 = 50
Element311 = Color3.fromRGB(50, 50, 70)
Element331 = Job54
Element499 = processItems26
Element500 = Label16
RefreshPlayerValues = processItems27
MouseButton1Click = Weapons.MouseButton1Click
PlayerAdded = MouseButton1Click
MouseButton1Click = MouseButton1Click.Connect
MouseButton1Click = getPlayers2
PlayerAdded = game.Players.PlayerAdded
HttpService = PlayerAdded
PlayerAdded = PlayerAdded.Connect
PlayerAdded = game.Players.PlayerRemoving
HttpService = PlayerAdded
PlayerAdded = PlayerAdded.Connect
PlayerAdded = game.Players.ChildRemoved
HttpService = PlayerAdded
PlayerAdded = PlayerAdded.Connect
PlayerAdded = {cache = nil, byName = nil, fetchedAt = 0, fetching = false}
Httpservice = "HttpService"
Element344 = game
HttpService = game:GetService("HttpService")
Element344 = Job60
Httpservice = syn
if Httpservice then
    Element338 = syn
    Httpservice = syn.request
end

if not Httpservice then
    Httpservice = http
end

if not Httpservice then
    Httpservice = fluxus
end

if not Httpservice then
    Httpservice = http_request
end

if not Httpservice then
    Httpservice = request
end

Element338 = processItems28
Element345 = runProtected9
Element348 = computeValue15
Element384 = processItems29
local Element506 = processItems30
TextLabel10 = "Search weapon:"
Textlabel3 = ""
local Element507 = createSettingRow("Search weapon:", "", Values)
Textlabel3 = "TextLabel"
TextLabel10 = Instance.TextLabel2("TextLabel")
local UIListLayout8
Uilistlayout2 = 0
FillDirection3 = 18
TextLabel10.Size = UDim2.TextLabel2(1, 0, 0, 18)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Text = "Loading values..."
TextLabel10.Font = Enum.Font.SourceSans
TextLabel10.TextSize = 12
Uilistlayout2 = 200
TextLabel10.TextColor3 = Color3.fromRGB(200, 200, 200)
Textlabel3 = Enum.TextXAlignment.Left
TextLabel10.TextXAlignment = Textlabel3
TextLabel10.Parent = Values
Textlabel3 = Instance.TextLabel2("ScrollingFrame")
Uilistlayout2 = 0
FillDirection3 = 0
Textlabel3.Size = UDim2.TextLabel2(1, 0, 0, 200)
Uilistlayout2 = 25
FillDirection3 = 35
Textlabel3.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Textlabel3.BackgroundTransparency = 0.3
Textlabel3.BorderSizePixel = 0
Textlabel3.ScrollBarThickness = 6
Uilistlayout2 = 100
FillDirection3 = 255
Textlabel3.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 255)
Uilistlayout2 = 0
FillDirection3 = 0
Textlabel3.CanvasSize = UDim2.TextLabel2(0, 0, 0, 0)
Uilistlayout2 = Enum
Textlabel3.AutomaticCanvasSize = Enum.AutomaticSize.Y
Textlabel3.Parent = Values
local UICorner16 = Instance.TextLabel2("UICorner")
Uilistlayout2 = 0
FillDirection3 = 5
UICorner16.CornerRadius = UDim.TextLabel2(0, 5)
UICorner16.Parent = Textlabel3
Uilistlayout2 = "UIListLayout"
UIListLayout8 = Instance.TextLabel2("UIListLayout")
FillDirection3 = Enum.FillDirection
Uilistlayout2 = FillDirection3.Vertical
UIListLayout8.FillDirection = Uilistlayout2
FillDirection3 = Enum.SortOrder
Uilistlayout2 = FillDirection3.LayoutOrder
UIListLayout8.SortOrder = Uilistlayout2
FillDirection3 = 0
Uilistlayout2 = UDim.TextLabel2(0, 2)
UIListLayout8.Padding = Uilistlayout2
UIListLayout8.Parent = Textlabel3
FillDirection3 = "UIPadding"
Uilistlayout2 = Instance.TextLabel2("UIPadding")
Uilistlayout2.PaddingTop = UDim.TextLabel2(0, 3)
Uilistlayout2.PaddingBottom = UDim.TextLabel2(0, 3)
Uilistlayout2.PaddingLeft = UDim.TextLabel2(0, 3)
FillDirection3 = UDim.TextLabel2(0, 3)
Uilistlayout2.PaddingRight = FillDirection3
Uilistlayout2.Parent = Textlabel3
FillDirection3 = "AbsoluteSize"
Uilistlayout2 = Values
UIListLayout8 = Values:GetPropertyChangedSignal("AbsoluteSize")
Uilistlayout2 = UIListLayout8
UIListLayout8 = UIListLayout8.Connect
Uilistlayout2 = processItems32
FillDirection3 = processItems33
Element396 = Element507
Connect = Element507:GetPropertyChangedSignal("Text")
Element396 = Connect
Connect = Connect.Connect
Connect = task.spawn
local Element508 = {}
Element396 = Element508
Element508.startTrade = {Name4 = Enum.KeyCode.F1, label = "Start trade", action = StartTrade}
Element508.randomItems = {Name4 = Enum.KeyCode.F2, label = "Random items", action = action}
Element508.acceptOffer = {Name4 = Enum.KeyCode.F3, label = "Accept their offer", action = action2}
Element508.randomPlayer = {Name4 = Enum.KeyCode.F4, label = "Random player", action = action3}
Element396.blockPlayer = {Name4 = Enum.KeyCode.F5, label = "Block player", action = action5}
Element396.selectPlayerInTrade = {Name4 = Enum.KeyCode.F6, label = "Select player in trade", action = action6}
Element396.hideGui = {Name4 = Enum.KeyCode.F7, label = "Hide GUI", action = action7}
Connect = Element396
Element396 = nil
local TextLabel16, TextLabel17, Children5, Element509, Element510, Element511
if TextButton6 then
    TextLabel16, TextLabel17, Children5 = ipairs(TextButton6:GetChildren())
    Element509, Element510 = TextLabel16(TextLabel17, Children5)
    if not (Element509 == nil) then
        Children5 = Element509
        while true do
            if not Element510:IsA("UIListLayout") and not Element510:IsA("UIPadding") then
                Element509, Element510 = TextLabel16(TextLabel17, Children5)
                if not (Element509 == nil) then
                    Children5 = Element509
                    continue
                end
            else
                Element509, Element510 = TextLabel16(TextLabel17, Children5)
                if Element509 == nil then
                    break
                else
                    Children5 = Element509
                    continue
                end
            end
            break
        end
    end
    TextLabel16 = Instance.TextLabel2("TextLabel")
    TextLabel16.Size = UDim2.TextLabel2(1, 0, 0, 25)
    TextLabel16.BackgroundTransparency = 1
    TextLabel16.Text = "Hotkeys (Keybinds)"
    TextLabel16.Font = Enum.Font.FredokaOne
    TextLabel16.TextSize = 16
    TextLabel16.TextColor3 = Color3.fromRGB(255, 255, 200)
    TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel16.Parent = TextButton6
    TextLabel17 = next
    Children5 = Connect
    Element510, Element511 = next(Connect, nil)
    if not (Element510 == nil) then
        Element509 = Element510
        while true do
            Element510, Element511 = TextLabel17(Children5, Element509)
            if Element510 ~= nil then
                Element509 = Element510
                continue
            end
            break
        end
    end
    TextLabel17 = Instance.TextLabel2("TextLabel")
    TextLabel17.Size = UDim2.TextLabel2(1, 0, 0, 20)
    TextLabel17.BackgroundTransparency = 1
    TextLabel17.Text = "Click 'Change', then press any key on your keyboard"
    TextLabel17.Font = Enum.Font.SourceSans
    TextLabel17.TextSize = 12
    TextLabel17.TextColor3 = Color3.fromRGB(180, 180, 180)
    TextLabel17.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel17.Parent = TextButton6
end

WheelBuild = addScreenGui
return false, 5, false, nil, Element292, Container, ProfileData, replicatedStorage, ItemModule, Element425, ItemPopupService, TradeGUI, PlayerGui, LocalPlayer3, nil, nil, Element426, Element68, Element260, Element427, Element429, Element431, Element433, Item2, Ref, Element, Element435, Element8, Element436, Rarity2, Element437, Table, false, Element438, Element439, computeValue10, Element182, Element443, Element444, 6, Element66, Element445, "Accept", 0, Element71, Element106, OnClientEvent, FakePlayers, Element234, processItems16, Element450, Element129, Element455, Element451, Element138, Element149, Element452, Element453, Element454, ScreenGui2, Screengui, UICorner11, UIStroke5, TextLabel13, TextLabel14, UIStroke6, Font2, Element462, Frame12, Element463, "Control", Element161, Element162, nil, Control3, players, Items2, Spawner, Values, TextButton6, FredokaOne, addFrame, createTextButton, createTextButton2, Control2, FillDirection, Element180, Element468, Element469, Bloxyking2008, Noobmaster69, Pixelknightz, Crimsonreaperx, Element465, Zerohavoc, Epicgamer_lol, Silentstorm_yt, Element466, Dragonhunter999, Skybreaker42, Vortexhaze, Phantomriderx, "Back", Toxicbubbles, UICorner12, UIStroke8, Element476, ApplyStrokeMode2, UICorner13, UIStroke9, Element477, Element478, Element235, Element236, Element479, TextLabel15, Textlabel2, GuiObject5, UICorner14, UIStroke10, UIListLayout5, UIPadding, Uipadding, Element480, Element482, Element484, Element486, Element488, Darkshot, Element496, Element490, Sakura, Gingerscope, Sunrise, Bauble, Evergreen, Evergun, Celestial, Constellation2, Turkey, Alienbeam, Evergreen2, Element491, Constellation, GuiObject12, Alienbeam2, Raygun, Element502, Uilistlayout, FillDirection2, Element286, Element322, UIListLayout2, Weapons, Font4, UIListLayout7, TextButton4, SourceSans, UICorner15, Element311, Element331, Element499, Element500, MouseButton1Click, PlayerAdded, HttpService, Element344, Httpservice, Element338, Element345, Element348, Element384, Element506, Element507, TextLabel10, Textlabel3, GuiObject18, processItems31, Uilistlayout2, FillDirection3, Job62, Job63, Connect, nil, findChild8, createFrame
end

local function spinHandler(Request154)
    local Element512, Element513, Element514, Cubic
    local function RenderStepped()
        local Element515, floor, Random8, Tween6, Elastic, Out3
        if not LocalPlayer2.spinning or not LocalPlayer2.image or not LocalPlayer2.image.Parent then
            Cubic = nil
            return
        else
            Element515 = LocalPlayer2.image.Rotation % 360
            floor = math.floor(Element515 / 72)
            if floor ~= Element513 then
                Element513 = floor
                if Element512 then
                    Random8 = math.random(8, 15)
                    Element512.Rotation = Element514 + Random8
                    Elastic = Enum.EasingStyle.Elastic
                    Out3 = Enum.EasingDirection.Out
                    Tween6 = TweenService:Create(Element512, TweenInfo.TextLabel2(0.25, Elastic, Out3), {Rotation = Element514}).Play
                    return Element515, floor, Random8
                end
            end
            return Element515, floor
        end
    end
    local function createTween()
        LocalPlayer2.spinning = false
        local Element516, Element517, Element518, Element519, Elastic2, Out4
        if Cubic then
            Cubic = nil
            Element516 = TweenService
            Element517 = Element512
            Elastic2 = Enum.EasingStyle.Elastic
            Out4 = Enum.EasingDirection.Out
            Element518 = TweenInfo.TextLabel2(0.3, Elastic2, Out4)
            Element519 = {}
        else
            return
        end
        Element519.Rotation = Element514
        Element516 = Element516:Create(Element517, Element518, Element519).Play
    end
    local EndPoints, Element520, Element521, Random9, Loser, Children6, Scale4, Element522, Random10, Element523, Element524, Random11, Element525, Element526, create, Out5
    if not (LocalPlayer2.spinning or not LocalPlayer2.image) then
        LocalPlayer2.spinning = true
        EndPoints = LocalPlayer2.image:FindFirstChild("EndPoints")
        if not EndPoints then
            LocalPlayer2.spinning = false
            return Request154, EndPoints
        else
            Element520 = {}
            Element521 = {}
            Random9, Loser, Children6 = ipairs(EndPoints:GetChildren())
            Scale4, Element522 = Random9(Loser, Children6)
            if not (Scale4 == nil) then
                Children6 = Scale4
                while true do
                    if Element522.Name == "Win"
                    Scale4, Element522 = Random9(Loser, Children6)
                    if not (Scale4 == nil) then
                        Children6 = Scale4
                        continue
                    end
                else
                    Scale4, Element522 = Random9(Loser, Children6)
                    if Scale4 == nil then
                        break
                    else
                        Children6 = Scale4
                        continue
                    end
                end
                break
            end
        end
        if Request154 == "lose"
        Random9 = Element521[math.Random10(1, #Element521)]
        Loser = "LOSER"
    elseif math.Random10(1, 100) <= (LocalPlayer2.winChance or 50) then
        Random9 = Element520[math.Random10(1, #Element520)]
        Loser = "WINNER!"
    else
        Random9 = Element521[math.Random10(1, #Element521)]
        Loser = "LOSER"
    end
    if not Random9 then
        LocalPlayer2.spinning = false
        return
    else
        Scale4 = Random9.Position.X.Scale
    end
    Children6 = Scale4 -0.5
    Scale4 = Random9.Position.Y.Scale -0.5
    Element522 = math.deg(math.atan2(Children6,-Scale4))
    if Element522 < 0 then
        Element522 = Element522 + 360
    end
    Random10 = math.Random10(-15, 15)
    Element523 =-Element522 + Random10
    Element524 = LocalPlayer2.image.Rotation % 360
    LocalPlayer2.image.Rotation = Element524
    Element513 = 10
    Element512 = 360
    Random11 = math.Random10(6, 10) * 360
    Element525 = Random11 + Element523
    while true do
        Element513 = 360
        Element512 = Element524 + 360
        if Element525 < Element512 then
            Element512 = 360
            Element525 = Element525 + 360
            continue
        end
        break
    end
    Element512 = LocalPlayer2.pointer
    Element514 = Element524 % 360 / 72
    Element513 = math.floor(Element514)
    Element514 = LocalPlayer2.pointerBaseRot or 0
    Cubic = Enum.EasingStyle.Cubic
    Out5 = Enum.EasingDirection.Out
    Element526 = TweenInfo.TextLabel2(5.5, Cubic, Out5)
    Cubic = TweenService
    create = TweenService:Create(LocalPlayer2.image, Element526, {Rotation = Element525})
    Cubic = game:GetService("RunService").RenderStepped:Connect(RenderStepped)
    return Request154, EndPoints, Element520, Element521, Random9, Loser, Children6, Scale4, Element522, Random10, Element523, Element524, Random11, Element525, Element512, Element513, Element514, Element526, create, Cubic
end

end

end

    LocalPlayer2 = _G
    TweenService = _G
    Wheel = _G.Wheel
    if not Wheel then
        local Element527 = {}
        TweenService = Element527
        Wheel = Element527
    end
    LocalPlayer2.Wheel = Wheel
    LocalPlayer2 = _G.Wheel
    LocalPlayer2.gui = nil
    LocalPlayer2.spinning = false
    LocalPlayer2.image = nil
    LocalPlayer2.result = nil
    LocalPlayer2.pointer = nil
    LocalPlayer2.pointerBaseRot = 0
    LocalPlayer2.winChance = 50
    LocalPlayer2.size = 1
    LocalPlayer2.mainFrame = nil
    LocalPlayer2.spinBtn = nil
    TweenService = game
    game:GetService("Players")
    TweenService = game:GetService("TweenService")
    game:GetService("UserInputService")
    StartMainScript = createScreenGui2
    LocalPlayer2.spin = spinHandler
end