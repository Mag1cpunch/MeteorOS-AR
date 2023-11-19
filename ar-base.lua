local arctrl = peripheral.find("arController")

local function update()
    arctrl.clear()
    arctrl.drawString("MeteorOS - Version 1.0", 0, 0, 2)
end