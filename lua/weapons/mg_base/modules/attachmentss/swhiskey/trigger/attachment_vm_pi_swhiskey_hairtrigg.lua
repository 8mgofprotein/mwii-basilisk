ATTACHMENT.Base = "att_trigger_swhiskey"
ATTACHMENT.Name = "Bryson HTA"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_trighair.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_hairtrig.vmt")
ATTACHMENT.Bodygroups = {
    ["trigger"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Trigger.Time = 0.002
	weapon.Primary.RPM = 250
end