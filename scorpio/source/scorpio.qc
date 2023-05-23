$modelname "turbo\scorpio\scorpio.mdl"

$ambientboost

$eyeposition 0 0 70

$attachment "eyes" "ValveBiped.Bip01_Head1" 2.20 -3.00 0.00 rotate 0 -77 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.00 -4.60 -0.00 rotate -0 -80 -90
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 0 -90

$model scorpio_body "scorpio_body.smd"

$model scorpio_face "scorpio_face.smd" {

	flexfile "scorpio_face" {
		defaultflex frame 0
		flex "blink" frame 1
	}

	flexcontroller eyelid blink

	%blink = blink
}

$model scorpio_jaw "scorpio_jaw.smd" {

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "scorpio_jaw" {
		defaultflex frame 0
		flex "jawdrop" frame 1
	}

	flexcontroller phoneme jaw_drop

	%jawdrop = jaw_drop

	%mouth = %jawdrop
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "models\turbo\scorpio\"

$texturegroup skinfamilies
{
	{ scorpio_default scorpio_mouth }
	{ scorpio_black scorpio_mouth_black }
	{ scorpio_gold scorpio_mouth_gold }
}

$cbox 0 0 0 0 0 0

$bbox -13 -13 0  13 13 72

$definebone "ValveBiped.Bip01_Pelvis" "" -0.000005 -0.201343 40.084511 -0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000003 3.465302 -0.993322 -1.204472 89.999985 89.999985 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 2.681278 -0.000001 0.000000 -0.000000 -6.570451 -0.000115 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 2.836338 -0.000002 0.000000 -0.000000 -2.589884 -0.000115 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 7.994598 -0.000001 -0.000001 -0.000115 20.121073 0.000286 0.000000 0.000000 -0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 2.965458 -0.000001 -0.000001 -0.000000 4.661011 179.999680 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.991318 0.000004 0.000000 0.000000 4.080317 0.000057 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.984013 0.000011 0.000007 0.028591 -87.900612 -90.009956 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 18.783491 -0.000004 0.000001 4.347719 5.732328 -0.327846 0.000000 0.000000 -0.000000 0.000001 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.997379 0.000004 -0.000142 2.328558 -69.008636 3.064063 0.000000 -0.000000 0.000000 0.000001 0.000004 -0.000000
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.773834 0.937304 1.097161 -60.989101 171.713150 83.152603 0.000000 0.000000 0.000000 -0.000000 -0.000002 0.000000
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 4.574509 -0.000004 0.000000 2.848460 -26.471052 -88.172882 -0.000004 0.000000 0.000000 -0.000002 -0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 9.136234 -0.000001 -0.000004 8.643585 -26.335775 -1.226071 0.000000 0.000001 0.000000 0.000003 -0.000002 -0.000001
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 9.321613 0.000003 -0.000010 13.512756 0.476356 95.469391 0.000000 0.000000 0.000001 -0.000003 -0.000005 0.000002
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.984014 0.000000 -0.000003 0.028591 -92.099358 -89.990013 0.000004 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 18.783478 -0.000008 0.000002 -4.348177 5.732385 0.327846 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.997375 -0.000005 -0.000008 -2.328386 -69.008636 -3.064522 0.000000 0.000000 0.000000 0.000000 0.000001 -0.000000
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.773834 0.937304 -1.097162 60.989056 171.713257 -83.152428 0.000000 0.000004 0.000000 0.000000 0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.574512 0.000004 -0.000001 -2.848459 -26.470985 88.172882 0.000000 0.000000 0.000000 0.000009 0.000000 0.000001
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 9.136227 -0.000007 0.000000 -8.643636 -26.335773 1.226070 0.000000 0.000000 0.000000 0.000009 0.000003 -0.000003
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 9.321608 -0.000002 -0.000004 -13.512689 0.476299 -95.469330 0.000000 0.000000 0.000000 -0.000001 0.000006 0.000005
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.349384 -0.282557 1.236738 -4.809065 -32.370056 -88.960693 0.000000 0.000000 0.000000 0.000005 -0.000002 -0.000003
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.551533 -0.000002 -0.000001 4.991841 -0.527466 3.363886 0.000000 0.000000 0.000000 0.000003 -0.000003 -0.000010
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 0.939564 0.000000 0.000000 -3.310543 26.545134 -2.586280 0.000000 0.000000 0.000000 0.000007 -0.000001 -0.000005
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.886990 -0.385267 0.821253 7.812279 -16.923859 12.788705 0.000000 0.000000 0.000000 -0.000002 -0.000002 0.000003
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.014923 -0.000002 0.000000 -1.621759 -15.103282 2.819300 -0.000004 0.000000 0.000000 -0.000001 0.000002 0.000005
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.853525 -0.042364 0.075592 0.438882 -14.199447 17.035355 0.000000 0.000000 0.000000 -0.000003 -0.000004 0.000005
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.061413 0.000002 0.000001 2.629703 -25.069710 -5.370269 0.000000 0.000000 0.000000 0.000001 -0.000002 0.000007
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.921932 -0.000001 -0.000002 2.448080 -16.155170 -1.003986 0.000000 0.000001 -0.000000 0.000005 0.000007 0.000009
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.414774 -0.047832 1.323114 -4.945087 -15.011435 9.570749 -0.000004 0.000000 -0.000001 -0.000002 0.000003 0.000004
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.746536 0.000000 -0.000001 1.335221 -13.565465 -0.914092 0.000000 0.000000 0.000000 -0.000000 -0.000003 0.000006
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.734146 -0.000001 -0.000001 -3.702511 -16.682652 4.193829 0.000000 0.000000 0.000000 0.000000 -0.000010 0.000006
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.714905 0.031784 0.628306 -6.454603 -12.346207 5.729412 0.000000 0.000000 0.000000 -0.000004 0.000003 0.000004
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 0.896832 0.000000 0.000001 1.144826 -13.004252 -3.671624 0.000000 0.000000 0.000000 -0.000003 -0.000001 0.000004
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.877113 0.000000 0.000000 -1.384211 -12.669821 1.091261 0.000000 0.000000 0.000000 -0.000003 -0.000005 0.000006
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.853525 -0.042358 -0.075591 -0.438886 -14.199385 -17.035345 0.000000 0.000000 0.000000 0.000000 0.000001 0.000002
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.061413 0.000000 0.000002 -2.629762 -25.070002 5.370276 0.000004 0.000001 -0.000000 -0.000001 -0.000007 0.000000
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.921936 0.000001 0.000000 -2.448077 -16.155016 1.003880 0.000000 0.000000 0.000000 -0.000002 -0.000009 0.000002
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.886997 -0.385265 -0.821252 -7.812341 -16.923792 -12.788697 0.000004 0.000000 -0.000000 -0.000003 0.000000 0.000003
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.014927 -0.000003 0.000000 1.621698 -15.103343 -2.819347 0.000000 0.000000 0.000000 -0.000001 -0.000002 0.000005
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.712147 -0.000001 -0.000001 -1.396357 -21.330650 6.698799 0.000000 -0.000001 0.000000 -0.000002 -0.000003 0.000007
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.349388 -0.282555 -1.236737 4.809009 -32.369999 88.960701 0.000000 0.000000 0.000001 -0.000005 -0.000002 -0.000006
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.551540 -0.000002 0.000003 -4.991845 -0.527466 -3.363896 0.000000 0.000000 0.000001 -0.000007 -0.000004 -0.000002
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 0.939568 0.000000 0.000001 3.310486 26.545080 2.586328 0.000004 -0.000000 0.000000 -0.000006 0.000006 -0.000003
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.714905 0.031778 -0.628305 6.454541 -12.346215 -5.729403 -0.000004 0.000000 0.000000 -0.000001 -0.000006 0.000002
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 0.896828 0.000000 0.000001 -1.144886 -13.004257 3.671574 0.000000 0.000000 0.000000 -0.000002 -0.000004 0.000003
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.877113 -0.000001 0.000001 1.384208 -12.669817 -1.091194 0.000000 0.000000 0.000000 -0.000002 -0.000002 0.000004
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.414764 -0.047834 -1.323112 4.944909 -15.011385 -9.570744 0.000000 0.000001 0.000000 -0.000001 -0.000006 -0.000000
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.746540 0.000001 0.000000 -1.335164 -13.565526 0.914039 0.000000 0.000000 0.000000 -0.000001 -0.000005 -0.000000
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.734146 0.000002 -0.000001 3.702452 -16.682640 -4.193821 0.000000 0.000000 0.000000 -0.000002 0.000003 0.000000
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 4.540727 0.000001 0.000004 1.715723 -22.968622 -0.871011 0.000000 0.000000 0.000000 0.000000 -0.000003 -0.000000
$definebone "eye_r" "ValveBiped.Bip01_Head1" 2.290573 -3.029609 1.243408 0.423702 104.040886 90.065590 0.000000 -0.000000 -0.000008 -0.000001 0.000000 0.000000
$definebone "eye_l" "ValveBiped.Bip01_Head1" 2.290565 -3.029598 -1.243429 0.424046 -75.958679 90.065758 -0.000000 -0.000000 0.000000 0.000001 0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 4.540730 0.000001 0.000000 -1.715722 -22.968618 0.871010 0.000000 -0.000000 0.000000 0.000000 0.000001 -0.000001
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.712151 0.000001 -0.000001 1.396415 -21.330584 -6.698845 0.000004 -0.000001 0.000000 0.000002 0.000002 0.000005

$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_L_Wrist"
$bonemerge "ValveBiped.Bip01_R_Knee"
$bonemerge "ValveBiped.Bip01_L_Knee"

$proceduralbones "scorpio_procedurals.vrd"

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

$hbox 1 "ValveBiped.Bip01_Head1"	    -2.00   -5.50   -3.25     7.00    3.50    3.25
$hbox 4 "ValveBiped.Bip01_L_UpperArm"	    -1.00   -1.75   -1.35    11.00    2.25    1.95
$hbox 4 "ValveBiped.Bip01_L_Forearm"	     0.00   -1.88   -1.50    10.50    1.62    1.50
$hbox 4 "ValveBiped.Bip01_L_Hand"	     0.25   -1.13   -2.50     5.75    0.63    2.50
$hbox 5 "ValveBiped.Bip01_R_UpperArm"	    -1.00   -1.75   -1.95    11.00    2.25    1.35
$hbox 5 "ValveBiped.Bip01_R_Forearm"	     0.00   -1.88   -1.50    10.50    1.62    1.50
$hbox 5 "ValveBiped.Bip01_R_Hand"	     0.25   -1.13   -2.50     5.75    0.63    2.50
$hbox 6 "ValveBiped.Bip01_L_Thigh"	     0.50   -4.40   -3.25    18.50    3.60    3.25
$hbox 6 "ValveBiped.Bip01_L_Calf"	    -0.75   -2.50   -2.15    16.75    3.50    2.35
$hbox 6 "ValveBiped.Bip01_L_Foot"	    -1.50   -1.80   -1.75     4.50    3.20    1.75
$hbox 6 "ValveBiped.Bip01_L_Toe0"	    -0.17   -1.40   -1.50     2.57    0.40    1.50
$hbox 7 "ValveBiped.Bip01_R_Thigh"	     0.50   -4.40   -3.00    18.50    3.60    3.00
$hbox 7 "ValveBiped.Bip01_R_Calf"	    -0.75   -2.50   -2.35    16.75    3.50    2.15
$hbox 7 "ValveBiped.Bip01_R_Foot"	    -1.50   -1.80   -1.75     4.50    3.20    1.75
$hbox 7 "ValveBiped.Bip01_R_Toe0"	    -0.17   -1.40   -1.50     2.57    0.40    1.50
$hbox 3 "ValveBiped.Bip01_Pelvis"	    -6.50   -3.88   -4.30     6.50    4.12    4.70
$hbox 3 "ValveBiped.Bip01_Spine1"	    -4.50   -1.80   -4.97     3.50    5.20    4.97
$hbox 2 "ValveBiped.Bip01_Spine2"	    -1.50   -2.50   -5.00     9.50    6.50    5.00

$includemodel "f_anm.mdl"

$collisionjoints "scorpio_physics.smd"
{
	$mass 70.0
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

	$jointconstrain "valvebiped.bip01_spine1" x limit -28.00 28.00 0.00
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