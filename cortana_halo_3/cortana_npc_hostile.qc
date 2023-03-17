$modelname "turbo\cortana\cortana_npc_hostile.mdl"

$ambientboost

$eyeposition 0 0 70

$attachment "eyes" "ValveBiped.Bip01_Head1" -0.00 -3.27 65.58 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.00 -4.40 0.00 rotate -0 -83 -90

$model cortana "cortana_reference_hostile.smd" {
	eyeball righteye "ValveBiped.Bip01_Head1" -1.17 -3.27 65.58 "cortana_eyeball_r" 1.00 4 "cortana_pupil" 1.05
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.17 -3.27 65.58 "cortana_eyeball_l" 1.00 -4 "cortana_pupil" 1.05

	eyelid  upper_right "cortana_expressions" lowerer 1 -0.25 neutral 0 0.19 raiser 2 0.28 split 0.1 eyeball righteye
	eyelid  lower_right "cortana_expressions" lowerer 3 -0.33 neutral 0 -0.25 raiser 4 -0.09 split 0.1 eyeball righteye
	eyelid  upper_left "cortana_expressions" lowerer 1 -0.25 neutral 0 0.19 raiser 2 0.28 split -0.1 eyeball lefteye
	eyelid  lower_left "cortana_expressions" lowerer 3 -0.33 neutral 0 -0.25 raiser 4 -0.09 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0
	flexfile "cortana_expressions" {
		$include "standardflex_xsi.qci"
	}
	$include "facerules_xsi.qci"
	$include "bodyrules_xsi.qci"
}

$model hair "cortana_hair.smd"

$surfaceprop "flesh"

$contents "solid"

$mostlyopaque

$cdmaterials "models\turbo\cortana\"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0  13 13 72

$definebone "ValveBiped.Bip01_Pelvis" "" 0.000000 0.407362 39.488091 -0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" -0.000001 3.253033 -1.306589 -2.535281 89.995743 90.000610 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.881580 -0.011631 -0.000286 0.001146 -0.855254 -0.000229 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.809292 0.006190 -0.000032 -0.021658 -8.791865 -0.001662 0.000000 0.000000 0.000000 -0.000000 0.000001 -0.000000
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 7.004852 -0.041959 -0.003106 0.025153 18.704723 0.008652 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.116348 0.859119 1.163237 -81.784431 177.844589 75.793533 0.000000 0.000000 -0.000000 -0.000001 0.000000 0.000002
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 4.467137 0.011711 0.105264 9.542208 -52.423401 -85.840363 0.000000 0.000000 0.000000 -0.000000 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 9.867077 0.008444 -0.047195 -5.502688 -9.349295 0.986690 0.000000 0.000000 -0.000004 -0.000002 0.000001 -0.000001
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.723820 -0.304686 0.026100 -5.142585 2.085738 79.550095 -0.000002 0.000000 0.000000 -0.000001 0.000002 0.000005
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.795833 0.000000 0.000000 -1.139498 -85.142097 -89.984459 -0.000004 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 15.273008 0.119648 -0.022802 -2.683906 9.559801 9.626665 0.000000 0.000000 -0.000000 0.000001 -0.000001 0.000002
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.795833 0.000000 0.000000 -1.138754 -94.859581 -89.988235 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 15.273008 0.119467 0.023202 2.687058 9.534593 -9.651704 0.000000 0.000000 0.000000 -0.000000 0.000001 0.000000
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 20.638947 -0.121402 0.281013 14.440539 -72.457787 8.734168 -0.000000 0.000000 0.000000 -0.000000 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 3.513847 0.191868 0.000156 -0.002292 11.980488 179.999619 0.000000 0.000000 0.000000 0.000000 0.000002 -0.000000
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.993599 0.037970 0.000010 0.000000 16.351530 -0.000057 0.000000 0.000000 -0.000000 0.000000 0.000000 -0.000000
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 2.014791 -1.350330 -0.490666 -6.398049 73.670906 89.362114 0.000000 0.000000 0.000000 -0.000007 0.000002 -0.000001
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.116444 0.859120 -1.163222 81.818756 176.456726 -78.327438 0.000000 0.000000 0.000000 -0.000000 -0.000001 -0.000003
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.467480 0.014839 -0.089461 -9.301111 -52.312538 86.688629 -0.000004 0.000000 0.000000 -0.000007 0.000001 0.000000
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 9.866444 -0.089736 0.081585 5.035948 -9.923224 -0.965834 0.000000 0.000000 0.000000 -0.000010 0.000003 0.000002
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.723631 -0.302537 -0.080982 5.135015 2.388320 -79.731773 0.000000 0.000000 0.000000 -0.000003 -0.000003 -0.000005
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.020508 -1.300751 0.430716 -6.222038 -102.774757 -90.222458 0.000000 0.000000 0.000000 -0.000005 -0.000002 -0.000003
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 20.638920 -0.129625 -0.279480 -14.351620 -72.565041 -8.095321 0.000000 0.000000 0.000000 0.000001 0.000004 0.000000
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.681482 -0.031395 -0.800539 2.956745 -17.742044 -8.992691 0.000000 0.000000 -0.000000 -0.000003 -0.000005 -0.000002
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.300732 -0.016651 -0.009774 4.850943 -13.838824 -5.375092 0.000000 0.000002 0.000000 -0.000004 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.087376 -0.022173 0.007435 -2.146705 -13.754657 5.800683 0.000000 0.000000 0.000000 -0.000003 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.791025 0.169155 -0.052713 -2.211047 -19.086203 -4.743464 0.000002 0.000000 0.000000 -0.000003 -0.000005 -0.000001
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.571068 -0.088776 0.022405 -0.024354 -9.176040 -0.747768 -0.000002 0.000000 0.000000 -0.000003 -0.000007 -0.000001
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.112057 -0.092993 0.042371 -0.696720 -14.701757 0.332086 0.000000 0.000000 0.000000 -0.000003 -0.000003 0.000000
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.973251 -0.239353 -1.054574 28.522804 -40.474083 72.793602 0.000000 0.000000 -0.000002 -0.000006 0.000008 0.000001
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.191233 -0.065063 -0.006319 -2.547204 -0.450797 6.279734 0.000000 0.000000 0.000000 -0.000004 0.000008 -0.000001
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.111132 -0.007820 0.000284 -7.289000 -9.429504 -3.377643 0.000000 0.000000 0.000000 -0.000003 0.000007 0.000000
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.685944 -0.048500 0.778877 -2.678347 -17.736704 9.094336 -0.000002 0.000000 0.000000 0.000003 0.000009 0.000002
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.300659 -0.022175 0.008183 -4.828253 -13.816351 5.395085 -0.000004 0.000000 0.000000 0.000007 0.000011 -0.000001
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.087261 -0.027227 -0.007782 2.165213 -13.740946 -5.828817 0.000000 0.000000 0.000000 0.000003 0.000014 0.000001
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.978466 -0.247131 1.047937 -28.108551 -41.054703 -72.454010 0.000000 0.000000 0.000000 -0.000005 0.000013 0.000004
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.191278 -0.063227 0.013464 2.598072 -2.658683 -1.600323 0.000002 0.000000 0.000000 -0.000004 0.000013 0.000003
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.110529 0.036247 0.009048 5.807958 -7.729019 -1.331835 0.000000 0.000000 0.000000 -0.000002 0.000010 0.000006
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.155852 -0.134927 0.031559 -1.168778 -23.341501 -0.662856 0.000000 -0.000000 0.000000 -0.000000 -0.000002 -0.000000
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.791893 0.154518 0.031200 2.505486 -19.046543 4.862755 0.000002 0.000000 0.000000 -0.000000 0.000007 0.000004
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.570620 -0.095928 -0.024373 0.018851 -9.189202 0.706690 0.000002 0.000000 0.000000 0.000000 0.000010 0.000004
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.111593 -0.097811 -0.043808 0.721928 -14.660144 -0.272438 0.000000 0.000000 0.000000 0.000001 0.000012 0.000003
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.156049 -0.128049 -0.018953 0.957528 -23.085733 -4.414009 0.000000 0.000000 0.000000 0.000002 -0.000003 0.000001

$definebone "breast_jiggle" "ValveBiped.Bip01_Spine2" 2.589222 1.883678 -0.001252 -89.975403 -82.891235 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000001

$bonemerge "ValveBiped.Bip01_R_Ulna"
$bonemerge "ValveBiped.Bip01_L_Ulna"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_L_Wrist"
$bonemerge "ValveBiped.Bip01_R_Elbow"
$bonemerge "ValveBiped.Bip01_L_Elbow"
$bonemerge "ValveBiped.Bip01_R_Knee"
$bonemerge "ValveBiped.Bip01_L_Knee"

$proceduralbones "cortana_procedurals.vrd"

$jigglebone "breast_jiggle"
{
	is_flexible
	{
		length 100
		tip_mass 20
		pitch_stiffness 350
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 7
		angle_constraint 5
	}
}

$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 0 -90

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 0.5 0.1
$ikautoplaylock "lfoot" 0.5 0.1

$sequence reference "anims/reference_hostile" fps 1

$animation a_proportions "anims/proportions_hostile" subtract reference 0

$sequence proportions a_proportions predelta autoplay

$Sequence "ragdoll" {
	"anims/reference_hostile"
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

$hbox 1 "ValveBiped.Bip01_Head1"	    -2.00   -5.00   -3.25     7.00    4.00    3.25
$hbox 4 "ValveBiped.Bip01_L_UpperArm"	    -1.00   -1.75   -1.75    11.00    2.25    1.55
$hbox 4 "ValveBiped.Bip01_L_Forearm"	    -0.75   -1.88   -1.50    11.25    1.62    1.50
$hbox 4 "ValveBiped.Bip01_L_Hand"	    -0.50   -1.13   -2.50     5.50    0.63    2.50
$hbox 5 "ValveBiped.Bip01_R_UpperArm"	    -1.00   -1.75   -1.55    11.00    2.25    1.75
$hbox 5 "ValveBiped.Bip01_R_Forearm"	    -0.75   -1.88   -1.50    11.25    1.62    1.50
$hbox 5 "ValveBiped.Bip01_R_Hand"	    -0.50   -1.13   -2.50     5.50    0.63    2.50
$hbox 6 "ValveBiped.Bip01_L_Thigh"	     0.50   -4.40   -3.25    17.50    3.60    3.25
$hbox 6 "ValveBiped.Bip01_L_Calf"	     0.74   -3.10   -2.15    17.74    2.90    2.35
$hbox 6 "ValveBiped.Bip01_L_Foot"	    -2.00   -1.80   -1.75     6.00    3.20    1.75
$hbox 6 "ValveBiped.Bip01_L_Toe0"	    -0.17   -1.40   -1.50     2.57    0.40    1.50
$hbox 7 "ValveBiped.Bip01_R_Thigh"	     0.50   -4.40   -3.00    17.50    3.60    3.00
$hbox 7 "ValveBiped.Bip01_R_Calf"	     0.74   -3.10   -2.35    17.74    2.90    2.15
$hbox 7 "ValveBiped.Bip01_R_Foot"	    -2.00   -1.80   -1.75     6.00    3.20    1.75
$hbox 7 "ValveBiped.Bip01_R_Toe0"	    -0.17   -1.40   -1.50     2.57    0.40    1.50
$hbox 3 "ValveBiped.Bip01_Pelvis"	    -6.50   -3.88   -4.80     6.50    4.12    5.20
$hbox 3 "ValveBiped.Bip01_Spine1"	    -4.50   -1.50   -4.97     3.50    6.50    4.97
$hbox 2 "ValveBiped.Bip01_Spine2"	    -1.50   -2.00   -5.00     9.50    7.00    5.00

$collisionjoints "cortana_physics.smd"
{
	$mass 70.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "valvebiped.bip01_pelvis"

	$jointconstrain "valvebiped.bip01_spine2" x limit -48.00 48.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" z limit -25.00 50.00 0.00

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -79.00 95.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -93.00 23.00 0.00

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -95.00 84.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -86.00 26.00 0.00

	$jointconstrain "valvebiped.bip01_l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -149.00 4.00 0.00

	$jointconstrain "valvebiped.bip01_l_hand" x limit -37.00 37.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -57.00 59.00 0.00

	$jointconstrain "valvebiped.bip01_r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -149.00 4.00 0.00

	$jointconstrain "valvebiped.bip01_r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -57.00 70.00 0.00

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -8.00 75.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -97.00 32.00 0.00

	$jointconstrain "valvebiped.bip01_r_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit -12.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_head1" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -13.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -73.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -93.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit -8.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_l_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -19.00 19.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -15.00 35.00 0.00

	$jointconstrain "valvebiped.bip01_r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -25.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -15.00 35.00 0.00

	$jointcollide "valvebiped.bip01_l_forearm" "valvebiped.bip01_Pelvis"
	$jointcollide "valvebiped.bip01_r_forearm" "valvebiped.bip01_Pelvis"
	$jointcollide "valvebiped.bip01_l_forearm" "valvebiped.bip01_spine2"
	$jointcollide "valvebiped.bip01_r_forearm" "valvebiped.bip01_spine2"
	$jointcollide "valvebiped.bip01_r_thigh" "valvebiped.bip01_l_thigh"
	$jointcollide "valvebiped.bip01_r_calf" "valvebiped.bip01_l_calf"
	$jointcollide "valvebiped.bip01_l_foot" "valvebiped.bip01_r_foot"
	$jointcollide "valvebiped.bip01_l_foot" "valvebiped.bip01_r_calf"
	$jointcollide "valvebiped.bip01_r_foot" "valvebiped.bip01_l_calf"

	$jointcollide "valvebiped.bip01_l_forearm" "valvebiped.bip01_l_thigh"
	$jointcollide "valvebiped.bip01_l_forearm" "valvebiped.bip01_r_thigh"
	$jointcollide "valvebiped.bip01_r_forearm" "valvebiped.bip01_l_thigh"
	$jointcollide "valvebiped.bip01_r_forearm" "valvebiped.bip01_r_thigh"
}

$includemodel "combine_soldier_anims.mdl"
//$includemodel "humans/male_shared.mdl"