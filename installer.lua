if fs.exists("/ar-base.lua") then
    term.write("Applying an update...")
    os.sleep(1)
    term.write("Deleted old ar-base.lua...")
    fs.delete("/ar-base.lua")
    os.sleep(1)
end
if fs.exists("/startup.lua") then
    term.write("Deleted old startup.lua...")
    fs.delete("/startup.lua")
    os.sleep(1)
end
term.write("Installing ar-base.lua...")
os.sleep(1)
shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/MeteorOS-AR/main/ar-base.lua")
term.write("\nInstalled")
os.sleep(1)
term.write("\nInstalling startup.lua...")
os.sleep(1)
shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/MeteorOS-AR/main/startup.lua")
term.write("\nInstalled")
os.sleep(1)
term.write("\nRebooting...")
os.sleep(3)
os.reboot()