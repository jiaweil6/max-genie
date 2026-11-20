{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 106.0, 1732.0, 968.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-136",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "ljw-chorus.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1958.0, 498.66668152809143, 105.0, 138.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 334.0, 188.84210395812988, 105.0, 138.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 24.0,
                    "id": "obj-118",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2798.3332666158676, 1248.3333035707474, 292.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1048.0, 145.84210395812988, 292.0, 35.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_needle"
                        }
                    },
                    "text": "Custom Style",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-155",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1042.2222719192505, 1124.4444980621338, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1349.0, 893.5404777526855, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1391.5, 1063.0, 55.0, 22.0 ],
                    "text": "mode $1"
                }
            },
            {
                "box": {
                    "activebgoncolor": [ 0.101960784313725, 0.490196078431373, 0.945098039215686, 1.0 ],
                    "bgoncolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "bordercolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "focusbordercolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "fontsize": 13.0,
                    "id": "obj-148",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 2,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1349.0, 941.0, 104.0, 71.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1306.0, 190.0, 58.0, 131.0 ],
                    "saved_attribute_attributes": {
                        "activebgoncolor": {
                            "expression": "themecolor.live_prelisten"
                        },
                        "bgoncolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "focusbordercolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "valueof": {
                            "parameter_enum": [ "major", "minor" ],
                            "parameter_longname": "live.tab[4]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab[3]"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1239.0, 1150.0, 50.0, 22.0 ],
                    "text": "style $1"
                }
            },
            {
                "box": {
                    "activebgoncolor": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "bgoncolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "bordercolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "focusbordercolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "fontsize": 13.0,
                    "id": "obj-143",
                    "maxclass": "live.tab",
                    "num_lines_patching": 4,
                    "num_lines_presentation": 4,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1196.0, 940.5404777526855, 105.0, 183.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1193.0, 190.0, 103.0, 130.0 ],
                    "saved_attribute_attributes": {
                        "activebgoncolor": {
                            "expression": "themecolor.live_value_bar2"
                        },
                        "bgoncolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "focusbordercolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "valueof": {
                            "parameter_enum": [ "classical", "jazz", "jpop", "genie" ],
                            "parameter_longname": "live.tab[3]",
                            "parameter_mmax": 3,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab[2]"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1196.0, 893.5404777526855, 70.0, 22.0 ],
                    "text": "loadmess 3"
                }
            },
            {
                "box": {
                    "activebgoncolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                    "bgoncolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "bordercolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "focusbordercolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "fontsize": 13.0,
                    "id": "obj-142",
                    "maxclass": "live.tab",
                    "num_lines_patching": 6,
                    "num_lines_presentation": 6,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1042.3078240156174, 940.5404777526855, 99.99999117851257, 173.4848331809044 ],
                    "presentation": 1,
                    "presentation_rect": [ 1027.0, 190.96052598953247, 156.0, 128.03947401046753 ],
                    "saved_attribute_attributes": {
                        "activebgoncolor": {
                            "expression": "themecolor.live_gain_reduction_line_color"
                        },
                        "bgoncolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "focusbordercolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "valueof": {
                            "parameter_enum": [ "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B" ],
                            "parameter_longname": "live.tab[2]",
                            "parameter_mmax": 11,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab[1]"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1042.3078240156174, 1156.6667218208313, 44.0, 22.0 ],
                    "text": "key $1"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 852.5925646424294, 893.8518534302711, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-170",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1042.3078240156174, 893.0394276976585, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1506.250071823597, 753.3333557844162, 116.0, 22.0 ],
                    "text": "route noteon noteoff"
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1681.9445246458054, 607.638917863369, 95.0, 22.0 ],
                    "text": "noteoff $1 $2 $3"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1506.250071823597, 607.638917863369, 95.0, 22.0 ],
                    "text": "noteon $1 $2 $3"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1506.250071823597, 711.3333545327187, 109.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "style_arranger.js",
                        "parameter_enable": 0
                    },
                    "text": "js style_arranger.js"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 852.5925646424294, 1298.2962846159935, 52.0, 22.0 ],
                    "text": "s voices"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 752.5925679206848, 1219.7777686715126, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 852.5925646424294, 1264.962952375412, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 852.5925646424294, 1219.7777686715126, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "activebgoncolor": [ 0.0, 0.854901960784314, 0.282352941176471, 1.0 ],
                    "bgoncolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "bordercolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "focusbordercolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                    "fontsize": 13.0,
                    "id": "obj-115",
                    "maxclass": "live.tab",
                    "num_lines_patching": 4,
                    "num_lines_presentation": 4,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 852.5925646424294, 942.0, 128.06049966812134, 264.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 788.0, 135.0, 182.0, 209.0 ],
                    "saved_attribute_attributes": {
                        "activebgoncolor": {
                            "expression": "themecolor.live_macro_assignment"
                        },
                        "bgoncolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "focusbordercolor": {
                            "expression": "themecolor.live_control_bg"
                        },
                        "valueof": {
                            "parameter_enum": [ "piano", "violin", "organ", "guitar" ],
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 3,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "id": "obj-209",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1778.7877918481827, 1071.7171193361282, 77.0, 22.0 ],
                    "text": "loadmess 20"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Toppan Bunkyu Gothic Demibold",
                    "fontsize": 38.0,
                    "id": "obj-207",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2438.492196559906, 1550.0, 618.0, 44.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 440.5, 58.0, 618.0, 44.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_needle"
                        }
                    },
                    "text": "Piano Genie Max Edition",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 13.0,
                    "id": "obj-206",
                    "linecount": 12,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2352.492196559906, 1474.0, 177.0, 194.0 ],
                    "presentation": 1,
                    "presentation_linecount": 5,
                    "presentation_rect": [ 1009.0, 388.0, 372.0, 85.0 ],
                    "text": "This patch is based on Piano Genie, developed by Chris Donahue. It is a machine learning model trained on a large set of piano compositions. It maps 8 keys on your keyboard to all 88 piano keys, allowing you to create musical and expressive performances using just 8 keys. Give it a try!"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 24.0,
                    "id": "obj-205",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2530.492196559906, 1156.0, 292.0, 35.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_needle"
                        }
                    },
                    "text": "UI Stuff",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-202",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2502.492196559906, 1334.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 993.0, 369.0, 402.0, 124.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 13.0,
                    "id": "obj-201",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2880.492196559906, 1468.0, 160.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 196.3522117137909, 211.46202325820923, 92.85714507102966, 22.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_needle"
                        }
                    },
                    "text": "On/Off",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 13.0,
                    "id": "obj-200",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2692.492196559906, 1484.0, 160.0, 22.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 100.19941055774689, 203.46202325820923, 92.1052622795105, 38.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_needle"
                        }
                    },
                    "text": "Connect to your keyboard",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 24.0,
                    "id": "obj-199",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2730.492196559906, 1412.0, 292.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 49.333339154720306, 146.8354411125183, 292.0, 35.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_needle"
                        }
                    },
                    "text": "I/O",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 24.0,
                    "id": "obj-197",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2736.492196559906, 1318.0, 292.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 390.0, 145.84210395812988, 292.0, 35.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_needle"
                        }
                    },
                    "text": "Effects",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "id": "obj-193",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2502.492196559906, 1272.0, 150.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 713.0, 304.8421039581299, 71.0, 21.0 ],
                    "text": "Dry"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "id": "obj-192",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2502.492196559906, 1242.0, 155.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 713.0, 183.84210395812988, 73.0, 21.0 ],
                    "text": "Wet"
                }
            },
            {
                "box": {
                    "id": "obj-190",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2164.0, 748.0, 92.19858348369598, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 263.8421039581299, 92.19858348369598, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.dial[6]",
                            "parameter_mmax": 1000.0,
                            "parameter_mmin": 200.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "HP Cutoff",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2164.0, 708.0, 83.0, 22.0 ],
                    "text": "loadmess 300"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 2052.0, 860.0, 50.5, 22.0 ],
                    "text": "svf~"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 1958.0, 860.0, 50.5, 22.0 ],
                    "text": "svf~"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "obj-130",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3760.60572886467, 763.6362962722778, 26.000000774860382, 54.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 906.8631744682789, 403.97429198026657, 26.000000774860382, 54.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "8\n;",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "obj-129",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3542.4239299297333, 763.6362962722778, 26.000000774860382, 54.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 796.1632326841354, 403.7714956998825, 26.000000774860382, 54.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "7\nl",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "obj-128",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3348.4845530986786, 763.6362962722778, 26.000000774860382, 54.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 684.8101176023483, 403.79746305942535, 26.000000774860382, 54.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "6\nk",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "obj-127",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3148.4845707416534, 763.6362962722778, 26.000000774860382, 54.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 575.949359536171, 403.79746305942535, 26.000000774860382, 54.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "5\nj",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "obj-126",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2966.6664049625397, 763.6362962722778, 26.000000774860382, 54.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 465.8227787017822, 403.79746305942535, 26.000000774860382, 54.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "4\nf",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "obj-125",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2769.6967253684998, 763.6362962722778, 26.000000774860382, 54.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 355.6961978673935, 403.79746305942535, 26.000000774860382, 54.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "3\nd",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "obj-124",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2584.8482568264008, 763.6362962722778, 26.000000774860382, 54.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 246.83543980121613, 405.0632858276367, 26.000000774860382, 54.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "2\ns",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 20.0,
                    "id": "obj-123",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2393.9391827583313, 763.6362962722778, 26.000000774860382, 54.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 137.97468173503876, 405.0632858276367, 26.000000774860382, 54.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "1\na",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3648.4845266342163, 551.5151028633118, 77.0, 22.0 ],
                    "text": "loadmess 22"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3730.3027012348175, 551.5151028633118, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3769.6966371536255, 551.5151028633118, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "attr": "rounded",
                    "id": "obj-88",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3721.211792945862, 642.4241857528687, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-89",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3721.211792945862, 606.0605525970459, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3430.30272769928, 551.5151028633118, 77.0, 22.0 ],
                    "text": "loadmess 22"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3227.2724425792694, 551.5151028633118, 77.0, 22.0 ],
                    "text": "loadmess 22"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3036.3633685112, 551.5151028633118, 77.0, 22.0 ],
                    "text": "loadmess 22"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2851.514899969101, 551.5151028633118, 77.0, 22.0 ],
                    "text": "loadmess 22"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2654.545220375061, 551.5151028633118, 77.0, 22.0 ],
                    "text": "loadmess 22"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2469.696751832962, 551.5151028633118, 77.0, 22.0 ],
                    "text": "loadmess 22"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2266.6664667129517, 551.5151028633118, 77.0, 22.0 ],
                    "text": "loadmess 22"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3515.151205062866, 551.5151028633118, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3551.514838218689, 551.5151028633118, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "attr": "rounded",
                    "id": "obj-75",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3503.0299940109253, 642.4241857528687, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-76",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3503.0299940109253, 606.0605525970459, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3318.1815254688263, 551.5151028633118, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3354.545158624649, 551.5151028633118, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "attr": "rounded",
                    "id": "obj-71",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3306.0603144168854, 642.4241857528687, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-72",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3306.0603144168854, 606.0605525970459, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3121.2118458747864, 551.5151028633118, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 3157.575479030609, 551.5151028633118, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "attr": "rounded",
                    "id": "obj-67",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3109.0906348228455, 642.4241857528687, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-68",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3109.0906348228455, 606.0605525970459, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2933.333074569702, 551.5151028633118, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2972.72701048851, 551.5151028633118, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "attr": "rounded",
                    "id": "obj-63",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2924.2421662807465, 642.4241857528687, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-64",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2924.2421662807465, 606.0605525970459, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2739.3936977386475, 551.5151028633118, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2775.75733089447, 551.5151028633118, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "attr": "rounded",
                    "id": "obj-58",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2727.2724866867065, 642.4241857528687, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-59",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2727.2724866867065, 606.0605525970459, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2554.5452291965485, 551.5151028633118, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2593.9391651153564, 551.5151028633118, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "attr": "rounded",
                    "id": "obj-53",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2545.454320907593, 642.4241857528687, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-54",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2545.454320907593, 606.0605525970459, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2363.636155128479, 551.5151028633118, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2399.9997882843018, 551.5151028633118, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "attr": "rounded",
                    "id": "obj-44",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2351.514944076538, 642.4241857528687, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2351.514944076538, 606.0605525970459, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "bgfillcolor",
                    "id": "obj-2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3721.211792945862, 675.7575161457062, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.987719444392034, 0.772809765725725, 0.723525810589731, 1.0 ],
                    "bordercolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "id": "obj-4",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3721.211792945862, 724.2423603534698, 108.08080279827118, 130.30302393436432 ],
                    "presentation": 1,
                    "presentation_rect": [ 865.8227734565735, 365.8227800130844, 108.08080279827118, 130.30302393436432 ],
                    "proportion": 0.0,
                    "rounded": 22,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.theme_syntax_attrargcolor"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "bgfillcolor",
                    "id": "obj-33",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3503.0299940109253, 675.7575161457062, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.745098, 0.596078, 1.0, 1.0 ],
                    "bordercolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "id": "obj-34",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3503.0299940109253, 724.2423603534698, 108.08080279827118, 130.30302393436432 ],
                    "presentation": 1,
                    "presentation_rect": [ 755.6504145860672, 365.8227800130844, 108.08080279827118, 130.30302393436432 ],
                    "proportion": 0.0,
                    "rounded": 22,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_scale_awareness"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "bgfillcolor",
                    "id": "obj-31",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3309.0906171798706, 675.7575161457062, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.101960784313725, 0.490196078431373, 0.945098039215686, 1.0 ],
                    "bordercolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "id": "obj-32",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3309.0906171798706, 724.2423603534698, 108.08080279827118, 130.30302393436432 ],
                    "presentation": 1,
                    "presentation_rect": [ 645.569611787796, 365.8227800130844, 108.08080279827118, 130.30302393436432 ],
                    "proportion": 0.0,
                    "rounded": 22,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_prelisten"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "bgfillcolor",
                    "id": "obj-29",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3109.0906348228455, 675.7575161457062, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                    "bordercolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "id": "obj-30",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3109.0906348228455, 724.2423603534698, 108.08080279827118, 130.30302393436432 ],
                    "presentation": 1,
                    "presentation_rect": [ 535.4430309534073, 365.8227800130844, 108.08080279827118, 130.30302393436432 ],
                    "proportion": 0.0,
                    "rounded": 22,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.theme_color"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "bgfillcolor",
                    "id": "obj-26",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2924.2421662807465, 675.7575161457062, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 0.0, 0.980392156862745, 0.63921568627451, 1.0 ],
                    "bordercolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "id": "obj-28",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2924.2421662807465, 724.2423603534698, 108.08080279827118, 130.30302393436432 ],
                    "presentation": 1,
                    "presentation_rect": [ 425.31645011901855, 365.8227800130844, 108.08080279827118, 130.30302393436432 ],
                    "proportion": 0.0,
                    "rounded": 22,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_play"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "bgfillcolor",
                    "id": "obj-24",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2730.3027894496918, 675.7575161457062, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                    "bordercolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "id": "obj-25",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2730.3027894496918, 724.2423603534698, 108.08080279827118, 130.30302393436432 ],
                    "presentation": 1,
                    "presentation_rect": [ 316.4556920528412, 365.8227800130844, 108.08080279827118, 130.30302393436432 ],
                    "proportion": 0.0,
                    "rounded": 22,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_display_handle_one"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "bgfillcolor",
                    "id": "obj-22",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2545.454320907593, 675.7575161457062, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 1.0, 0.490196078431373, 0.262745098039216, 1.0 ],
                    "bordercolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "id": "obj-23",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2545.454320907593, 724.2423603534698, 108.08080279827118, 130.30302393436432 ],
                    "presentation": 1,
                    "presentation_rect": [ 206.32911121845245, 367.0886027812958, 108.08080279827118, 130.30302393436432 ],
                    "proportion": 0.0,
                    "rounded": 22,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_alert"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "bgfillcolor",
                    "id": "obj-15",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2351.514944076538, 675.7575161457062, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "bgcolor": [ 1.0, 0.349019607843137, 0.372549019607843, 1.0 ],
                    "bordercolor": [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
                    "id": "obj-21",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2351.514944076538, 724.2423603534698, 108.08080279827118, 130.30302393436432 ],
                    "presentation": 1,
                    "presentation_rect": [ 94.93670761585236, 367.0886027812958, 108.08080279827118, 130.30302393436432 ],
                    "proportion": 0.0,
                    "rounded": 22,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_record"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_contrast_frame"
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1706.0605226755142, 1177.7777202129364, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1706.0605226755142, 1119.191864490509, 195.6896654367447, 43.96551954746246 ],
                    "presentation": 1,
                    "presentation_rect": [ 664.0, 187.84210395812988, 47.33333474397659, 138.4000020623207 ],
                    "size": 101.0
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1576.7675997018814, 1230.3029701709747, 99.0, 22.0 ],
                    "text": "blr-drywet-stereo"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1416.161546945572, 1230.3029701709747, 74.0, 22.0 ],
                    "text": "loadmess -6"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1516.161542057991, 1318.1817537546158, 119.0, 130.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "master",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-20",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "ljw-reverb.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1997.0, 939.0, 107.42006152868271, 66.66666805744171 ],
                    "presentation": 1,
                    "presentation_rect": [ 545.0, 191.84210395812988, 105.0, 76.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-61",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "ljw-stereodelay.maxpat",
                    "numinlets": 6,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1958.0, 669.0, 139.20000207424164, 138.4000020623207 ],
                    "presentation": 1,
                    "presentation_rect": [ 425.0, 187.84210395812988, 139.20000207424164, 138.4000020623207 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1682.2500770688057, 911.3333604931831, 132.0, 22.0 ],
                    "text": "target $1, noteoff $2 $3"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1682.2500770688057, 859.3333589434624, 52.0, 22.0 ],
                    "text": "pack i i i"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 1682.2500770688057, 811.3333575129509, 65.0, 22.0 ],
                    "text": "unpack i i i"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1506.250071823597, 859.3333589434624, 52.0, 22.0 ],
                    "text": "pack i i i"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1506.250071823597, 911.3333604931831, 133.0, 22.0 ],
                    "text": "target $1, noteon $2 $3"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 1506.250071823597, 811.3333575129509, 65.0, 22.0 ],
                    "text": "unpack i i i"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 1506.060473203659, 551.5151028633118, 238.0, 22.0 ],
                    "text": "route ready noteon noteoff error reset temp"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1513.1312391757965, 1509.0908353328705, 51.62881642580032, 51.62881642580032 ],
                    "presentation": 1,
                    "presentation_rect": [ 213.99888914823532, 245.56961703300476, 57.56379020214081, 57.56379020214081 ]
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1048.4847559928894, 421.2120840549469, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 117.00034129619598, 245.099811732769, 58.503400802612305, 58.503400802612305 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1048.4847559928894, 466.66662549972534, 76.0, 22.0 ],
                    "text": "ljw-controller"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1206.0604996681213, 430.3029923439026, 62.0, 22.0 ],
                    "text": "temp 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1151.5150499343872, 430.3029923439026, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-12",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "n4m.monitor.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 948.8483715057373, 583.0, 400.0, 220.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1369.6968488693237, 430.3029923439026, 63.0, 22.0 ],
                    "text": "script stop"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1284.8483715057373, 430.3029923439026, 64.0, 22.0 ],
                    "text": "script start"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1506.060473203659, 493.9393503665924, 213.0, 22.0 ],
                    "saved_object_attributes": {
                        "autostart": 1,
                        "defer": 0,
                        "watch": 0
                    },
                    "text": "node.script pianogenie.js @autostart 1",
                    "textfile": {
                        "filename": "pianogenie.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2109.0907230377197, 236.3636155128479, 51.0, 22.0 ],
                    "text": "r down7"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2027.2725484371185, 236.3636155128479, 51.0, 22.0 ],
                    "text": "r down6"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1951.5149793624878, 236.3636155128479, 51.0, 22.0 ],
                    "text": "r down5"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1881.8180158138275, 236.3636155128479, 51.0, 22.0 ],
                    "text": "r down4"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1809.090749502182, 236.3636155128479, 51.0, 22.0 ],
                    "text": "r down3"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1739.3937859535217, 236.3636155128479, 51.0, 22.0 ],
                    "text": "r down2"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1666.6665196418762, 236.3636155128479, 51.0, 22.0 ],
                    "text": "r down1"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2618.1815872192383, 236.3636155128479, 36.0, 22.0 ],
                    "text": "r up7"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2563.636137485504, 236.3636155128479, 36.0, 22.0 ],
                    "text": "r up6"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2512.1209905147552, 236.3636155128479, 36.0, 22.0 ],
                    "text": "r up5"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2454.545238018036, 236.3636155128479, 36.0, 22.0 ],
                    "text": "r up4"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2399.9997882843018, 236.3636155128479, 36.0, 22.0 ],
                    "text": "r up3"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2345.4543385505676, 236.3636155128479, 36.0, 22.0 ],
                    "text": "r up2"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2284.848283290863, 236.3636155128479, 36.0, 22.0 ],
                    "text": "r up1"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1593.9392533302307, 236.3636155128479, 51.0, 22.0 ],
                    "text": "r down0"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2590.908862352371, 303.03027629852295, 32.0, 22.0 ],
                    "text": "up 7"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2539.3937153816223, 303.03027629852295, 32.0, 22.0 ],
                    "text": "up 6"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2487.8785684108734, 303.03027629852295, 32.0, 22.0 ],
                    "text": "up 5"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2436.3634214401245, 303.03027629852295, 32.0, 22.0 ],
                    "text": "up 4"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2381.8179717063904, 303.03027629852295, 32.0, 22.0 ],
                    "text": "up 3"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2330.3028247356415, 303.03027629852295, 32.0, 22.0 ],
                    "text": "up 2"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2275.7573750019073, 303.03027629852295, 32.0, 22.0 ],
                    "text": "up 1"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2224.2422280311584, 303.03027629852295, 32.0, 22.0 ],
                    "text": "up 0"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2221.211925268173, 236.3636155128479, 36.0, 22.0 ],
                    "text": "r up0"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2109.0907230377197, 290.90906524658203, 47.0, 22.0 ],
                    "text": "down 7"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2027.2725484371185, 290.90906524658203, 47.0, 22.0 ],
                    "text": "down 6"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1954.545282125473, 290.90906524658203, 47.0, 22.0 ],
                    "text": "down 5"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1878.7877130508423, 290.90906524658203, 47.0, 22.0 ],
                    "text": "down 4"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1809.090749502182, 290.90906524658203, 47.0, 22.0 ],
                    "text": "down 3"
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1736.3634831905365, 290.90906524658203, 47.0, 22.0 ],
                    "text": "down 2"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1666.6665196418762, 290.90906524658203, 47.0, 22.0 ],
                    "text": "down 1"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1593.9392533302307, 290.90906524658203, 47.0, 22.0 ],
                    "text": "down 0"
                }
            },
            {
                "box": {
                    "id": "obj-195",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2326.492196559906, 1218.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 321.0, 136.84210395812988, 439.0, 205.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-198",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2898.492196559906, 1396.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 94.45614713430405, 136.84210395812988, 201.15788513422012, 206.1403489112854 ]
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "id": "obj-204",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2280.492196559906, 1130.0, 793.7499697208405, 672.916640996933 ],
                    "proportion": 0.39,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_meter_bg"
                        },
                        "bordercolor": {
                            "expression": "themecolor.live_arranger_grid_tiles"
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1576.666713654995, 1012.0000301599503, 85.0, 22.0 ],
                    "text": "poly~ voices 8"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2743.33326792717, 1208.3333045244217, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 993.0, 138.0, 402.0, 205.0 ]
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
                    "id": "obj-208",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2398.492196559906, 1378.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 37.0, 26.0, 1406.0, 535.0 ],
                    "proportion": 0.39,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_contrast_frame"
                        }
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 1709.560473203659, 530.1020007876214, 958.3483715057373, 530.1020007876214 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "order": 0,
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "order": 0,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 0,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "order": 0,
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "order": 0,
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "order": 0,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "order": 0,
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "order": 0,
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "order": 0,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1379.1968488693237, 481.86125379800797, 1515.560473203659, 481.86125379800797 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "order": 0,
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "order": 0,
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "order": 0,
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "order": 0,
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 1 ],
                    "midpoints": [ 1586.166713654995, 1044.0, 1884.158853813773, 1044.0, 1884.158853813773, 471.0, 2053.5, 471.0 ],
                    "order": 2,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "midpoints": [ 1586.166713654995, 1044.0, 1896.0, 1044.0, 1896.0, 480.0, 1967.5, 480.0 ],
                    "order": 3,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "midpoints": [ 1586.166713654995, 1061.6536412632558, 1606.2675997018814, 1061.6536412632558 ],
                    "order": 0,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 1586.166713654995, 1077.0, 1586.2675997018814, 1077.0 ],
                    "order": 1,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-131", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "source": [ "obj-132", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-190", 0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 1515.750071823597, 777.0, 1515.750071823597, 777.0 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 1564.250071823597, 789.6067705831956, 1691.7500770688057, 789.6067705831956 ],
                    "source": [ "obj-135", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 1 ],
                    "source": [ "obj-136", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 1051.8078240156174, 1194.0, 1491.0, 1194.0, 1491.0, 708.0, 1515.750071823597, 708.0 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "source": [ "obj-143", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 1248.5, 1194.0, 1491.0, 1194.0, 1491.0, 708.0, 1515.750071823597, 708.0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "source": [ "obj-148", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 1401.0, 1095.0, 1491.0, 1095.0, 1491.0, 708.0, 1515.750071823597, 708.0 ],
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "source": [ "obj-16", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-16", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1161.0150499343872, 481.86125379800797, 1515.560473203659, 481.86125379800797 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 4 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1215.5604996681213, 481.86125379800797, 1515.560473203659, 481.86125379800797 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 1 ],
                    "order": 1,
                    "source": [ "obj-190", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 1 ],
                    "order": 0,
                    "source": [ "obj-190", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 3 ],
                    "midpoints": [ 2094.9200615286827, 1069.5963498333003, 1646.2675997018814, 1069.5963498333003 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 2 ],
                    "midpoints": [ 2006.5, 1057.91145365173, 1626.2675997018814, 1057.91145365173 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-209", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-27", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 2 ],
                    "source": [ "obj-35", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 1 ],
                    "source": [ "obj-35", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 2 ],
                    "source": [ "obj-43", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 1 ],
                    "source": [ "obj-43", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 1 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-61", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1294.3483715057373, 481.86125379800797, 1515.560473203659, 481.86125379800797 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "order": 0,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "order": 0,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-99", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "order": 0,
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-115": [ "live.tab", "live.tab", 0 ],
            "obj-136::obj-10": [ "live.dial[7]", "Chorus Amount", 0 ],
            "obj-136::obj-48": [ "live.dial[4]", "Speed", 0 ],
            "obj-142": [ "live.tab[2]", "live.tab", 0 ],
            "obj-143": [ "live.tab[3]", "live.tab", 0 ],
            "obj-148": [ "live.tab[4]", "live.tab", 0 ],
            "obj-190": [ "live.dial[6]", "HP Cutoff", 0 ],
            "obj-20::obj-10": [ "live.dial[5]", "Reverb Amount", 0 ],
            "obj-27": [ "live.gain~", "master", 0 ],
            "obj-61::obj-30": [ "live.dial", "L-Delay", 0 ],
            "obj-61::obj-31": [ "live.dial[1]", "Feedback", 0 ],
            "obj-61::obj-40": [ "live.dial[2]", "R-Delay", 0 ],
            "obj-61::obj-46": [ "live.dial[3]", "Mix", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-136::obj-10": {
                    "parameter_longname": "live.dial[7]"
                },
                "obj-136::obj-48": {
                    "parameter_longname": "live.dial[4]"
                },
                "obj-20::obj-10": {
                    "parameter_longname": "live.dial[5]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [ "obj-21", "obj-123" ]
            },
            {
                "boxes": [ "obj-23", "obj-124" ]
            },
            {
                "boxes": [ "obj-25", "obj-125" ]
            },
            {
                "boxes": [ "obj-28", "obj-126" ]
            },
            {
                "boxes": [ "obj-30", "obj-127" ]
            },
            {
                "boxes": [ "obj-32", "obj-128" ]
            },
            {
                "boxes": [ "obj-34", "obj-129" ]
            },
            {
                "boxes": [ "obj-130", "obj-4" ]
            }
        ]
    }
}