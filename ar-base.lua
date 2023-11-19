local arctrl = peripheral.find("arController")
local plrdtc = peripheral.find("playerDetector")

local function update()
    arctrl.clear()
    arctrl.drawString("MeteorOS - Version 1.0", 0, 0, 255)
    if plrdtc then
        local plrs = plrdtc.getPlayersInRange(20)
        local postable = {}
        if next(plrs) == nil then
            arctrl.drawString("No players in range", 0, -1, 255)
        else
            for i in ipairs(plrs) do
                local plrpos = plrs.getPosition(i)
                table.insert(postable, i..": X:"..plrpos.x..", Y:"..plrpos.y)
                os.sleep(0.1)
            end
        end
        arctrl.drawString(postable, 0, 1, 255)
    end
end

while true do
    update()
    os.sleep(0.01)
end