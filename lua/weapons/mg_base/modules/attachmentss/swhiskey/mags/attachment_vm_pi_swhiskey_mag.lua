ATTACHMENT.Base = "att_mags_swhiskey"
ATTACHMENT.Name = "defoomag"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end