if fs.exists("/ar-base.lua") then
    term.write("Deleted old ar-base.lua...")
    fs.delete("/ar-base.lua")
end
if fs.exists("/startup.lua") then
    term.write("Deleted old startup.lua...")
    fs.delete("/startup.lua")
end
term.write("Installing ar-base.lua...")
shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/MeteorOS-AR/main/ar-base.lua")
term.write("\nInstalled")
os.sleep(1)
term.write("\nInstalling startup.lua...")
shell.run("wget https://raw.githubusercontent.com/Mag1cpunch/MeteorOS-AR/main/startup.lua")
term.write("\nInstalled")
term.write("\nRebooting...")
os.sleep(3)
os.reboot()