AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("MW19_Deagle.Fire_S")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_Pistol_Mag_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_Pistol_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

SWEP.Customization = {

    {"att_perk", "att_vm_pi_cpapa_soh", "att_perk_fmj", "att_perk_ricochet", "att_perk_fastswap"},

    {"att_receiver"},
	
    {"att_trigger_swhiskey", "attachment_vm_pi_swhiskey_hvytrigg", "attachment_vm_pi_swhiskey_hairtrigg"},
	
	{"att_ammo", "attachment_vm_pi_cpapa_loader_snake"},
	
    {"att_pistolgrip", "attachment_vm_pi_swhiskey_pistgriptac", "attachment_vm_pi_swhiskey_pistgripass", "attachment_vm_pi_swhiskey_pistgripstdy",},

    {"attachment_vm_pi_swhiskey_mag","attachment_vm_pi_swhiskey_lightmag","attachment_vm_pi_swhiskey_hvymag", },
    
    {"att_muzzle", "att_vm_flashhider01_pstl", "att_vm_compensator01_pstl", "att_vm_muzzlebrake01_pstl", "att_vm_oil_filter_suppressor","wp_atlas7",   "wp_awc762",   "wp_crs",  "wp_jcomp_g2",
    "wp_k556",     "wp_qdc",      "wp_red",  "wp_sio",
    "wp_ss338",    "wp_wave",     "wp_ttfx",  "wp_ttfx_1",
    "wp_ab",       "wp_ad9",      "wp_cs",    "wp_dg33",
	"wp_g4",       "wp_lwc",      "wp_pg3"},

    {"att_sight", "att_vm_minireddot01", "att_vm_minireddot02", "att_vm_minireddot03",
	"wp_510c",       "wp_6x",       "wp_512gd",       "wp_mw2_mini06",
	"wp_558",       "wp_acog",       "wp_553",       "wp_mw2_szbo",
	"wp_am4",       "wp_ars",       "wp_aems",       "wp_t1_lmo",
	"wp_lqd",       "wp_pbps",    
	"wp_pkas",       "wp_vk",      
	"wp_r1x",        "wp_tps330",
	"wp_r4t",       "wp_rg3",       "wp_cw_snappoint",       "wp_x8_mr45",
	"wp_r8t",       "wp_x3",       "wp_fc1",    
	"wp_sf2",       "wp_x5",       "wp_lco",      
	"wp_uh1",       "wp_mro_8",  "wp_acog_rm45"},

    {"att_vm_pi_swhiskey_barrel", "att_vm_pi_swhiskey_barrel_long", "att_vm_pi_swhiskey_barhvylong", "att_vm_pi_swhiskey_barmini", "att_vm_pi_swhiskey_barlight"},

    {"att_laser", "att_vm_pi_swhiskey_laser01", "att_vm_pi_swhiskey_laser02", "att_vm_pi_swhiskey_laser03"}
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils")
mw_utils.LoadInjectors(SWEP)   

--[[SWEP.Customization = {
    ["Barrel"] = {
        Slot = 4,
        {
            Key = "attachment_vm_pi_cpapa_barrel"
        },
        {
            Key = "attachment_vm_pi_cpapa_barrel_long",
            Stats = function(self)
                self.Customization.Laser[2].Bodygroups.laser_rail = 1
                self.Customization.Laser[3].Bodygroups.laser_rail = 1
                self.Customization.Laser[4].Bodygroups.laser_rail = 1
            end
        },
        {
            Key = "attachment_vm_pi_cpapa_shortbarrel",
            Stats = function(self)
                self.Customization.Laser[2].Bodygroups.laser_rail = 2
                self.Customization.Laser[3].Bodygroups.laser_rail = 2
                self.Customization.Laser[4].Bodygroups.laser_rail = 2
            end
        },       
        {
            Key = "attachment_vm_pi_cpapa_barrel_v2",
            Stats = function(self)
                self.Customization.Laser[2].Bodygroups.laser_rail = 0
                self.Customization.Laser[3].Bodygroups.laser_rail = 0
                self.Customization.Laser[4].Bodygroups.laser_rail = 0
            end
        }
    },
        ["Optic"] = {
            Slot = 5,
                {
                    Key = "no_optic",
                },
                {
                    Key = "attachment_vm_minireddot01",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    Stats = function(self)
                    self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.8)
                    end
                },
                {
                    Key = "attachment_vm_minireddot02",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    Stats = function(self)
                    self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.75)
                    end
                },      
                {
                    Key = "attachment_vm_minireddot03",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    Stats = function(self)
                    self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.75)
                    end
                }, 
                {
                    Key = "attachment_vm_reflex_west02_lod0",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    Stats = function(self)
                        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.95)
                    end
                },         
                {
                    Key = "attachment_vm_holo_west_lod0",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    VElement = {
                        Bone = "tag_reflex",
                        Position = Vector(0, 0, 0),
                        Angles = Angle(),
                        Offsets = { 
                            ["Barrel"] = {
                            }
                        }
                    },
                    Stats = function(self)
                        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.45)
                    end
                },         
                {
                    Key = "attachment_vm_reflex_east02_lod0",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    Stats = function(self)
                        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.05)
                    end
                },         
                {
                    Key = "attachment_vm_reflex_east",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    Stats = function(self)
                        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.3)
                    end
                },     
                {
                    Key = "attachment_vm_4x_east",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    VElement = {
                        Bone = "tag_reflex",
                        Position = Vector(0, 0, 0),
                        Angles = Angle(),
                        Offsets = { 
                            ["Barrel"] = {
                            }
                        }
                    },
                     Stats = function(self)
                        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.13, 0, -1.13)
                    end
                },        
                {
                    Key = "attachment_vm_4x_west",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    VElement = {
                        Bone = "tag_reflex",
                        Position = Vector(0, 0, 0),
                        Angles = Angle(),
                        Offsets = { 
                            ["Barrel"] = {
                            }
                        }
                    },
                     Stats = function(self)
                        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.015, 0, -1.22)
                    end
                },        
                {
                    Key = "attachment_vm_4x_west02",
                    Bodygroups = {
                        ["rail"] = 1
                    },
                    VElement = {
                        Bone = "tag_reflex",
                        Position = Vector(0, 0, 0),
                        Angles = Angle(),
                        Offsets = { 
                            ["Barrel"] = {
                            }
                        }
                    },
                     Stats = function(self)
                        self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.11)
                    end
                }
            },

            ["Laser"] = {
                Slot = 6,
                {
                    Key = "no_laser",
                },
                {
                    Key = "attachment_vm_laser_pstl",
                    VElement = {
                        Bone = "tag_laser_attach",
                        Position = Vector(0, 0, 0),
                        Angles = Angle(),
                        Offsets = { 
                            ["Barrel"] = {
                                [2] = {Vector(0, 0, 0), Angle()},
                                [3] = {Vector(0, 0, 0), Angle()},
                                [4] = {Vector(0, 0, 0), Angle()}
                            }
                        }
                    },
                    Bodygroups = {
                        ["laser_rail"] = 1
                    },
                      Stats = function(self)
                    end
                },
                {
                    Key = "attachment_vm_laser_pstl03",
                    VElement = {
                        Bone = "tag_laser_attach",
                        Position = Vector(0, 0, 0),
                        Angles = Angle(),
                        Offsets = { 
                            ["Barrel"] = {
                                [2] = {Vector(0, 0, 0), Angle()},
                                [3] = {Vector(0, 0, 0), Angle()},
                                [4] = {Vector(0, 0, 0), Angle()}
                            }
                        }
                    },
                    Bodygroups = {
                        ["laser_rail"] = 1
                    },
                    Stats = function(self)
                    end
                },       
                {
                    Key = "attachment_vm_laser_pstl04",
                    VElement = {
                        Bone = "tag_laser_attach",
                        Position = Vector(0, 0, 0),
                        Angles = Angle(),
                        Offsets = { 
                            ["Barrel"] = {
                                [2] = {Vector(0, 0, 0), Angle()},
                                [3] = {Vector(0, 0, 0), Angle()},
                                [4] = {Vector(0, 0, 0), Angle()}
                            }
                        }
                    },
                    Bodygroups = {
                        ["laser_rail"] = 1
                    },
                    Stats = function(self)
                    end
                }
            },

    ["Muzzle"] = {
        Slot = 3,
        {
            Key = "no_muzzle",
        },
        {
            Key = "attachment_vm_flashhider_psl01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 1.85, 0), Angle()},
                        [3] = {Vector(0, -1, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },             
        {
            Key = "attachment_vm_muzzlebrake_pstl01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 1.85, 0), Angle()},
                        [3] = {Vector(0, -1, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },  
        {
            Key = "attachment_vm_compensator_pstl01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 1.85, 0), Angle()},
                        [3] = {Vector(0, -1, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },
   },

   ["Perk"] = {
    Slot = 1,
    {
        Key = "no_perk",
    },
    {
        Key = "perk_soh",
        Stats = function(self)
            self.Animations.Reload = self.Animations.Reload_Fast
            self.Animations.Reload_Empty = self.Animations.Reload_Empty_Fast                
            self.Animations.Reload_XmagLrg = self.Animations.Reload_XmagLrg_Fast
            self.Animations.Reload_Empty_XmagLrg = self.Animations.Reload_Empty_XmagLrg_Fast
            self.Animations.Reload_Xmag = self.Animations.Reload_Xmag_Fast
            self.Animations.Reload_Empty_Xmag = self.Animations.Reload_Empty_Xmag_Fast
        end
    },
    {
        Key = "perk_fastmelee",
        Stats = function(self)
        end
    },
    {
        Key = "perk_heavymelee",
        Stats = function(self)
        end
    },
    {
        Key = "perk_fmj",
        Stats = function(self)
        end
    }
},

   ["Grip"] = {
    Slot = 2,
    {
        Key = "attachment_vm_pi_cpapa_grip",
        Stats = function(self)
        end
    },
    {
        Key = "attachment_vm_pi_cpapa_grip_stock",
        Stats = function(self)
        end
    },
    {
        Key = "attachment_vm_pi_cpapa_stockl",
        Stats = function(self)
        end
    },
 },

    -- ["Camo"] = {
    --     Slot = 8,
    --     {
    --         Key = "no_camo",
    --     },
    --     {
    --         Key = "camo_jermasus",
    --         Stats = function(self)
    --         end
    --     },
    --     {
    --         Key = "camo_digital",
    --         Stats = function(self)
    --         end
    --     }
    -- },
}

]]