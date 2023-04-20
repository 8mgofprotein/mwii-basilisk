ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Mini"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_barmini.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_barrel_long.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Cone.Hip =  weapon.Cone.Hip * 1.1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.2
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.12
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.12
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.86
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.86
end