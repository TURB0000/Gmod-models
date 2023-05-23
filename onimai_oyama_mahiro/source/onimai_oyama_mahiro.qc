$modelname "turbo\onimai_oyama_mahiro\onimai_oyama_mahiro.mdl"

$eyeposition 0 0 70

$model "head" "head.smd" {

	flexfile "head.vta" 
	{
		defaultflex frame 0
		flex "blink" frame 1
		flex "jawdrop" frame 2
	}

	flexcontroller eyelid range 0 1 "blink"
	flexcontroller mouse range 0 1 "jaw_drop"
	flexcontroller head range -30 30 "head_rightleft"
	flexcontroller head range -45 45 "head_updown"
	flexcontroller head range -15 15 "head_tilt"
	flexcontroller body range -30 30 "body_rightleft"
	flexcontroller chest range -30 30 "chest_rightleft"
	flexcontroller head range -0.2 0.2 "head_forwardback"
	flexcontroller gesture range -1 1 "gesture_updown"
	flexcontroller gesture range -1 1 "gesture_rightleft"

	%blink = blink
	%jawdrop = jaw_drop
}
$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "hair"
{
	studio "hair.smd"
}

$surfaceprop "flesh"

$contents "solid"

$illumposition 0 -0.753 35.176

$mostlyopaque

$cdmaterials "models\daniao\Onimai_Oyama_Mahiro\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 1.5 -1 0 rotate 0 -80 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1.00 -5.00 0.00 rotate 0 -80 -90
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 0 -90

$cbox 0 0 0 0 0 0

$bbox -13 -13 0  13 13 65

$definebone "ValveBiped.Bip01_Pelvis" "" 0.000000 -0.185978 29.880608 -0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" -0.000043 3.727711 -1.844202 -3.032666 90.000725 89.999985 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.852005 -0.046218 0.000127 -0.002005 -6.568102 0.000057 0.000000 0.000000 -0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.311535 0.074153 -0.000079 0.000688 10.677642 0.000115 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 8.187485 0.183567 -0.000073 0.000516 12.808128 0.000172 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 2.243134 0.019053 -0.000053 -0.000516 -21.818174 -179.999908 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.012444 0.008431 0.000034 0.000630 -11.766490 -0.000057 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.440651 0.438437 -0.753324 85.911217 137.295685 -109.807510 0.000000 0.000000 0.000000 -0.000000 0.000001 0.000004
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 5.325635 0.060028 0.183263 -3.573881 -6.242086 83.619247 0.000000 0.000000 0.000000 0.000003 -0.000001 -0.000004
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 6.180792 -0.071663 -0.065529 8.879014 -2.261464 5.487154 0.000000 0.000000 0.000000 0.000001 0.000000 -0.000005
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 7.733510 0.011673 -0.021065 -2.005466 2.225081 -85.843063 0.000000 0.000000 0.000000 0.000001 0.000001 0.000004
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.440651 0.438433 0.753239 -87.336052 155.025177 88.244072 -0.000000 0.000000 0.000000 0.000000 0.000001 -0.000002
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 5.328515 -0.045712 -0.066679 2.754838 -7.066228 -79.615639 0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000002
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 6.180974 -0.071704 0.045586 -8.853687 -2.196892 -5.544396 0.000000 0.000000 -0.000004 -0.000000 0.000000 0.000003
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 7.733551 0.005386 -0.001152 2.005523 2.226112 86.331741 0.000000 0.000000 0.000000 -0.000001 0.000001 -0.000004
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.521157 0.134312 0.034977 0.728344 -89.945038 -89.959641 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 12.899597 -0.146437 0.005028 2.198497 -1.713831 -0.593011 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 13.548962 0.046884 -0.058356 0.065375 -60.763206 -0.454069 0.000000 0.000000 -0.000000 -0.000000 0.000005 -0.000000
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.521157 0.134310 0.034977 0.728344 -90.056816 -90.040375 -0.000002 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 12.899597 -0.146437 -0.004601 -2.536255 -1.712170 0.625670 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 13.549078 0.045646 -0.021089 -0.452006 -60.656403 0.869234 0.000000 0.000000 0.000000 0.000000 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 2.568792 -0.038273 0.952965 1.233980 3.767542 -4.018207 0.000000 0.000004 0.000000 0.000000 0.000001 0.000004
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.081633 -0.078850 -0.051729 0.349734 -0.664802 9.327013 0.000000 0.000004 -0.000001 0.000001 0.000001 0.000005
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.492964 0.008568 -0.022450 -4.983298 -9.906322 -0.650933 -0.000001 0.000000 0.000000 0.000002 0.000003 0.000004
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 2.729813 0.115498 0.400998 1.139213 -0.420952 -8.008169 0.000002 -0.000004 0.000000 0.000001 0.000001 0.000005
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.325365 -0.030903 -0.040742 -0.038731 1.614997 4.158704 0.000000 0.000000 0.000000 0.000001 0.000001 0.000005
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.719406 -0.028103 -0.014115 -2.257796 -13.628255 -0.132807 0.000000 0.000000 0.000000 0.000002 0.000003 0.000005
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 2.881090 0.111607 -0.237119 0.631057 -1.677161 -7.137618 -0.000002 0.000000 0.000000 0.000001 0.000001 0.000006
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.408739 -0.012760 0.024946 0.273416 2.309479 2.096573 0.000000 -0.000004 0.000000 0.000001 0.000001 0.000005
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.763611 -0.029102 -0.005098 0.324639 -5.671936 0.071395 -0.000002 0.000000 0.000000 0.000001 0.000003 0.000005
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 2.871914 -0.092968 -0.842132 1.044847 0.321258 -7.258685 0.000002 0.000000 0.000000 0.000001 0.000001 0.000005
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.257584 -0.026531 0.001635 0.187931 -1.043298 -6.496363 0.000000 0.000004 0.000000 0.000001 0.000001 0.000006
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.609928 0.006901 -0.014659 3.994261 -9.742000 -0.000395 0.000001 0.000000 0.000000 0.000001 0.000004 0.000006
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.570065 -0.452126 -0.352068 28.915224 -20.767830 133.279205 0.000000 -0.000004 0.000004 0.000005 0.000004 0.000006
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.648522 -0.143253 0.128128 10.614792 0.529874 0.098270 -0.000001 0.000000 0.000000 0.000003 0.000004 0.000009
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 0.774198 0.037693 -0.055794 -11.239193 2.378754 -0.464373 0.000000 0.000000 0.000000 0.000002 0.000004 0.000009
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 2.569242 -0.053139 -0.951045 -1.413430 2.973020 4.825160 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000003
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.082613 -0.065983 0.049149 -0.060734 -0.746163 -9.490019 0.000000 -0.000004 0.000000 -0.000000 0.000000 -0.000007
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.492744 0.014900 0.023947 4.983929 -9.904315 0.649727 0.000001 0.000000 0.000000 -0.000001 0.000005 -0.000006
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 2.730377 0.104462 -0.400194 -0.745533 1.684152 6.651234 0.000000 0.000000 0.000000 -0.000001 0.000000 -0.000003
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.322596 -0.082264 0.056262 -0.834972 0.323549 -2.877912 0.000000 0.000000 0.000000 -0.000001 0.000000 -0.000004
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.718933 -0.039234 0.011786 2.257279 -13.628649 0.133610 0.000000 0.000000 0.000000 -0.000002 0.000012 -0.000004
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 2.881260 0.105114 0.238027 -1.220687 0.294043 7.271461 0.000000 0.000000 0.000000 -0.000001 0.000001 -0.000001
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.407093 -0.066681 -0.031348 0.238923 2.891660 -2.347065 0.000002 0.000000 0.000000 -0.000001 -0.000000 -0.000002
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.761299 -0.065926 0.006715 -0.323550 -5.672623 -0.071335 0.000000 0.000004 0.000000 -0.000001 0.000003 -0.000002
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 2.871134 -0.094700 0.844613 -1.159381 1.396127 7.555993 0.000000 0.000000 -0.000000 -0.000001 0.000000 -0.000002
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.256725 -0.053589 0.000507 -0.256113 0.394023 6.979313 -0.000002 0.000000 -0.000000 -0.000001 0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.609509 -0.020924 0.018244 -3.993514 -9.739819 0.001204 0.000001 0.000000 0.000000 0.000001 0.000005 -0.000001
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.568542 -0.451019 0.355935 -29.690218 -20.828558 -139.186172 -0.000001 0.000000 0.000000 -0.000003 -0.000004 0.000007
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.650382 -0.121597 -0.126570 -10.615592 0.235197 -0.042966 0.000000 0.000000 0.000000 -0.000000 -0.000002 0.000005
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 0.773858 0.026455 0.066029 11.240395 2.372157 0.462782 0.000000 0.000004 0.000000 -0.000005 -0.000003 0.000005
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 4.982574 0.057196 0.062412 -1.296203 -26.771116 1.989710 0.000000 0.000000 0.000000 -0.000001 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 4.981905 0.045966 -0.108379 1.759782 -27.722965 -7.063252 0.000000 0.000000 0.000000 -0.000001 -0.000001 0.000000

$bonemerge "R_wrist"
$bonemerge "L_wrist"

$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1"	    -0.50   -5.00   -3.25     8.50    4.00    3.25
$hbox 4 "ValveBiped.Bip01_L_UpperArm"	    -1.50   -1.75   -1.85     7.50    2.25    1.45
$hbox 4 "ValveBiped.Bip01_L_Forearm"	     0.25   -1.25   -1.25     8.75    1.25    1.25
$hbox 4 "ValveBiped.Bip01_L_Hand"	     0.25   -1.13   -1.25     5.75    0.63    2.25
$hbox 5 "ValveBiped.Bip01_R_UpperArm"	    -1.50   -1.75   -1.45     7.50    2.25    1.85
$hbox 5 "ValveBiped.Bip01_R_Forearm"	     0.25   -1.25   -1.25     8.75    1.25    1.25
$hbox 5 "ValveBiped.Bip01_R_Hand"	     0.25   -1.13   -2.25     5.75    0.63    1.25
$hbox 6 "ValveBiped.Bip01_L_Thigh"	     2.50   -3.50   -3.00    14.50    3.50    3.00
$hbox 6 "ValveBiped.Bip01_L_Calf"	    -0.50   -2.50   -2.15    13.50    3.50    2.35
$hbox 6 "ValveBiped.Bip01_L_Foot"	    -1.50   -1.80   -1.75     4.50    3.20    1.75
$hbox 6 "ValveBiped.Bip01_L_Toe0"	    -0.17   -1.40   -1.50     2.57    0.40    1.50
$hbox 7 "ValveBiped.Bip01_R_Thigh"	     2.50   -3.50   -3.00    14.50    3.50    3.00
$hbox 7 "ValveBiped.Bip01_R_Calf"	    -0.50   -2.50   -2.35    13.50    3.50    2.15
$hbox 7 "ValveBiped.Bip01_R_Foot"	    -1.50   -1.80   -1.75     4.50    3.20    1.75
$hbox 7 "ValveBiped.Bip01_R_Toe0"	    -0.17   -1.40   -1.50     2.57    0.40    1.50
$hbox 3 "ValveBiped.Bip01_Pelvis"	    -6.50   -3.88   -4.30     6.50    4.12    4.70
$hbox 3 "ValveBiped.Bip01_Spine1"	    -4.50   -1.80   -4.97     3.50    5.20    4.97
$hbox 2 "ValveBiped.Bip01_Spine2"	    -0.50   -3.00   -5.00    10.50    6.00    5.00
$skipboneinbbox

$proceduralbones "onimai_oyama_mahiro.vrd"

$jigglebone "breast_L"
{
	is_flexible
	{
		length 5
		tip_mass 10
		pitch_stiffness 350
		pitch_damping 14
		yaw_stiffness 350
		yaw_damping 14
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
	has_base_spring
	{
		base_mass 0
		stiffness 350
		damping 14
		left_constraint -0.2 0.2
		left_friction 0
		up_constraint -0.5 0.5
		up_friction 0
		forward_constraint -0.5 0.5
		forward_friction 0
	}
}
$jigglebone "breast_R"
{
	is_flexible
	{
		length 5
		tip_mass 10
		pitch_stiffness 350
		pitch_damping 14
		yaw_stiffness 350
		yaw_damping 14
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
	has_base_spring
	{
		base_mass 0
		stiffness 350
		damping 14
		left_constraint -0.2 0.2
		left_friction 0
		up_constraint -0.5 0.5
		up_friction 0
		forward_constraint -0.5 0.5
		forward_friction 0
	}
}
$jigglebone "hair1"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair2"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair3"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair6"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair7"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair8"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair9"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair4"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair5"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 0.5 0.1
$ikautoplaylock "lfoot" 0.5 0.1

$sequence reference "anims/reference" fps 1

$animation a_proportions "anims/proportions" subtract reference 0

$sequence proportions a_proportions predelta autoplay

$Sequence "ragdoll" {
	"anims/reference"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
}

$includemodel "f_anm.mdl"

$collisionjoints "physics.smd"
{
	$mass 50.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "valvebiped.bip01_pelvis"

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -8.00 75.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -97.00 32.00 0.00

	$jointconstrain "valvebiped.bip01_r_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit -12.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -73.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -93.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit -8.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_l_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -19.00 19.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -15.00 35.00 0.00

	$jointconstrain "valvebiped.bip01_spine2" x limit -28.00 28.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" y limit -21.00 21.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" z limit -21.00 41.00 0.00

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -53.00 117.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -86.00 26.00 0.00

	$jointconstrain "valvebiped.bip01_l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -140.00 8.00 0.00

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -117.00 53.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -93.00 23.00 0.00

	$jointconstrain "valvebiped.bip01_r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -140.00 8.00 0.00

	$jointconstrain "valvebiped.bip01_r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -50.00 59.00 0.00

	$jointconstrain "valvebiped.bip01_head1" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -13.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_hand" x limit -37.00 37.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -50.00 59.00 0.00

	$jointconstrain "valvebiped.bip01_r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -25.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -15.00 35.00 0.00

	$jointcollide valvebiped.bip01_l_forearm valvebiped.bip01_pelvis
	$jointcollide valvebiped.bip01_r_forearm valvebiped.bip01_pelvis
	$jointcollide valvebiped.bip01_l_forearm valvebiped.bip01_spine2
	$jointcollide valvebiped.bip01_r_forearm valvebiped.bip01_spine2
	$jointcollide valvebiped.bip01_r_thigh valvebiped.bip01_l_thigh
	$jointcollide valvebiped.bip01_r_calf valvebiped.bip01_l_calf
	$jointcollide valvebiped.bip01_l_foot valvebiped.bip01_r_foot
	$jointcollide valvebiped.bip01_l_foot valvebiped.bip01_r_calf
	$jointcollide valvebiped.bip01_r_foot valvebiped.bip01_l_calf
	$jointcollide valvebiped.bip01_l_forearm valvebiped.bip01_l_thigh
	$jointcollide valvebiped.bip01_l_forearm valvebiped.bip01_r_thigh
	$jointcollide valvebiped.bip01_r_forearm valvebiped.bip01_l_thigh
	$jointcollide valvebiped.bip01_r_forearm valvebiped.bip01_r_thigh
}
