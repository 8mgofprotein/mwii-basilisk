ATTACHMENT.Base = "att_mags_swhiskey"
ATTACHMENT.Name = "Light SpeedLoader"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_maglight.mdl")
ATTACHMENT.Bodygroups = {
    ["cylinder"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.03
    weapon.Animations.Reload0.Fps = weapon.Animations.Reload0.Fps * 1.2
    weapon.Animations.Reload1.Fps = weapon.Animations.Reload1.Fps * 1.2
	weapon.Animations.Reload2.Fps = weapon.Animations.Reload2.Fps * 1.2
	weapon.Animations.Reload3.Fps = weapon.Animations.Reload3.Fps * 1.2
	weapon.Animations.Reload4.Fps = weapon.Animations.Reload4.Fps * 1.2
	weapon.Animations.Reload5.Fps = weapon.Animations.Reload5.Fps * 1.2
end