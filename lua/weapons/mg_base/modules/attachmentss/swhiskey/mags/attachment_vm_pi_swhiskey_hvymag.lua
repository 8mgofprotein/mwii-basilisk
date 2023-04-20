ATTACHMENT.Base = "att_mags_swhiskey"
ATTACHMENT.Name = "Heavy SpeedLoader"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_maghvy.mdl")
ATTACHMENT.Bodygroups = {
    ["cylinder"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.96
    weapon.Animations.Reload0.Fps = weapon.Animations.Reload0.Fps * 0.9
    weapon.Animations.Reload1.Fps = weapon.Animations.Reload1.Fps * 0.9
	weapon.Animations.Reload2.Fps = weapon.Animations.Reload2.Fps * 0.9
	weapon.Animations.Reload3.Fps = weapon.Animations.Reload3.Fps * 0.9
	weapon.Animations.Reload4.Fps = weapon.Animations.Reload4.Fps * 0.9
	weapon.Animations.Reload5.Fps = weapon.Animations.Reload5.Fps * 0.9
end