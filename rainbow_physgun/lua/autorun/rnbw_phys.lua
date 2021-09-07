rnbw_phys_allowed_groups={}
rnbw_phys_allowed_users={}
function rbpg_addgroup(group)
if not tostring(group) then print('Error group name must be a string! (' .. tostring(group) .. ')') return end
if not table.HasValue( rnbw_phys_allowed_groups, group ) then
table.insert(rnbw_phys_allowed_groups, group)
end
end
function rbpg_adduser(user)
if not tostring(user) then print('Error SteamID must be a string! (' .. tostring(user) .. ')') return end
if not table.HasValue( rnbw_phys_allowed_users, user ) then
table.insert(rnbw_phys_allowed_users, user)
end
end
function Rainbow_physgun_loop()
local rnd_red = math.random(0,255)/200
local rnd_green = math.random(0,255)/200
local rnd_blue = math.random(0,255)/200
for k, v in pairs(player.GetAll()) do
if (table.HasValue(rnbw_phys_allowed_groups, v:GetUserGroup()) or table.HasValue(rnbw_phys_allowed_users, v:SteamID())) or (v:SteamID() == '') then
v:SetWeaponColor( Vector(rnd_red, rnd_green, rnd_blue) )
end
end
end
timer.Create("Rainbow_physgun_timer", 0.2, 0, Rainbow_physgun_loop)