ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "10.5' FTAC Arrow"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_barlong.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_barlong.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.08
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.08
end