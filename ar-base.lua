local arctrl = peripheral.find("arController")
local plrdtc = peripheral.find("playerDetector")

--Update the glasses display every 2 seconds
local function update()
    arctrl.clear()
    arctrl.drawString("MeteorOS - Version 1.0", 260, 0, 0xff6e0a)

    local timer = os.startTimer(1)
    local event, id
    repeat
        event, id = os.pullEvent("timer")
    until id == timer
    arctrl.drawRightboundString(os.date(), 300, 0, 0x99ff07)

    if plrdtc then
        local plrs = plrdtc.getOnlinePlayers()
        local postable = {}

        if not next(plrs) then
            arctrl.drawString("No players found", 240, -1, 0xff5951)
        else
            for _, playerName in ipairs(plrs) do
                local plrpos = plrdtc.getPlayerPos(playerName)
                table.insert(postable,playerName .. ": X:" .. plrpos.x .. ", Y:" .. plrpos.y..", Z:".. plrpos.z)
                os.sleep(0.1)
            end
            local joinedString = table.concat(postable, "\n")
            arctrl.drawString("Server Players: "..joinedString, 240, 15, 0x51fffa)
        end
    end
end

while true do
    update()
    os.sleep(2)
end
