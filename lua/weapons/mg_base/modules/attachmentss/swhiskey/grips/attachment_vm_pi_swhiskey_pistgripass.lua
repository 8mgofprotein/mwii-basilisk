ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Bryson WD-85 Grip"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_gripass.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_gripass.vmt")
ATTACHMENT.Bodygroups = {
    ["pgrip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end