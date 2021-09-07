
function AddGroups()
if not SERVER then return end
--  ranks
rbpg_addgroup('founder')
rbpg_addgroup('superadmin')
rbpg_addgroup('kurator')
rbpg_addgroup('depkurator')
rbpg_addgroup('hightadmin')
rbpg_addgroup('platinum')
end
hook.Add( "Initialize", "load rbpg groups", AddGroups);