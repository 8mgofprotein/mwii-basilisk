ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FTAC Carnivora 7'"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_barhvlong.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_barhvylong.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.87
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.87
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.86
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.86
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.18
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.18
end