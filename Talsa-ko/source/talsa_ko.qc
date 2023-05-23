$modelname "turbo\talsa_ko\talsa_ko.mdl"

$ambientboost

$eyeposition 0 0 70

$attachment "eyes" "ValveBiped.Bip01_Head1" 2.70 -3.20 0.00 rotate 0 -77 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.60 -4.40 0.00 rotate 0 -80 -90
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 0 -90

$model reference "reference.dmx"

$model head "head.smd" {

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "head" {
		defaultflex frame 0
		flexpair "blink" 0.5 frame 1
		flexpair "AU25" 1.0 frame 2
		flexpair "AU26" 1.5 frame 3
		flexpair "AU27" 1.5 frame 4
	}

	flexcontroller eyelid blink
	flexcontroller eyelid right_blink left_blink

	flexcontroller phoneme jaw_drop
	flexcontroller phoneme right_part left_part
	flexcontroller phoneme right_mouth_drop left_mouth_drop

	%blinkR = blink + right_blink
	%blinkl = blink + left_blink

	%AU25R = right_part
	%AU25L = left_part

	%AU26R = jaw_drop * (1 - right_mouth_drop )
	%AU26L = jaw_drop * (1 - left_mouth_drop )
	%AU27R = jaw_drop * right_mouth_drop
	%AU27L = jaw_drop * left_mouth_drop

	%mouth = %AU27R * 0.5 + %AU27L * 0.5 + %AU25R * 0.35 + %AU25L * 0.35
}

$model eyes "eyes.dmx"

$bodygroup hood
{
	studio hood
	blank
}

$bodygroup belt
{
	studio belt
	blank
}

$bodygroup boot
{
	studio boot
	blank
}

$bodygroup gloves
{
	studio gloves
	blank
}

$bodygroup loin
{
	studio loin
	blank
}

$bodygroup shoulders
{
	studio shoulders
	blank
}

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\turbo\talsa_ko\"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0  13 13 72

$definebone "ValveBiped.Bip01_Pelvis" "" 0.000001 -0.636491 42.058228 0.000000 0.000307 89.999725 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" -0.000081 2.261982 -1.243712 3.198857 89.999962 89.999756 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.909283 0.059510 -0.000001 0.012093 -3.015218 -0.000990 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.830166 0.078866 0.000897 -0.000002 -3.572562 -0.000001 0.000000 0.000000 0.000000 -0.000000 -0.000001 0.000000
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 6.645874 0.037513 0.001389 -0.011795 8.507435 -0.002955 0.000000 0.000000 0.000000 0.000000 -0.000001 0.000000
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 1.921200 0.101641 -0.086136 -0.000790 28.230051 179.997192 -0.000004 0.000000 0.000000 -0.000000 0.000002 0.000000
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.171696 -0.001692 -0.000033 -0.005645 15.958589 0.001414 0.000000 0.000000 0.000000 -0.000000 0.000003 0.000000
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 0.894115 0.965655 0.990453 -73.970772 156.859543 108.419281 0.000000 0.000000 -0.000000 -0.000001 -0.000002 -0.000000
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 4.211377 -0.071560 0.045041 12.511649 -45.465912 -90.427635 0.000000 0.000000 0.000000 0.000009 0.000000 0.000001
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.277878 -0.010065 0.041992 3.246640 -29.025354 1.906883 0.000000 -0.000001 0.000000 0.000007 0.000001 -0.000004
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 9.374308 0.073598 -0.151825 12.301274 4.374571 94.893295 0.000000 0.000000 0.000000 0.000001 -0.000009 0.000005
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.273904 -0.756607 -0.000067 0.561959 -91.504120 -90.006042 0.000000 -0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 20.368744 -0.070505 0.021497 -0.035586 6.825537 -0.004913 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.273902 -0.756611 -0.000032 0.561940 -88.495872 -89.993347 0.000000 -0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 20.368732 -0.070505 -0.021502 0.035551 6.823661 0.004853 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.439194 -0.036058 -0.003143 0.839525 -61.118137 -2.807639 0.000000 0.000000 0.000000 0.000000 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 0.894123 0.965753 -0.990352 73.968643 156.840332 -108.439316 -0.000001 0.000000 0.000000 0.000002 -0.000005 -0.000001
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.211383 -0.071526 -0.045028 -12.511816 -45.465611 90.427849 0.000000 0.000000 0.000000 -0.000002 -0.000001 0.000001
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.277874 -0.010078 -0.042000 -3.246655 -29.025087 -1.907050 0.000000 -0.000001 0.000000 -0.000003 -0.000000 0.000002
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 9.374313 0.073536 0.151814 -12.301299 4.374501 -94.893028 0.000000 0.000000 0.000000 0.000003 -0.000003 -0.000002
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.439188 -0.036628 0.003126 -0.839492 -61.120174 2.807589 0.000000 0.000000 0.000000 -0.000000 -0.000004 -0.000000
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 2.670967 0.162767 -0.949793 -4.843889 -22.295729 -12.896399 -0.000004 0.000000 0.000001 0.000004 -0.000001 -0.000003
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.156590 -0.000095 -0.012675 -0.681526 -9.984491 -0.100574 0.000000 0.000000 0.000000 0.000003 0.000005 -0.000003
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.720470 -0.000268 -0.016358 -1.992706 -9.970859 -0.222672 0.000000 0.000000 -0.000001 0.000001 0.000012 -0.000003
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.068748 -0.102802 1.401842 3.013292 -13.627481 17.865402 0.000000 -0.000002 0.000000 0.000003 -0.000005 0.000009
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.154160 -0.000967 0.009897 -0.640776 -24.451048 0.203768 0.000004 0.000000 0.000000 0.000007 0.000000 0.000007
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.789116 -0.000389 -0.002595 -3.470063 -18.070482 -0.064715 0.000000 0.000000 0.000000 0.000012 0.000009 0.000007
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 2.954659 0.259590 -0.220001 -1.270101 -19.795753 -1.919753 0.000000 0.000000 0.000001 0.000003 -0.000002 0.000007
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.210686 0.000243 -0.006783 -0.610916 -12.087669 -0.046449 0.000000 0.000000 -0.000001 0.000006 0.000005 0.000006
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.810635 -0.000854 -0.013096 -2.436596 -10.029380 -0.171544 0.000000 0.000000 0.000000 0.000006 0.000009 0.000003
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.107677 0.203814 0.636809 0.665923 -19.053244 11.058461 0.000000 0.000000 0.000000 0.000002 -0.000005 0.000010
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.336754 0.000769 -0.010867 -0.661565 -20.905190 -0.151406 0.000000 0.000000 0.000000 0.000005 0.000000 0.000007
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.829556 -0.000189 -0.015931 -1.031747 -15.013107 -0.288777 0.000004 -0.000001 0.000000 0.000009 0.000002 0.000003
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.226414 0.210690 -1.520757 18.247034 -34.276730 86.465347 0.000000 0.000000 0.000000 -0.000000 -0.000003 0.000001
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 2.060539 0.009289 0.012771 1.924675 20.328072 -0.048819 0.000000 0.000000 -0.000000 0.000002 -0.000005 0.000000
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 0.996758 -0.040895 0.039305 -6.878539 19.532927 -0.877252 0.000000 0.000000 0.000000 -0.000001 -0.000006 0.000002
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.107674 0.203812 -0.636828 -0.665997 -19.053143 -11.058794 0.000000 0.000000 0.000000 0.000005 -0.000003 -0.000003
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.336742 0.000771 0.010860 0.661483 -20.905188 0.151364 -0.000004 0.000000 0.000000 0.000003 -0.000002 -0.000003
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.829563 -0.000189 0.015927 1.032302 -15.013094 0.288676 0.000000 0.000001 0.000000 0.000005 0.000003 -0.000003
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 2.954662 0.259590 0.219985 1.270403 -19.795595 1.919450 0.000000 0.000000 0.000000 0.000004 -0.000004 -0.000002
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.210686 0.000244 0.006786 0.610759 -12.087804 0.046497 0.000000 0.000000 0.000000 0.000006 -0.000007 0.000000
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.810635 -0.000854 0.013095 2.436415 -10.029331 0.171527 0.000000 0.000000 0.000000 0.000005 -0.000009 -0.000002
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 2.670969 0.162771 0.949779 4.844186 -22.295660 12.896081 0.000000 0.000001 0.000000 -0.000001 -0.000004 -0.000007
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.156582 -0.000098 0.012678 0.681285 -9.984459 0.100594 0.000000 0.000000 -0.000001 -0.000003 -0.000002 -0.000006
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.720467 -0.000266 0.016356 1.992470 -9.970922 0.222651 0.000000 0.000000 0.000000 -0.000004 -0.000002 -0.000005
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.068743 -0.102808 -1.401855 -3.013313 -13.627465 -17.865633 0.000000 0.000000 0.000000 0.000005 -0.000003 0.000002
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.154160 -0.000963 -0.009902 0.640927 -24.450920 -0.203887 0.000000 0.000000 -0.000000 0.000006 -0.000003 -0.000002
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.789124 -0.000387 0.002595 3.470001 -18.070482 0.064698 0.000000 0.000001 -0.000000 0.000005 -0.000002 -0.000005
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.226418 0.210703 1.520756 -18.253166 -34.171448 -86.498604 0.000000 -0.000002 0.000000 -0.000000 0.000003 -0.000009
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 2.060528 0.009293 -0.016376 -1.831020 20.326982 0.083559 0.000004 0.000000 -0.000000 0.000002 0.000005 -0.000010
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 0.996750 -0.040896 -0.039312 6.878754 19.532982 0.877349 0.000000 0.000000 0.000000 -0.000002 0.000005 -0.000009
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.580103 0.001739 0.028686 0.977753 -36.266479 1.292203 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.580104 0.001754 -0.028689 -0.977695 -36.266338 -1.292205 0.000000 0.000000 0.000000 -0.000000 -0.000005 -0.000000
$definebone "fc_cheek_right" "ValveBiped.Bip01_Head1" 1.938274 -4.390670 1.562251 0.004068 21.071381 90.000900 -0.000004 -0.000000 0.000001 0.000002 0.000000 -0.000000
$definebone "fc_cheek_left" "ValveBiped.Bip01_Head1" 1.935257 -4.376451 -1.744143 0.004183 21.071957 90.000610 -0.000004 0.000000 0.000001 -0.000001 0.000000 -0.000000
$definebone "fc_lid_left_bottom" "ValveBiped.Bip01_Head1" 2.699295 -4.242617 -1.239738 0.002636 21.190216 90.008865 -0.000004 0.000000 0.000000 -0.000001 0.000000 0.000000
$definebone "fc_lid_right_bottom" "ValveBiped.Bip01_Head1" 2.699493 -4.242770 1.049701 0.002521 21.192738 90.009491 0.000000 -0.000000 0.000001 0.000001 0.000000 0.000000
$definebone "fc_lid_right_top" "ValveBiped.Bip01_Head1" 3.201988 -4.145164 1.049663 0.000172 21.268080 90.008743 -0.000004 0.000000 -0.000001 0.000000 0.000000 0.000000
$definebone "fc_lid_left_top" "ValveBiped.Bip01_Head1" 3.201782 -4.145011 -1.239775 0.005157 21.268196 90.008980 0.000000 0.000000 0.000000 -0.000001 0.000000 0.000000
$definebone "fc_brow_mid" "ValveBiped.Bip01_Head1" 3.885307 -4.012349 -0.093649 0.005099 21.373791 90.009323 0.000000 0.000000 0.000000 -0.000001 0.000000 -0.000000
$definebone "fc_brow_right_1" "ValveBiped.Bip01_Head1" 3.885399 -4.012409 0.909708 0.007735 21.374821 90.009666 0.000000 0.000000 0.000000 0.000001 0.000000 -0.000000
$definebone "fc_brow_right_2" "ValveBiped.Bip01_Head1" 3.885483 -4.012466 1.824028 0.004297 21.376081 90.000153 0.000000 0.000000 0.000001 0.000001 0.000000 -0.000000
$definebone "fc_brow_left_1" "ValveBiped.Bip01_Head1" 3.885223 -4.012277 -1.095694 0.001547 21.376480 90.000443 0.000008 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "fc_brow_left_2" "ValveBiped.Bip01_Head1" 3.885147 -4.012214 -1.996522 0.000057 21.375452 90.008522 0.000000 0.000000 0.000000 -0.000001 0.000000 0.000000
$definebone "fc_eye_left" "ValveBiped.Bip01_Head1" 2.766708 -2.883513 -1.239653 0.003438 21.277819 90.004738 0.000004 0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "fc_eye_right" "ValveBiped.Bip01_Head1" 2.766907 -2.883667 1.049785 0.005959 21.277819 90.005196 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "fc_lip_left_corner" "ValveBiped.Bip01_Head1" 0.589928 -4.652373 -0.843216 0.002750 20.860767 90.008865 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "fc_lip_left_top" "ValveBiped.Bip01_Head1" 0.823303 -4.607071 -0.482903 0.002578 20.897261 90.009323 0.000004 0.000000 0.000000 -0.000001 0.000000 0.000000
$definebone "fc_lip_right_top" "ValveBiped.Bip01_Head1" 0.823372 -4.607123 0.309825 0.004125 20.897261 90.000557 0.000004 -0.000000 0.000001 0.000000 0.000000 -0.000000
$definebone "fc_lip_right_corner" "ValveBiped.Bip01_Head1" 0.590057 -4.652472 0.671477 0.004183 20.861336 90.000610 -0.000004 0.000000 0.000000 0.000001 0.000000 -0.000000
$definebone "fc_puffer_right" "ValveBiped.Bip01_Head1" 0.742023 -3.421952 1.363418 0.003438 20.951809 90.004852 -0.000004 0.000000 -0.000001 -0.000001 0.000000 -0.000000
$definebone "fc_puffer_left" "ValveBiped.Bip01_Head1" 0.741791 -3.421756 -1.536324 0.003380 20.951864 90.005020 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "fc_cheek_inner_right" "ValveBiped.Bip01_Head1" 2.076981 -4.349117 0.584899 0.002636 21.093731 90.009201 0.000000 0.000000 0.000000 0.000001 0.000000 0.000000
$definebone "fc_cheek_inner_left" "ValveBiped.Bip01_Head1" 2.076859 -4.349033 -0.758162 0.004068 21.093901 90.000900 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "fc_nose_right" "ValveBiped.Bip01_Head1" 1.511868 -4.458873 0.463656 0.002693 21.005608 90.009148 0.000004 0.000000 0.000000 -0.000001 0.000000 -0.000000
$definebone "fc_nose_left" "ValveBiped.Bip01_Head1" 1.511772 -4.458801 -0.636843 0.004183 21.005550 90.000443 0.000000 0.000000 0.000001 0.000001 0.000000 0.000000
$definebone "fc_lip_center_top" "ValveBiped.Bip01_Head1" 0.843998 -4.588554 -0.086540 0.002693 20.901154 90.009033 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "fc_jaw" "ValveBiped.Bip01_Head1" 0.537853 -1.269531 -0.086299 0.003380 21.043133 90.004852 0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "fc_lip_center_bottom" "fc_jaw" -1.448723 -0.000741 3.111410 -0.225803 0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000001 0.000000 -0.000000
$definebone "fc_tongue" "fc_jaw" -1.040321 -0.000007 2.362999 -0.162492 0.000000 0.000172 0.000000 0.000000 0.000000 -0.000001 0.000000 -0.000000
$definebone "fc_lip_right_bottom" "fc_jaw" -1.429783 0.396340 3.114771 -0.222882 -0.000057 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000
$definebone "fc_lip_left_bottom" "fc_jaw" -1.429771 -0.396387 3.114766 -0.222882 -0.000057 -0.000401 0.000000 -0.000000 0.000000 0.000000 0.000000 -0.000000

$bonemerge "ValveBiped.Bip01_R_HH"
$bonemerge "ValveBiped.Bip01_L_HH"

$proceduralbones "procedurals.vrd"

$includemodel "f_anm.mdl"

$lod 64
{
	replacemodel "reference.dmx" "reference_lod.dmx"
	replacemodel "head.smd" "head_lod.dmx"
	replacemodel "eyes.dmx" "eyes_lod.dmx"
	replacemodel "hood.dmx" "hood_lod.dmx"
	replacemodel "belt.dmx" "belt_lod.dmx"
	replacemodel "boot.dmx" "boot_lod.dmx"
	replacemodel "gloves.dmx" "gloves_lod.dmx"
	replacemodel "loin.dmx" "loin_lod.dmx"
	replacemodel "shoulders.dmx" "shoulders_lod.dmx"
	
	nofacial
	bonetreecollapse "ValveBiped.Bip01_L_Hand"
	bonetreecollapse "ValveBiped.Bip01_R_Hand"
	bonetreecollapse "ValveBiped.Bip01_Head1"
	
	replacebone "ValveBiped.Bip01_L_HH" "ValveBiped.Bip01_L_Forearm"
	replacebone "ValveBiped.Bip01_R_HH" "ValveBiped.Bip01_R_Forearm"
}
$shadowlod
{
	replacemodel "reference.dmx" "reference_lod.dmx"
	replacemodel "head.smd" "head_lod.dmx"
	replacemodel "eyes.dmx" "eyes_lod.dmx"
	replacemodel "hood.dmx" "hood_lod.dmx"
	replacemodel "belt.dmx" "belt_lod.dmx"
	replacemodel "boot.dmx" "boot_lod.dmx"
	replacemodel "gloves.dmx" "gloves_lod.dmx"
	replacemodel "loin.dmx" "loin_lod.dmx"
	replacemodel "shoulders.dmx" "shoulders_lod.dmx"

	bonetreecollapse "ValveBiped.Bip01_L_Forearm"
	bonetreecollapse "ValveBiped.Bip01_R_Forearm"
	bonetreecollapse "ValveBiped.Bip01_L_Calf"
	bonetreecollapse "ValveBiped.Bip01_R_Calf"
	bonetreecollapse "ValveBiped.Bip01_Head1"

	replacebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine2"
	replacebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2"
	replacebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine"
	replacebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Spine2"

	replacebone "ValveBiped.Bip01_L_HH" "ValveBiped.Bip01_L_Forearm"
	replacebone "ValveBiped.Bip01_R_HH" "ValveBiped.Bip01_R_Forearm"

	nofacial
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

$hboxset "default"

$hbox 0 "ValveBiped.Bip01_Head1"	    -1.50   -4.75   -3.05     6.50    2.95    3.05
$hbox 4 "ValveBiped.Bip01_L_UpperArm"	    -1.00   -2.30   -1.70    11.00    1.70    1.30
$hbox 4 "ValveBiped.Bip01_L_Forearm"	     0.25   -1.63   -1.25    10.25    1.37    1.25
$hbox 4 "ValveBiped.Bip01_L_Hand"	     0.25   -1.30   -1.25     5.75    0.70    2.25
$hbox 5 "ValveBiped.Bip01_R_UpperArm"	    -1.00   -2.30   -1.30    11.00    1.70    1.70
$hbox 5 "ValveBiped.Bip01_R_Forearm"	     0.25   -1.63   -1.25    10.25    1.37    1.25
$hbox 5 "ValveBiped.Bip01_R_Hand"	     0.25   -1.30   -2.25     5.75    0.70    1.25
$hbox 6 "ValveBiped.Bip01_L_Thigh"	     2.00   -3.50   -3.00    20.00    3.50    3.00
$hbox 6 "ValveBiped.Bip01_L_Calf"	    -0.75   -2.00   -2.25    16.75    3.00    2.25
$hbox 6 "ValveBiped.Bip01_L_Foot"	    -1.50   -2.30   -1.75     4.50    2.70    1.75
$hbox 6 "ValveBiped.Bip01_L_Toe0"	    -0.17   -1.40   -1.50     2.57    0.40    1.50
$hbox 7 "ValveBiped.Bip01_R_Thigh"	     2.00   -3.50   -3.00    20.00    3.50    3.00
$hbox 7 "ValveBiped.Bip01_R_Calf"	    -0.75   -2.00   -2.25    16.75    3.00    2.25
$hbox 7 "ValveBiped.Bip01_R_Foot"	    -1.50   -2.30   -1.75     4.50    2.70    1.75
$hbox 7 "ValveBiped.Bip01_R_Toe0"	    -0.17   -1.40   -1.50     2.57    0.40    1.50
$hbox 3 "ValveBiped.Bip01_Pelvis"	    -6.50   -5.00   -4.75     6.50    3.00    3.75
$hbox 3 "ValveBiped.Bip01_Spine1"	    -4.00   -3.00   -4.25     4.00    4.00    4.25
$hbox 2 "ValveBiped.Bip01_Spine2"	    -1.50   -3.55   -5.00     8.50    4.95    5.00

$collisionjoints "physics_bfa.dmx"
{
	$mass 70.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "valvebiped.bip01_pelvis"

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -8.00 46.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -57.00 32.00 0.00

	$jointconstrain "valvebiped.bip01_r_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit -12.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -46.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -57.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit -8.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_l_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -19.00 19.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -15.00 35.00 0.00

	$jointconstrain "valvebiped.bip01_spine1" x limit -35.00 35.00 0.00
	$jointconstrain "valvebiped.bip01_spine1" y limit -21.00 21.00 0.00
	$jointconstrain "valvebiped.bip01_spine1" z limit -21.00 41.00 0.00

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -64.00 95.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -93.00 23.00 0.00

	$jointconstrain "valvebiped.bip01_r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -124.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -95.00 64.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -86.00 26.00 0.00

	$jointconstrain "valvebiped.bip01_l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -124.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_hand" x limit -37.00 37.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -57.00 59.00 0.00

	$jointconstrain "valvebiped.bip01_head1" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -13.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -57.00 70.00 0.00

	$jointconstrain "valvebiped.bip01_r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -25.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -15.00 35.00 0.00

	$jointcollide valvebiped.bip01_l_forearm valvebiped.bip01_pelvis
	$jointcollide valvebiped.bip01_r_forearm valvebiped.bip01_pelvis
	$jointcollide valvebiped.bip01_l_forearm valvebiped.bip01_spine1
	$jointcollide valvebiped.bip01_r_forearm valvebiped.bip01_spine1
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