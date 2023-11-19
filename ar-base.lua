local arctrl = peripheral.find("arController")
local plrdtc = peripheral.find("playerDetector")

local function update()
    arctrl.clear()
    arctrl.drawString("MeteorOS - Version 1.0", 0, 0, 255)

    if plrdtc then
        local plrs = plrdtc.getOnlinePlayers()
        local postable = {}

        if not next(plrs) then
            arctrl.drawString("No players in range", 0, -1, 255)
        else
            for _, playerName in ipairs(plrs) do
                local plrpos = plrdtc.getPlayerPos(playerName)
                table.insert(postable, playerName .. ": X:" .. plrpos.x .. ", Y:" .. plrpos.y)
                os.sleep(0.1)
            end
            local joinedString = table.concat(postable, "\n")
            arctrl.drawString(joinedString, 0, 15, 255)
        end
    end
end

while true do
    update()
    os.sleep(2)
end
