ATTACHMENT.Base = "att_trigger_swhiskey"
ATTACHMENT.Name = "Hair Trigger"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_trighair.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/p220/icon_gripass.vmt")
ATTACHMENT.Bodygroups = {
    ["trigger"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Trigger.Time = 0.0005
	weapon.Primary.RPM = 200
end