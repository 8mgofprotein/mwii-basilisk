ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Light"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_swhiskey_barlight.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_barrel_long.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Cone.Hip =  weapon.Cone.Hip * 1.05
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.87
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.87
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.89
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.89
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.9
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.9
end