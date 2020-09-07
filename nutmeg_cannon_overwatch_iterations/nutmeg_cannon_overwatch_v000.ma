//Maya ASCII 2019 scene
//Name: nutmeg_cannon_overwatch.ma
//Last modified: Sat, Sep 05, 2020 05:08:01 PM
//Codeset: 936
file -rdi 1 -ns "nutmeg" -rfn "nutmegRN" -op "v=0;" -typ "mayaAscii" "Y:/library/maya/rigs/char_rigged/Nutmeg/nutmeg.ma";
file -rdi 1 -ns "cannon" -rfn "cannonRN" -op "v=0;" -typ "mayaAscii" "Y:/library/maya/props/Cannon/cannon.ma";
file -r -ns "nutmeg" -dr 1 -rfn "nutmegRN" -op "v=0;" -typ "mayaAscii" "Y:/library/maya/rigs/char_rigged/Nutmeg/nutmeg.ma";
file -r -ns "cannon" -dr 1 -rfn "cannonRN" -op "v=0;" -typ "mayaAscii" "Y:/library/maya/props/Cannon/cannon.ma";
requires maya "2019";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "4.0.4";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "C15DD0C1-4609-ED6C-6DC5-74BC06657C0A";
	setAttr ".t" -type "double3" -136.23201590571776 283.87771330455683 167.72669853533174 ;
	setAttr ".r" -type "double3" 0.26164727047006064 -402.19999999993394 3.3542021166523052e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "713036E4-45E6-1094-528D-E09D0321E02A";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 235.96713382946979;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr -s 2 ".ip";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dgm" no;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "imagePlane1" -p "perspShape";
	rename -uid "3E6AE610-44B3-22E2-97A9-B7A863FC4347";
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "D84714D3-43D6-7CE5-4F32-CAAE4BEA2AAA";
	setAttr -k off ".v";
	setAttr ".t" 2;
	setAttr ".fc" 203;
	setAttr ".imn" -type "string" "C:/Users/hongj/Desktop/nutmeg_cannon_overwatch/ref/ref_24fps.mkv";
	setAttr ".ufe" yes;
	setAttr ".fin" 0;
	setAttr ".h" 10;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane2" -p "perspShape";
	rename -uid "5003AE48-4138-46A6-C865-39B344A873DA";
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "622A8020-4C7F-62AA-AFE8-AF81BFA534B3";
	setAttr -k off ".v";
	setAttr ".fc" 203;
	setAttr ".imn" -type "string" "C:/Users/hongj/Desktop/nutmeg_cannon_overwatch/reference/ref000.png";
	setAttr ".ufe" yes;
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".dic" yes;
	setAttr ".cg" -type "float3" 0 0 0 ;
	setAttr ".ag" 0.38607594908415516;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -s -n "top";
	rename -uid "680B8FE8-45D0-03C3-792C-F98906E4582B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A59354CB-440B-DDAB-FC61-8E90267A5A0A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "113B1A3E-4198-5AA3-9F68-CF92A03F62DC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "75C47BD9-4A8A-5BD0-E23D-A4BD1562971F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "35970FE1-4D4D-BF4C-4CB2-04A0AEE29145";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "65B7CA4B-4D4D-1DB1-CCEE-159341766844";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "render_cam";
	rename -uid "B410D350-4312-447B-2303-2E972FBA6C04";
createNode camera -n "render_camShape" -p "render_cam";
	rename -uid "8849EF86-48DA-2FFE-66BA-C5BD8B3FE861";
	setAttr -k off ".v";
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 36.514375998266743;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "imagePlane3" -p "render_camShape";
	rename -uid "E8D56874-4981-A098-32E0-8C89447CC4E8";
createNode imagePlane -n "imagePlaneShape3" -p "imagePlane3";
	rename -uid "27D0BFEF-430E-9DA8-D445-EFB4ABC62A83";
	setAttr -k off ".v";
	setAttr ".fc" 203;
	setAttr ".imn" -type "string" "C:/Users/hongj/Desktop/nutmeg_cannon_overwatch/reference/ref000.png";
	setAttr ".ufe" yes;
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".ag" 0.25949367090965375;
	setAttr ".w" 19.2;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4597C337-44F0-DF14-D3A9-FFBECA83F7AE";
	setAttr -s 28 ".lnk";
	setAttr -s 28 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2EC83400-4988-7E25-1F62-33AAA629D826";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "258C3A6F-4322-58B7-BD5A-518A0C65131A";
createNode displayLayerManager -n "layerManager";
	rename -uid "699C683B-4765-EFF9-2C7F-C2B2C3EA9B19";
createNode displayLayer -n "defaultLayer";
	rename -uid "41F86DAE-470E-BAC5-CBDC-55A99585F29F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "98C38EB7-4C58-81E6-A652-E89A9E2CDCEF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E02CE6AA-496F-A11A-E497-2E86E14A85B5";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A0B60010-49EA-BB3F-DC27-EDADA49B437C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1755\n            -height 691\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n"
		+ "\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"render_cam\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1910\n            -height 953\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"render_cam\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 0\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 1\n            -particleInstancers 0\n            -fluids 1\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n"
		+ "            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"render_cam\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 0\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 1\n            -particleInstancers 0\n            -fluids 1\n            -hairSystems 0\n            -follicles 0\n"
		+ "            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1755\\n    -height 691\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1755\\n    -height 691\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9A715C32-4A88-E1C4-DB56-E48DF89D3998";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast -24 -aet 144 ";
	setAttr ".st" 6;
createNode reference -n "nutmegRN";
	rename -uid "5BC35D9A-45D6-3C74-888A-1DB54A355FE4";
	setAttr -s 868 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".phl[723]" 0;
	setAttr ".phl[724]" 0;
	setAttr ".phl[725]" 0;
	setAttr ".phl[726]" 0;
	setAttr ".phl[727]" 0;
	setAttr ".phl[728]" 0;
	setAttr ".phl[729]" 0;
	setAttr ".phl[730]" 0;
	setAttr ".phl[731]" 0;
	setAttr ".phl[732]" 0;
	setAttr ".phl[733]" 0;
	setAttr ".phl[734]" 0;
	setAttr ".phl[735]" 0;
	setAttr ".phl[736]" 0;
	setAttr ".phl[737]" 0;
	setAttr ".phl[738]" 0;
	setAttr ".phl[739]" 0;
	setAttr ".phl[740]" 0;
	setAttr ".phl[741]" 0;
	setAttr ".phl[742]" 0;
	setAttr ".phl[743]" 0;
	setAttr ".phl[744]" 0;
	setAttr ".phl[745]" 0;
	setAttr ".phl[746]" 0;
	setAttr ".phl[747]" 0;
	setAttr ".phl[748]" 0;
	setAttr ".phl[749]" 0;
	setAttr ".phl[750]" 0;
	setAttr ".phl[751]" 0;
	setAttr ".phl[752]" 0;
	setAttr ".phl[753]" 0;
	setAttr ".phl[754]" 0;
	setAttr ".phl[755]" 0;
	setAttr ".phl[756]" 0;
	setAttr ".phl[757]" 0;
	setAttr ".phl[758]" 0;
	setAttr ".phl[759]" 0;
	setAttr ".phl[760]" 0;
	setAttr ".phl[761]" 0;
	setAttr ".phl[762]" 0;
	setAttr ".phl[763]" 0;
	setAttr ".phl[764]" 0;
	setAttr ".phl[765]" 0;
	setAttr ".phl[766]" 0;
	setAttr ".phl[767]" 0;
	setAttr ".phl[768]" 0;
	setAttr ".phl[769]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[771]" 0;
	setAttr ".phl[772]" 0;
	setAttr ".phl[773]" 0;
	setAttr ".phl[774]" 0;
	setAttr ".phl[775]" 0;
	setAttr ".phl[776]" 0;
	setAttr ".phl[777]" 0;
	setAttr ".phl[778]" 0;
	setAttr ".phl[779]" 0;
	setAttr ".phl[780]" 0;
	setAttr ".phl[781]" 0;
	setAttr ".phl[782]" 0;
	setAttr ".phl[783]" 0;
	setAttr ".phl[784]" 0;
	setAttr ".phl[785]" 0;
	setAttr ".phl[786]" 0;
	setAttr ".phl[787]" 0;
	setAttr ".phl[788]" 0;
	setAttr ".phl[789]" 0;
	setAttr ".phl[790]" 0;
	setAttr ".phl[791]" 0;
	setAttr ".phl[792]" 0;
	setAttr ".phl[793]" 0;
	setAttr ".phl[794]" 0;
	setAttr ".phl[795]" 0;
	setAttr ".phl[796]" 0;
	setAttr ".phl[797]" 0;
	setAttr ".phl[798]" 0;
	setAttr ".phl[799]" 0;
	setAttr ".phl[800]" 0;
	setAttr ".phl[801]" 0;
	setAttr ".phl[802]" 0;
	setAttr ".phl[803]" 0;
	setAttr ".phl[804]" 0;
	setAttr ".phl[805]" 0;
	setAttr ".phl[806]" 0;
	setAttr ".phl[807]" 0;
	setAttr ".phl[808]" 0;
	setAttr ".phl[809]" 0;
	setAttr ".phl[810]" 0;
	setAttr ".phl[811]" 0;
	setAttr ".phl[812]" 0;
	setAttr ".phl[813]" 0;
	setAttr ".phl[814]" 0;
	setAttr ".phl[815]" 0;
	setAttr ".phl[816]" 0;
	setAttr ".phl[817]" 0;
	setAttr ".phl[818]" 0;
	setAttr ".phl[819]" 0;
	setAttr ".phl[820]" 0;
	setAttr ".phl[821]" 0;
	setAttr ".phl[822]" 0;
	setAttr ".phl[823]" 0;
	setAttr ".phl[824]" 0;
	setAttr ".phl[825]" 0;
	setAttr ".phl[826]" 0;
	setAttr ".phl[827]" 0;
	setAttr ".phl[828]" 0;
	setAttr ".phl[829]" 0;
	setAttr ".phl[830]" 0;
	setAttr ".phl[831]" 0;
	setAttr ".phl[832]" 0;
	setAttr ".phl[833]" 0;
	setAttr ".phl[834]" 0;
	setAttr ".phl[835]" 0;
	setAttr ".phl[836]" 0;
	setAttr ".phl[837]" 0;
	setAttr ".phl[838]" 0;
	setAttr ".phl[839]" 0;
	setAttr ".phl[840]" 0;
	setAttr ".phl[841]" 0;
	setAttr ".phl[842]" 0;
	setAttr ".phl[843]" 0;
	setAttr ".phl[844]" 0;
	setAttr ".phl[845]" 0;
	setAttr ".phl[846]" 0;
	setAttr ".phl[847]" 0;
	setAttr ".phl[848]" 0;
	setAttr ".phl[849]" 0;
	setAttr ".phl[850]" 0;
	setAttr ".phl[851]" 0;
	setAttr ".phl[852]" 0;
	setAttr ".phl[853]" 0;
	setAttr ".phl[854]" 0;
	setAttr ".phl[855]" 0;
	setAttr ".phl[856]" 0;
	setAttr ".phl[857]" 0;
	setAttr ".phl[858]" 0;
	setAttr ".phl[859]" 0;
	setAttr ".phl[860]" 0;
	setAttr ".phl[861]" 0;
	setAttr ".phl[862]" 0;
	setAttr ".phl[863]" 0;
	setAttr ".phl[864]" 0;
	setAttr ".phl[865]" 0;
	setAttr ".phl[866]" 0;
	setAttr ".phl[867]" 0;
	setAttr ".phl[868]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"nutmegRN"
		"nutmegRN" 0
		"nutmegRN" 1151
		2 "|nutmeg:Nutmeg_topCon" "global_scale" " -k 1 1.5"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim" 
		"translate" " -type \"double3\" 3.03372307494594784 131.05834986608533654 -27.2655957716732722"
		
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim" 
		"translateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim" 
		"translateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim" 
		"translateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim" 
		"rotate" " -type \"double3\" 23.53821834248075717 -1.77666806232256813 4.07109611594928378"
		
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim|nutmeg:center_COG_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_pelvis_component_grp|nutmeg:center_pelvis_anim_grp|nutmeg:center_pelvis_null|nutmeg:center_pelvis_vis_null|nutmeg:center_pelvis_anim|nutmeg:center_pelvis_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim" 
		"rotate" " -type \"double3\" 0 -3.0080555552703756 71.79003842133018054"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim" 
		"rotate" " -type \"double3\" 0 0 -34.86472889413034437"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim|nutmeg:center_tail_7_FK_null|nutmeg:center_tail_7_FK_deformer_null|nutmeg:center_tail_7_FK_vis_null|nutmeg:center_tail_7_FK_anim|nutmeg:center_tail_7_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim|nutmeg:center_tail_6_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_5_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_4_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_3_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_2_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_1_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_1_IK_null|nutmeg:center_tail_1_IK_multicon_null|nutmeg:center_tail_1_IK_vis_null|nutmeg:center_tail_1_IK_anim|nutmeg:center_tail_1_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_2_IK_null|nutmeg:center_tail_2_IK_multicon_null|nutmeg:center_tail_2_IK_vis_null|nutmeg:center_tail_2_IK_anim|nutmeg:center_tail_2_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_3_IK_null|nutmeg:center_tail_3_IK_multicon_null|nutmeg:center_tail_3_IK_vis_null|nutmeg:center_tail_3_IK_anim|nutmeg:center_tail_3_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_4_IK_null|nutmeg:center_tail_4_IK_multicon_null|nutmeg:center_tail_4_IK_vis_null|nutmeg:center_tail_4_IK_anim|nutmeg:center_tail_4_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_5_IK_null|nutmeg:center_tail_5_IK_multicon_null|nutmeg:center_tail_5_IK_vis_null|nutmeg:center_tail_5_IK_anim|nutmeg:center_tail_5_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim|nutmeg:center_spine_3_null|nutmeg:center_spine_3_multicon_null|nutmeg:center_spine_3_vis_null|nutmeg:center_spine_3_anim|nutmeg:center_spine_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim|nutmeg:center_spine_3_null|nutmeg:center_spine_3_multicon_null|nutmeg:center_spine_3_vis_null|nutmeg:center_spine_3_anim|nutmeg:center_spine_3_animShape1" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim|nutmeg:center_spine_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim|nutmeg:center_spine_2_animShape1" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_1_animShape1" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim" 
		"rotate" " -type \"double3\" 0 -144.25963280426742585 0"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_2_null|nutmeg:center_neck_2_vis_null|nutmeg:center_neck_2_anim" 
		"rotate" " -type \"double3\" -42.55644165762649322 211.47071348950717606 -115.76953159863980147"
		
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_2_null|nutmeg:center_neck_2_vis_null|nutmeg:center_neck_2_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_2_null|nutmeg:center_neck_2_vis_null|nutmeg:center_neck_2_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_2_null|nutmeg:center_neck_2_vis_null|nutmeg:center_neck_2_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_2_null|nutmeg:center_neck_2_vis_null|nutmeg:center_neck_2_anim|nutmeg:center_neck_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_head_component_grp|nutmeg:center_head_anim_grp|nutmeg:center_head_null|nutmeg:center_head_multicon_null|nutmeg:center_head_vis_null|nutmeg:center_head_anim|nutmeg:center_head_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_A_component_grp|nutmeg:center_tail_tuft_A_anim_grp|nutmeg:center_tail_tuft_A_null|nutmeg:center_tail_tuft_A_vis_null|nutmeg:center_tail_tuft_A_anim|nutmeg:center_tail_tuft_A_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_C_component_grp|nutmeg:center_tail_tuft_C_anim_grp|nutmeg:center_tail_tuft_C_1_null|nutmeg:center_tail_tuft_C_1_vis_null|nutmeg:center_tail_tuft_C_1_anim|nutmeg:center_tail_tuft_C_2_null|nutmeg:center_tail_tuft_C_2_vis_null|nutmeg:center_tail_tuft_C_2_anim|nutmeg:center_tail_tuft_C_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_C_component_grp|nutmeg:center_tail_tuft_C_anim_grp|nutmeg:center_tail_tuft_C_1_null|nutmeg:center_tail_tuft_C_1_vis_null|nutmeg:center_tail_tuft_C_1_anim|nutmeg:center_tail_tuft_C_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_B_component_grp|nutmeg:center_tail_tuft_B_anim_grp|nutmeg:center_tail_tuft_B_null|nutmeg:center_tail_tuft_B_vis_null|nutmeg:center_tail_tuft_B_anim|nutmeg:center_tail_tuft_B_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_E_component_grp|nutmeg:center_tail_tuft_E_anim_grp|nutmeg:center_tail_tuft_E_1_null|nutmeg:center_tail_tuft_E_1_vis_null|nutmeg:center_tail_tuft_E_1_anim|nutmeg:center_tail_tuft_E_2_null|nutmeg:center_tail_tuft_E_2_vis_null|nutmeg:center_tail_tuft_E_2_anim|nutmeg:center_tail_tuft_E_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_E_component_grp|nutmeg:center_tail_tuft_E_anim_grp|nutmeg:center_tail_tuft_E_1_null|nutmeg:center_tail_tuft_E_1_vis_null|nutmeg:center_tail_tuft_E_1_anim|nutmeg:center_tail_tuft_E_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_D_component_grp|nutmeg:center_tail_tuft_D_anim_grp|nutmeg:center_tail_tuft_D_1_null|nutmeg:center_tail_tuft_D_1_vis_null|nutmeg:center_tail_tuft_D_1_anim|nutmeg:center_tail_tuft_D_2_null|nutmeg:center_tail_tuft_D_2_vis_null|nutmeg:center_tail_tuft_D_2_anim|nutmeg:center_tail_tuft_D_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_D_component_grp|nutmeg:center_tail_tuft_D_anim_grp|nutmeg:center_tail_tuft_D_1_null|nutmeg:center_tail_tuft_D_1_vis_null|nutmeg:center_tail_tuft_D_1_anim|nutmeg:center_tail_tuft_D_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_G_component_grp|nutmeg:center_tail_tuft_G_anim_grp|nutmeg:center_tail_tuft_G_null|nutmeg:center_tail_tuft_G_vis_null|nutmeg:center_tail_tuft_G_anim|nutmeg:center_tail_tuft_G_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_F_component_grp|nutmeg:center_tail_tuft_F_anim_grp|nutmeg:center_tail_tuft_F_null|nutmeg:center_tail_tuft_F_vis_null|nutmeg:center_tail_tuft_F_anim|nutmeg:center_tail_tuft_F_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_hair_tuft_component_grp|nutmeg:center_hair_tuft_anim_grp|nutmeg:center_hair_tuft_1_null|nutmeg:center_hair_tuft_1_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_1_vis_null|nutmeg:center_hair_tuft_1_anim|nutmeg:center_hair_tuft_2_null|nutmeg:center_hair_tuft_2_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_2_vis_null|nutmeg:center_hair_tuft_2_anim|nutmeg:center_hair_tuft_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_hair_tuft_component_grp|nutmeg:center_hair_tuft_anim_grp|nutmeg:center_hair_tuft_1_null|nutmeg:center_hair_tuft_1_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_1_vis_null|nutmeg:center_hair_tuft_1_anim|nutmeg:center_hair_tuft_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_upper_hair_tuft_component_grp|nutmeg:center_upper_hair_tuft_anim_grp|nutmeg:center_upper_hair_tuft_null|nutmeg:center_upper_hair_tuft_anim_hair_tuck_SDK_null|nutmeg:center_upper_hair_tuft_vis_null|nutmeg:center_upper_hair_tuft_anim|nutmeg:center_upper_hair_tuft_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_hair_tuft_component_grp|nutmeg:left_hair_tuft_anim_grp|nutmeg:left_hair_tuft_null|nutmeg:left_hair_tuft_vis_null|nutmeg:left_hair_tuft_anim|nutmeg:left_hair_tuft_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_hair_tuft_component_grp|nutmeg:right_hair_tuft_anim_grp|nutmeg:right_hair_tuft_1_null|nutmeg:right_hair_tuft_1_vis_null|nutmeg:right_hair_tuft_1_anim|nutmeg:right_hair_tuft_2_null|nutmeg:right_hair_tuft_2_vis_null|nutmeg:right_hair_tuft_2_anim|nutmeg:right_hair_tuft_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_hair_tuft_component_grp|nutmeg:right_hair_tuft_anim_grp|nutmeg:right_hair_tuft_1_null|nutmeg:right_hair_tuft_1_vis_null|nutmeg:right_hair_tuft_1_anim|nutmeg:right_hair_tuft_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_clavicle_component_grp|nutmeg:left_clavicle_anim_grp|nutmeg:left_clavicle_null|nutmeg:left_clavicle_vis_null|nutmeg:left_clavicle_anim|nutmeg:left_clavicle_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim" 
		"rotate" " -type \"double3\" -66.91867860297610093 74.25059004424207387 18.54241539037379738"
		
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim|nutmeg:left_arm_2_FK_null|nutmeg:left_arm_2_FK_vis_null|nutmeg:left_arm_2_FK_anim|nutmeg:left_arm_3_FK_null|nutmeg:left_arm_3_FK_vis_null|nutmeg:left_arm_3_FK_anim|nutmeg:left_arm_3_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim|nutmeg:left_arm_2_FK_null|nutmeg:left_arm_2_FK_vis_null|nutmeg:left_arm_2_FK_anim|nutmeg:left_arm_2_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim|nutmeg:left_arm_1_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim|nutmeg:left_arm_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim|nutmeg:left_arm_2_PV_FK_null|nutmeg:left_arm_2_PV_FK_vis_null|nutmeg:left_arm_2_PV_FK_anim|nutmeg:left_arm_2_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim|nutmeg:left_arm_PV_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_4_FK_null|nutmeg:left_leg_4_FK_vis_null|nutmeg:left_leg_4_FK_anim|nutmeg:left_leg_5_FK_null|nutmeg:left_leg_5_FK_vis_null|nutmeg:left_leg_5_FK_anim|nutmeg:left_leg_5_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_4_FK_null|nutmeg:left_leg_4_FK_vis_null|nutmeg:left_leg_4_FK_anim|nutmeg:left_leg_4_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_3_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_2_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_1_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_quad_IK_null|nutmeg:left_leg_quad_IK_vis_null|nutmeg:left_leg_quad_IK_anim|nutmeg:left_leg_quad_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_center_pivot_null|nutmeg:left_leg_center_pivot_vis_null|nutmeg:left_leg_center_pivot_anim|nutmeg:left_leg_center_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_digit_pivot_null|nutmeg:left_leg_digit_pivot_vis_null|nutmeg:left_leg_digit_pivot_anim|nutmeg:left_leg_digit_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_front_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_outer_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_inner_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_back_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim|nutmeg:left_leg_2_PV_FK_null|nutmeg:left_leg_2_PV_FK_vis_null|nutmeg:left_leg_2_PV_FK_anim|nutmeg:left_leg_3_PV_FK_null|nutmeg:left_leg_3_PV_FK_vis_null|nutmeg:left_leg_3_PV_FK_anim|nutmeg:left_leg_4_PV_FK_null|nutmeg:left_leg_4_PV_FK_vis_null|nutmeg:left_leg_4_PV_FK_anim|nutmeg:left_leg_5_PV_FK_null|nutmeg:left_leg_5_PV_FK_vis_null|nutmeg:left_leg_5_PV_FK_anim|nutmeg:left_leg_5_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim|nutmeg:left_leg_2_PV_FK_null|nutmeg:left_leg_2_PV_FK_vis_null|nutmeg:left_leg_2_PV_FK_anim|nutmeg:left_leg_3_PV_FK_null|nutmeg:left_leg_3_PV_FK_vis_null|nutmeg:left_leg_3_PV_FK_anim|nutmeg:left_leg_4_PV_FK_null|nutmeg:left_leg_4_PV_FK_vis_null|nutmeg:left_leg_4_PV_FK_anim|nutmeg:left_leg_4_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim|nutmeg:left_leg_2_PV_FK_null|nutmeg:left_leg_2_PV_FK_vis_null|nutmeg:left_leg_2_PV_FK_anim|nutmeg:left_leg_3_PV_FK_null|nutmeg:left_leg_3_PV_FK_vis_null|nutmeg:left_leg_3_PV_FK_anim|nutmeg:left_leg_3_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim|nutmeg:left_leg_2_PV_FK_null|nutmeg:left_leg_2_PV_FK_vis_null|nutmeg:left_leg_2_PV_FK_anim|nutmeg:left_leg_2_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim|nutmeg:left_leg_PV_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_1_null|nutmeg:left_wing_flap_1_translate_null|nutmeg:left_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_1_vis_null|nutmeg:left_wing_flap_1_anim|nutmeg:left_wing_flap_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_2_null|nutmeg:left_wing_flap_2_translate_null|nutmeg:left_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_2_vis_null|nutmeg:left_wing_flap_2_anim|nutmeg:left_wing_flap_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_3_null|nutmeg:left_wing_flap_3_translate_null|nutmeg:left_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_3_vis_null|nutmeg:left_wing_flap_3_anim|nutmeg:left_wing_flap_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_4_null|nutmeg:left_wing_flap_4_translate_null|nutmeg:left_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_4_vis_null|nutmeg:left_wing_flap_4_anim|nutmeg:left_wing_flap_4_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_5_null|nutmeg:left_wing_flap_5_translate_null|nutmeg:left_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_5_vis_null|nutmeg:left_wing_flap_5_anim|nutmeg:left_wing_flap_5_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_retract_component_grp|nutmeg:left_wing_retract_anim_grp|nutmeg:left_wing_retract_anim|nutmeg:left_wing_retract_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_metacarpal_component_grp|nutmeg:left_index_metacarpal_anim_grp|nutmeg:left_index_metacarpal_null|nutmeg:left_index_metacarpal_vis_null|nutmeg:left_index_metacarpal_anim|nutmeg:left_index_metacarpal_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim" 
		"rotate" " -type \"double3\" 0 0 -25.56654170191756492"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim|nutmeg:left_index_3_null|nutmeg:left_index_3_vis_null|nutmeg:left_index_3_anim|nutmeg:left_index_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim|nutmeg:left_index_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_metacarpal_component_grp|nutmeg:left_middle_metacarpal_anim_grp|nutmeg:left_middle_metacarpal_null|nutmeg:left_middle_metacarpal_vis_null|nutmeg:left_middle_metacarpal_anim|nutmeg:left_middle_metacarpal_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim" 
		"rotate" " -type \"double3\" 2.2898068833709786 -0.8427542062942891 -21.79911677186857233"
		
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim|nutmeg:left_middle_3_null|nutmeg:left_middle_3_vis_null|nutmeg:left_middle_3_anim|nutmeg:left_middle_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim|nutmeg:left_middle_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_metacarpal_component_grp|nutmeg:left_pinky_metacarpal_anim_grp|nutmeg:left_pinky_metacarpal_null|nutmeg:left_pinky_metacarpal_vis_null|nutmeg:left_pinky_metacarpal_anim|nutmeg:left_pinky_metacarpal_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim" 
		"rotate" " -type \"double3\" 0 0 -21.32828437879947359"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim|nutmeg:left_pinky_3_null|nutmeg:left_pinky_3_vis_null|nutmeg:left_pinky_3_anim|nutmeg:left_pinky_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim|nutmeg:left_pinky_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_2_null|nutmeg:left_thumb_2_vis_null|nutmeg:left_thumb_2_anim|nutmeg:left_thumb_3_null|nutmeg:left_thumb_3_vis_null|nutmeg:left_thumb_3_anim|nutmeg:left_thumb_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_2_null|nutmeg:left_thumb_2_vis_null|nutmeg:left_thumb_2_anim|nutmeg:left_thumb_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_uppercheek_tuft_component_grp|nutmeg:left_uppercheek_tuft_anim_grp|nutmeg:left_uppercheek_tuft_1_null|nutmeg:left_uppercheek_tuft_1_vis_null|nutmeg:left_uppercheek_tuft_1_anim|nutmeg:left_uppercheek_tuft_2_null|nutmeg:left_uppercheek_tuft_2_vis_null|nutmeg:left_uppercheek_tuft_2_anim|nutmeg:left_uppercheek_tuft_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_uppercheek_tuft_component_grp|nutmeg:left_uppercheek_tuft_anim_grp|nutmeg:left_uppercheek_tuft_1_null|nutmeg:left_uppercheek_tuft_1_vis_null|nutmeg:left_uppercheek_tuft_1_anim|nutmeg:left_uppercheek_tuft_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_lowercheek_tuft_component_grp|nutmeg:left_lowercheek_tuft_anim_grp|nutmeg:left_lowercheek_tuft_null|nutmeg:left_lowercheek_tuft_vis_null|nutmeg:left_lowercheek_tuft_anim|nutmeg:left_lowercheek_tuft_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_clavicle_component_grp|nutmeg:right_clavicle_anim_grp|nutmeg:right_clavicle_null|nutmeg:right_clavicle_vis_null|nutmeg:right_clavicle_anim|nutmeg:right_clavicle_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim" 
		"rotate" " -type \"double3\" -12.47705086526245211 82.37076746060952814 78.55786852056317571"
		
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim|nutmeg:right_arm_2_FK_null|nutmeg:right_arm_2_FK_vis_null|nutmeg:right_arm_2_FK_anim|nutmeg:right_arm_3_FK_null|nutmeg:right_arm_3_FK_vis_null|nutmeg:right_arm_3_FK_anim|nutmeg:right_arm_3_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim|nutmeg:right_arm_2_FK_null|nutmeg:right_arm_2_FK_vis_null|nutmeg:right_arm_2_FK_anim|nutmeg:right_arm_2_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim|nutmeg:right_arm_1_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim|nutmeg:right_arm_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim|nutmeg:right_arm_2_PV_FK_null|nutmeg:right_arm_2_PV_FK_vis_null|nutmeg:right_arm_2_PV_FK_anim|nutmeg:right_arm_2_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim|nutmeg:right_arm_PV_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_4_FK_null|nutmeg:right_leg_4_FK_vis_null|nutmeg:right_leg_4_FK_anim|nutmeg:right_leg_5_FK_null|nutmeg:right_leg_5_FK_vis_null|nutmeg:right_leg_5_FK_anim|nutmeg:right_leg_5_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_4_FK_null|nutmeg:right_leg_4_FK_vis_null|nutmeg:right_leg_4_FK_anim|nutmeg:right_leg_4_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_3_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_2_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_1_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_quad_IK_null|nutmeg:right_leg_quad_IK_vis_null|nutmeg:right_leg_quad_IK_anim|nutmeg:right_leg_quad_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_center_pivot_null|nutmeg:right_leg_center_pivot_vis_null|nutmeg:right_leg_center_pivot_anim|nutmeg:right_leg_center_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_digit_pivot_null|nutmeg:right_leg_digit_pivot_vis_null|nutmeg:right_leg_digit_pivot_anim|nutmeg:right_leg_digit_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_front_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_outer_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_inner_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_back_pivot_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_IK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim|nutmeg:right_leg_2_PV_FK_null|nutmeg:right_leg_2_PV_FK_vis_null|nutmeg:right_leg_2_PV_FK_anim|nutmeg:right_leg_3_PV_FK_null|nutmeg:right_leg_3_PV_FK_vis_null|nutmeg:right_leg_3_PV_FK_anim|nutmeg:right_leg_4_PV_FK_null|nutmeg:right_leg_4_PV_FK_vis_null|nutmeg:right_leg_4_PV_FK_anim|nutmeg:right_leg_5_PV_FK_null|nutmeg:right_leg_5_PV_FK_vis_null|nutmeg:right_leg_5_PV_FK_anim|nutmeg:right_leg_5_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim|nutmeg:right_leg_2_PV_FK_null|nutmeg:right_leg_2_PV_FK_vis_null|nutmeg:right_leg_2_PV_FK_anim|nutmeg:right_leg_3_PV_FK_null|nutmeg:right_leg_3_PV_FK_vis_null|nutmeg:right_leg_3_PV_FK_anim|nutmeg:right_leg_4_PV_FK_null|nutmeg:right_leg_4_PV_FK_vis_null|nutmeg:right_leg_4_PV_FK_anim|nutmeg:right_leg_4_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim|nutmeg:right_leg_2_PV_FK_null|nutmeg:right_leg_2_PV_FK_vis_null|nutmeg:right_leg_2_PV_FK_anim|nutmeg:right_leg_3_PV_FK_null|nutmeg:right_leg_3_PV_FK_vis_null|nutmeg:right_leg_3_PV_FK_anim|nutmeg:right_leg_3_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim|nutmeg:right_leg_2_PV_FK_null|nutmeg:right_leg_2_PV_FK_vis_null|nutmeg:right_leg_2_PV_FK_anim|nutmeg:right_leg_2_PV_FK_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim|nutmeg:right_leg_PV_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_1_null|nutmeg:right_wing_flap_1_translate_null|nutmeg:right_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_1_vis_null|nutmeg:right_wing_flap_1_anim|nutmeg:right_wing_flap_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_2_null|nutmeg:right_wing_flap_2_translate_null|nutmeg:right_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_2_vis_null|nutmeg:right_wing_flap_2_anim|nutmeg:right_wing_flap_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_3_null|nutmeg:right_wing_flap_3_translate_null|nutmeg:right_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_3_vis_null|nutmeg:right_wing_flap_3_anim|nutmeg:right_wing_flap_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_4_null|nutmeg:right_wing_flap_4_translate_null|nutmeg:right_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_4_vis_null|nutmeg:right_wing_flap_4_anim|nutmeg:right_wing_flap_4_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_5_null|nutmeg:right_wing_flap_5_translate_null|nutmeg:right_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_5_vis_null|nutmeg:right_wing_flap_5_anim|nutmeg:right_wing_flap_5_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_retract_component_grp|nutmeg:right_wing_retract_anim_grp|nutmeg:right_wing_retract_anim|nutmeg:right_wing_retract_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_metacarpal_component_grp|nutmeg:right_index_metacarpal_anim_grp|nutmeg:right_index_metacarpal_null|nutmeg:right_index_metacarpal_vis_null|nutmeg:right_index_metacarpal_anim|nutmeg:right_index_metacarpal_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim" 
		"rotate" " -type \"double3\" 0.27657586314014482 -0.15648239142488432 -29.57319828660583738"
		
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim" 
		"rotateX" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim" 
		"rotateY" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim|nutmeg:right_index_3_null|nutmeg:right_index_3_vis_null|nutmeg:right_index_3_anim|nutmeg:right_index_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim|nutmeg:right_index_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_metacarpal_component_grp|nutmeg:right_middle_metacarpal_anim_grp|nutmeg:right_middle_metacarpal_null|nutmeg:right_middle_metacarpal_vis_null|nutmeg:right_middle_metacarpal_anim|nutmeg:right_middle_metacarpal_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim" 
		"rotate" " -type \"double3\" 0 0 -28.25022912967217081"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim|nutmeg:right_middle_3_null|nutmeg:right_middle_3_vis_null|nutmeg:right_middle_3_anim|nutmeg:right_middle_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim|nutmeg:right_middle_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_metacarpal_component_grp|nutmeg:right_pinky_metacarpal_anim_grp|nutmeg:right_pinky_metacarpal_null|nutmeg:right_pinky_metacarpal_vis_null|nutmeg:right_pinky_metacarpal_anim|nutmeg:right_pinky_metacarpal_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim" 
		"rotate" " -type \"double3\" 0 0 -27.15549712651987946"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim" 
		"rotateZ" " -av"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim|nutmeg:right_pinky_3_null|nutmeg:right_pinky_3_vis_null|nutmeg:right_pinky_3_anim|nutmeg:right_pinky_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim|nutmeg:right_pinky_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_2_null|nutmeg:right_thumb_2_vis_null|nutmeg:right_thumb_2_anim|nutmeg:right_thumb_3_null|nutmeg:right_thumb_3_vis_null|nutmeg:right_thumb_3_anim|nutmeg:right_thumb_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_2_null|nutmeg:right_thumb_2_vis_null|nutmeg:right_thumb_2_anim|nutmeg:right_thumb_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_uppercheek_tuft_component_grp|nutmeg:right_uppercheek_tuft_anim_grp|nutmeg:right_uppercheek_tuft_1_null|nutmeg:right_uppercheek_tuft_1_vis_null|nutmeg:right_uppercheek_tuft_1_anim|nutmeg:right_uppercheek_tuft_2_null|nutmeg:right_uppercheek_tuft_2_vis_null|nutmeg:right_uppercheek_tuft_2_anim|nutmeg:right_uppercheek_tuft_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_uppercheek_tuft_component_grp|nutmeg:right_uppercheek_tuft_anim_grp|nutmeg:right_uppercheek_tuft_1_null|nutmeg:right_uppercheek_tuft_1_vis_null|nutmeg:right_uppercheek_tuft_1_anim|nutmeg:right_uppercheek_tuft_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_lowercheek_tuft_component_grp|nutmeg:right_lowercheek_tuft_anim_grp|nutmeg:right_lowercheek_tuft_null|nutmeg:right_lowercheek_tuft_vis_null|nutmeg:right_lowercheek_tuft_anim|nutmeg:right_lowercheek_tuft_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_ear_component_grp|nutmeg:left_ear_anim_grp|nutmeg:left_ear_1_null|nutmeg:left_ear_1_anim_ear_tuck_SDK_null|nutmeg:left_ear_1_vis_null|nutmeg:left_ear_1_anim|nutmeg:left_ear_2_null|nutmeg:left_ear_2_anim_ear_tuck_SDK_null|nutmeg:left_ear_2_vis_null|nutmeg:left_ear_2_anim|nutmeg:left_ear_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_ear_component_grp|nutmeg:left_ear_anim_grp|nutmeg:left_ear_1_null|nutmeg:left_ear_1_anim_ear_tuck_SDK_null|nutmeg:left_ear_1_vis_null|nutmeg:left_ear_1_anim|nutmeg:left_ear_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_ear_component_grp|nutmeg:right_ear_anim_grp|nutmeg:right_ear_1_null|nutmeg:right_ear_1_anim_ear_tuck_SDK_null|nutmeg:right_ear_1_vis_null|nutmeg:right_ear_1_anim|nutmeg:right_ear_2_null|nutmeg:right_ear_2_anim_ear_tuck_SDK_null|nutmeg:right_ear_2_vis_null|nutmeg:right_ear_2_anim|nutmeg:right_ear_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_ear_component_grp|nutmeg:right_ear_anim_grp|nutmeg:right_ear_1_null|nutmeg:right_ear_1_anim_ear_tuck_SDK_null|nutmeg:right_ear_1_vis_null|nutmeg:right_ear_1_anim|nutmeg:right_ear_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_brow_component_grp|nutmeg:center_brow_anim_grp|nutmeg:center_brow_null|nutmeg:center_brow_vis_null|nutmeg:center_brow_anim|nutmeg:center_brow_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_left_null|nutmeg:center_eye_aim_left_vis_null|nutmeg:center_eye_aim_left_anim|nutmeg:center_eye_aim_left_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_left_null|nutmeg:center_eye_aim_left_vis_null|nutmeg:center_eye_aim_left_anim|nutmeg:center_eye_aim_left_animShape1" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_left_null|nutmeg:center_eye_aim_left_vis_null|nutmeg:center_eye_aim_left_anim|nutmeg:center_eye_aim_left_animShape2" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_left_null|nutmeg:center_eye_aim_left_vis_null|nutmeg:center_eye_aim_left_anim|nutmeg:center_eye_aim_left_animShape3" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_left_null|nutmeg:center_eye_aim_left_vis_null|nutmeg:center_eye_aim_left_anim|nutmeg:center_eye_aim_left_animShape4" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_right_null|nutmeg:center_eye_aim_right_vis_null|nutmeg:center_eye_aim_right_anim|nutmeg:center_eye_aim_right_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_right_null|nutmeg:center_eye_aim_right_vis_null|nutmeg:center_eye_aim_right_anim|nutmeg:center_eye_aim_right_animShape1" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_right_null|nutmeg:center_eye_aim_right_vis_null|nutmeg:center_eye_aim_right_anim|nutmeg:center_eye_aim_right_animShape2" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_right_null|nutmeg:center_eye_aim_right_vis_null|nutmeg:center_eye_aim_right_anim|nutmeg:center_eye_aim_right_animShape3" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_right_null|nutmeg:center_eye_aim_right_vis_null|nutmeg:center_eye_aim_right_anim|nutmeg:center_eye_aim_right_animShape4" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_main_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_eye_aim_component_grp|nutmeg:center_eye_aim_anim_grp|nutmeg:center_eye_aim_main_null|nutmeg:center_eye_aim_main_multicon_null|nutmeg:center_eye_aim_main_vis_null|nutmeg:center_eye_aim_main_anim|nutmeg:center_eye_aim_main_animShape1" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_nose_component_grp|nutmeg:center_nose_anim_grp|nutmeg:center_nose_null|nutmeg:center_nose_vis_null|nutmeg:center_nose_anim|nutmeg:center_nose_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_jaw_component_grp|nutmeg:center_jaw_anim_grp|nutmeg:center_jaw_null|nutmeg:center_jaw_vis_null|nutmeg:center_jaw_anim|nutmeg:center_jaw_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_corner_null|nutmeg:center_mouth_upper_right_corner_vis_null|nutmeg:center_mouth_upper_right_corner_anim|nutmeg:center_mouth_upper_right_corner_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_null|nutmeg:center_mouth_upper_right_vis_null|nutmeg:center_mouth_upper_right_anim|nutmeg:center_mouth_upper_right_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_middle_null|nutmeg:center_mouth_upper_middle_vis_null|nutmeg:center_mouth_upper_middle_anim|nutmeg:center_mouth_upper_middle_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_null|nutmeg:center_mouth_upper_left_vis_null|nutmeg:center_mouth_upper_left_anim|nutmeg:center_mouth_upper_left_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_corner_null|nutmeg:center_mouth_upper_left_corner_vis_null|nutmeg:center_mouth_upper_left_corner_anim|nutmeg:center_mouth_upper_left_corner_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_right_null|nutmeg:center_mouth_right_vis_null|nutmeg:center_mouth_right_anim|nutmeg:center_mouth_right_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_left_null|nutmeg:center_mouth_left_vis_null|nutmeg:center_mouth_left_anim|nutmeg:center_mouth_left_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_lip_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_lip_animShape1" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_corner_null|nutmeg:center_mouth_lower_right_corner_vis_null|nutmeg:center_mouth_lower_right_corner_anim|nutmeg:center_mouth_lower_right_corner_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_null|nutmeg:center_mouth_lower_right_vis_null|nutmeg:center_mouth_lower_right_anim|nutmeg:center_mouth_lower_right_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_middle_null|nutmeg:center_mouth_lower_middle_vis_null|nutmeg:center_mouth_lower_middle_anim|nutmeg:center_mouth_lower_middle_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_null|nutmeg:center_mouth_lower_left_vis_null|nutmeg:center_mouth_lower_left_anim|nutmeg:center_mouth_lower_left_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_corner_null|nutmeg:center_mouth_lower_left_corner_vis_null|nutmeg:center_mouth_lower_left_corner_anim|nutmeg:center_mouth_lower_left_corner_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_lip_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_lip_main_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_lip_main_animShape1" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_right_1_secondary_null|nutmeg:center_mouth_right_1_secondary_vis_null|nutmeg:center_mouth_right_1_secondary_anim|nutmeg:center_mouth_right_1_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_upper_1_secondary_null|nutmeg:center_mouth_upper_1_secondary_vis_null|nutmeg:center_mouth_upper_1_secondary_anim|nutmeg:center_mouth_upper_1_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_upper_2_secondary_null|nutmeg:center_mouth_upper_2_secondary_vis_null|nutmeg:center_mouth_upper_2_secondary_anim|nutmeg:center_mouth_upper_2_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_upper_3_secondary_null|nutmeg:center_mouth_upper_3_secondary_vis_null|nutmeg:center_mouth_upper_3_secondary_anim|nutmeg:center_mouth_upper_3_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_upper_4_secondary_null|nutmeg:center_mouth_upper_4_secondary_vis_null|nutmeg:center_mouth_upper_4_secondary_anim|nutmeg:center_mouth_upper_4_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_upper_5_secondary_null|nutmeg:center_mouth_upper_5_secondary_vis_null|nutmeg:center_mouth_upper_5_secondary_anim|nutmeg:center_mouth_upper_5_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_left_1_secondary_null|nutmeg:center_mouth_left_1_secondary_vis_null|nutmeg:center_mouth_left_1_secondary_anim|nutmeg:center_mouth_left_1_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_lower_1_secondary_null|nutmeg:center_mouth_lower_1_secondary_vis_null|nutmeg:center_mouth_lower_1_secondary_anim|nutmeg:center_mouth_lower_1_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_lower_2_secondary_null|nutmeg:center_mouth_lower_2_secondary_vis_null|nutmeg:center_mouth_lower_2_secondary_anim|nutmeg:center_mouth_lower_2_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_lower_3_secondary_null|nutmeg:center_mouth_lower_3_secondary_vis_null|nutmeg:center_mouth_lower_3_secondary_anim|nutmeg:center_mouth_lower_3_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_lower_4_secondary_null|nutmeg:center_mouth_lower_4_secondary_vis_null|nutmeg:center_mouth_lower_4_secondary_anim|nutmeg:center_mouth_lower_4_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:secondary_anim_grp|nutmeg:center_mouth_lower_5_secondary_null|nutmeg:center_mouth_lower_5_secondary_vis_null|nutmeg:center_mouth_lower_5_secondary_anim|nutmeg:center_mouth_lower_5_secondary_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_eyebrow_component_grp|nutmeg:left_eyebrow_anim_grp|nutmeg:left_eyebrow_null|nutmeg:left_eyebrow_vis_null|nutmeg:left_eyebrow_anim|nutmeg:left_eyebrow_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_1_null|nutmeg:left_brow_1_vis_null|nutmeg:left_brow_1_anim|nutmeg:left_brow_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_2_null|nutmeg:left_brow_2_vis_null|nutmeg:left_brow_2_anim|nutmeg:left_brow_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_3_null|nutmeg:left_brow_3_vis_null|nutmeg:left_brow_3_anim|nutmeg:left_brow_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_base_component_grp|nutmeg:left_upper_base_anim_grp|nutmeg:left_upper_base_null|nutmeg:left_upper_base_anim_blink_SDK_null|nutmeg:left_upper_base_vis_null|nutmeg:left_upper_base_anim|nutmeg:left_upper_base_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_1_null|nutmeg:left_upper_eyelid_1_vis_null|nutmeg:left_upper_eyelid_1_anim|nutmeg:left_upper_eyelid_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_2_null|nutmeg:left_upper_eyelid_2_vis_null|nutmeg:left_upper_eyelid_2_anim|nutmeg:left_upper_eyelid_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_3_null|nutmeg:left_upper_eyelid_3_vis_null|nutmeg:left_upper_eyelid_3_anim|nutmeg:left_upper_eyelid_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_base_component_grp|nutmeg:left_lower_base_anim_grp|nutmeg:left_lower_base_null|nutmeg:left_lower_base_anim_blink_SDK_null|nutmeg:left_lower_base_vis_null|nutmeg:left_lower_base_anim|nutmeg:left_lower_base_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_1_null|nutmeg:left_lower_eyelid_1_vis_null|nutmeg:left_lower_eyelid_1_anim|nutmeg:left_lower_eyelid_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_2_null|nutmeg:left_lower_eyelid_2_vis_null|nutmeg:left_lower_eyelid_2_anim|nutmeg:left_lower_eyelid_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_3_null|nutmeg:left_lower_eyelid_3_vis_null|nutmeg:left_lower_eyelid_3_anim|nutmeg:left_lower_eyelid_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_inner_eyelid_component_grp|nutmeg:left_inner_eyelid_anim_grp|nutmeg:left_inner_eyelid_null|nutmeg:left_inner_eyelid_vis_null|nutmeg:left_inner_eyelid_anim|nutmeg:left_inner_eyelid_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_outer_eyelid_component_grp|nutmeg:left_outer_eyelid_anim_grp|nutmeg:left_outer_eyelid_null|nutmeg:left_outer_eyelid_vis_null|nutmeg:left_outer_eyelid_anim|nutmeg:left_outer_eyelid_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_eye_component_grp|nutmeg:left_eye_anim_grp|nutmeg:left_eye_null|nutmeg:left_eye_aim_null|nutmeg:left_eye_vis_null|nutmeg:left_eye_anim|nutmeg:left_eye_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_1_null|nutmeg:left_cheek_1_vis_null|nutmeg:left_cheek_1_anim|nutmeg:left_cheek_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_2_null|nutmeg:left_cheek_2_vis_null|nutmeg:left_cheek_2_anim|nutmeg:left_cheek_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_eyebrow_component_grp|nutmeg:right_eyebrow_anim_grp|nutmeg:right_eyebrow_null|nutmeg:right_eyebrow_vis_null|nutmeg:right_eyebrow_anim|nutmeg:right_eyebrow_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_1_null|nutmeg:right_brow_1_vis_null|nutmeg:right_brow_1_anim|nutmeg:right_brow_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_2_null|nutmeg:right_brow_2_vis_null|nutmeg:right_brow_2_anim|nutmeg:right_brow_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_3_null|nutmeg:right_brow_3_vis_null|nutmeg:right_brow_3_anim|nutmeg:right_brow_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_base_component_grp|nutmeg:right_upper_base_anim_grp|nutmeg:right_upper_base_null|nutmeg:right_upper_base_anim_blink_SDK_null|nutmeg:right_upper_base_vis_null|nutmeg:right_upper_base_anim|nutmeg:right_upper_base_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_1_null|nutmeg:right_upper_eyelid_1_vis_null|nutmeg:right_upper_eyelid_1_anim|nutmeg:right_upper_eyelid_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_2_null|nutmeg:right_upper_eyelid_2_vis_null|nutmeg:right_upper_eyelid_2_anim|nutmeg:right_upper_eyelid_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_3_null|nutmeg:right_upper_eyelid_3_vis_null|nutmeg:right_upper_eyelid_3_anim|nutmeg:right_upper_eyelid_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_base_component_grp|nutmeg:right_lower_base_anim_grp|nutmeg:right_lower_base_null|nutmeg:right_lower_base_anim_blink_SDK_null|nutmeg:right_lower_base_vis_null|nutmeg:right_lower_base_anim|nutmeg:right_lower_base_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_1_null|nutmeg:right_lower_eyelid_1_vis_null|nutmeg:right_lower_eyelid_1_anim|nutmeg:right_lower_eyelid_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_2_null|nutmeg:right_lower_eyelid_2_vis_null|nutmeg:right_lower_eyelid_2_anim|nutmeg:right_lower_eyelid_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_3_null|nutmeg:right_lower_eyelid_3_vis_null|nutmeg:right_lower_eyelid_3_anim|nutmeg:right_lower_eyelid_3_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_inner_eyelid_component_grp|nutmeg:right_inner_eyelid_anim_grp|nutmeg:right_inner_eyelid_null|nutmeg:right_inner_eyelid_vis_null|nutmeg:right_inner_eyelid_anim|nutmeg:right_inner_eyelid_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_outer_eyelid_component_grp|nutmeg:right_outer_eyelid_anim_grp|nutmeg:right_outer_eyelid_null|nutmeg:right_outer_eyelid_vis_null|nutmeg:right_outer_eyelid_anim|nutmeg:right_outer_eyelid_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_eye_component_grp|nutmeg:right_eye_anim_grp|nutmeg:right_eye_null|nutmeg:right_eye_aim_null|nutmeg:right_eye_vis_null|nutmeg:right_eye_anim|nutmeg:right_eye_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_1_null|nutmeg:right_cheek_1_vis_null|nutmeg:right_cheek_1_anim|nutmeg:right_cheek_1_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_2_null|nutmeg:right_cheek_2_vis_null|nutmeg:right_cheek_2_anim|nutmeg:right_cheek_2_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim|nutmeg:center_body_armor_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim|nutmeg:center_helmet_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_helmet_piece_component_grp|nutmeg:left_helmet_piece_anim_grp|nutmeg:left_helmet_piece_null|nutmeg:left_helmet_piece_vis_null|nutmeg:left_helmet_piece_anim|nutmeg:left_helmet_piece_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_body_armor_component_grp|nutmeg:left_body_armor_anim_grp|nutmeg:left_body_armor_null|nutmeg:left_body_armor_anim_chest_open_SDK_null|nutmeg:left_body_armor_vis_null|nutmeg:left_body_armor_anim|nutmeg:left_body_armor_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_bib_armor_component_grp|nutmeg:left_bib_armor_anim_grp|nutmeg:left_bib_armor_null|nutmeg:left_bib_armor_multicon_null|nutmeg:left_bib_armor_vis_null|nutmeg:left_bib_armor_anim|nutmeg:left_bib_armor_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim|nutmeg:left_elbow_armor_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_latch_component_grp|nutmeg:left_elbow_armor_latch_anim_grp|nutmeg:left_elbow_armor_latch_null|nutmeg:left_elbow_armor_latch_anim_open_latch_SDK_null|nutmeg:left_elbow_armor_latch_vis_null|nutmeg:left_elbow_armor_latch_anim|nutmeg:left_elbow_armor_latch_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_helmet_piece_component_grp|nutmeg:right_helmet_piece_anim_grp|nutmeg:right_helmet_piece_null|nutmeg:right_helmet_piece_vis_null|nutmeg:right_helmet_piece_anim|nutmeg:right_helmet_piece_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_body_armor_component_grp|nutmeg:right_body_armor_anim_grp|nutmeg:right_body_armor_null|nutmeg:right_body_armor_anim_chest_open_SDK_null|nutmeg:right_body_armor_vis_null|nutmeg:right_body_armor_anim|nutmeg:right_body_armor_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_bib_armor_component_grp|nutmeg:right_bib_armor_anim_grp|nutmeg:right_bib_armor_null|nutmeg:right_bib_armor_multicon_null|nutmeg:right_bib_armor_vis_null|nutmeg:right_bib_armor_anim|nutmeg:right_bib_armor_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim|nutmeg:right_elbow_armor_animShape" 
		"visibility" " -k 0 1"
		2 "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_latch_component_grp|nutmeg:right_elbow_armor_latch_anim_grp|nutmeg:right_elbow_armor_latch_null|nutmeg:right_elbow_armor_latch_anim_open_latch_SDK_null|nutmeg:right_elbow_armor_latch_vis_null|nutmeg:right_elbow_armor_latch_anim|nutmeg:right_elbow_armor_latch_animShape" 
		"visibility" " -k 0 1"
		3 "nutmeg:center_mouth_upper_lip_nurb_skin.outputGeometry[0]" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurbs_grp|nutmeg:center_mouth_upper_lip_nurb|nutmeg:center_mouth_upper_lip_nurbShape.create" 
		""
		3 "nutmeg:center_mouth_lower_lip_nurb_skin.outputGeometry[0]" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurbs_grp|nutmeg:center_mouth_lower_lip_nurb|nutmeg:center_mouth_lower_lip_nurbShape.create" 
		""
		3 "nutmeg:center_tail_nurb_skin.outputGeometry[0]" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_nurb|nutmeg:center_tail_nurbShape.create" 
		""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.translateY" 
		"nutmegRN.placeHolderList[1]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.translateZ" 
		"nutmegRN.placeHolderList[2]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.translateX" 
		"nutmegRN.placeHolderList[3]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.rotateZ" 
		"nutmegRN.placeHolderList[4]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.rotateX" 
		"nutmegRN.placeHolderList[5]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.rotateY" 
		"nutmegRN.placeHolderList[6]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.tail_twitch_height" 
		"nutmegRN.placeHolderList[7]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.tail_twitch_length" 
		"nutmegRN.placeHolderList[8]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_COG_component_grp|nutmeg:center_COG_anim_grp|nutmeg:center_COG_null|nutmeg:center_COG_vis_null|nutmeg:center_COG_anim.tail_twitch_offset" 
		"nutmegRN.placeHolderList[9]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_pelvis_component_grp|nutmeg:center_pelvis_anim_grp|nutmeg:center_pelvis_null|nutmeg:center_pelvis_vis_null|nutmeg:center_pelvis_anim.rotateX" 
		"nutmegRN.placeHolderList[10]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_pelvis_component_grp|nutmeg:center_pelvis_anim_grp|nutmeg:center_pelvis_null|nutmeg:center_pelvis_vis_null|nutmeg:center_pelvis_anim.rotateY" 
		"nutmegRN.placeHolderList[11]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_pelvis_component_grp|nutmeg:center_pelvis_anim_grp|nutmeg:center_pelvis_null|nutmeg:center_pelvis_vis_null|nutmeg:center_pelvis_anim.rotateZ" 
		"nutmegRN.placeHolderList[12]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_nurb.visibility" 
		"nutmegRN.placeHolderList[13]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_nurb|nutmeg:center_tail_nurbShape.create" 
		"nutmegRN.placeHolderList[14]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.translateX" 
		"nutmegRN.placeHolderList[15]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.translateY" 
		"nutmegRN.placeHolderList[16]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.translateZ" 
		"nutmegRN.placeHolderList[17]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.rotateX" 
		"nutmegRN.placeHolderList[18]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.rotateY" 
		"nutmegRN.placeHolderList[19]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.rotateZ" 
		"nutmegRN.placeHolderList[20]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.scaleX" 
		"nutmegRN.placeHolderList[21]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.scaleY" 
		"nutmegRN.placeHolderList[22]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.scaleZ" 
		"nutmegRN.placeHolderList[23]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurb_grp|nutmeg:center_tail_1_IK_joint_locator_zero_null.visibility" 
		"nutmegRN.placeHolderList[24]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim.translateX" 
		"nutmegRN.placeHolderList[25]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim.translateY" 
		"nutmegRN.placeHolderList[26]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim.translateZ" 
		"nutmegRN.placeHolderList[27]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[28]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[29]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[30]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim.stretch" 
		"nutmegRN.placeHolderList[31]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim.center_tail_twitch_influence" 
		"nutmegRN.placeHolderList[32]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[33]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[34]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[35]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim.stretch" 
		"nutmegRN.placeHolderList[36]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim.center_tail_twitch_influence" 
		"nutmegRN.placeHolderList[37]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[38]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[39]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[40]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim.stretch" 
		"nutmegRN.placeHolderList[41]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim.center_tail_twitch_influence" 
		"nutmegRN.placeHolderList[42]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[43]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[44]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[45]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim.stretch" 
		"nutmegRN.placeHolderList[46]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim.center_tail_twitch_influence" 
		"nutmegRN.placeHolderList[47]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[48]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[49]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[50]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim.stretch" 
		"nutmegRN.placeHolderList[51]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim.center_tail_twitch_influence" 
		"nutmegRN.placeHolderList[52]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[53]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[54]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[55]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim.stretch" 
		"nutmegRN.placeHolderList[56]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim.center_tail_twitch_influence" 
		"nutmegRN.placeHolderList[57]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim|nutmeg:center_tail_7_FK_null|nutmeg:center_tail_7_FK_deformer_null|nutmeg:center_tail_7_FK_vis_null|nutmeg:center_tail_7_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[58]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim|nutmeg:center_tail_7_FK_null|nutmeg:center_tail_7_FK_deformer_null|nutmeg:center_tail_7_FK_vis_null|nutmeg:center_tail_7_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[59]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim|nutmeg:center_tail_7_FK_null|nutmeg:center_tail_7_FK_deformer_null|nutmeg:center_tail_7_FK_vis_null|nutmeg:center_tail_7_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[60]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim|nutmeg:center_tail_7_FK_null|nutmeg:center_tail_7_FK_deformer_null|nutmeg:center_tail_7_FK_vis_null|nutmeg:center_tail_7_FK_anim.stretch" 
		"nutmegRN.placeHolderList[61]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:center_tail_1_FK_null|nutmeg:center_tail_1_FK_deformer_null|nutmeg:center_tail_1_FK_vis_null|nutmeg:center_tail_1_FK_anim|nutmeg:center_tail_2_FK_null|nutmeg:center_tail_2_FK_deformer_null|nutmeg:center_tail_2_FK_vis_null|nutmeg:center_tail_2_FK_anim|nutmeg:center_tail_3_FK_null|nutmeg:center_tail_3_FK_deformer_null|nutmeg:center_tail_3_FK_vis_null|nutmeg:center_tail_3_FK_anim|nutmeg:center_tail_4_FK_null|nutmeg:center_tail_4_FK_deformer_null|nutmeg:center_tail_4_FK_vis_null|nutmeg:center_tail_4_FK_anim|nutmeg:center_tail_5_FK_null|nutmeg:center_tail_5_FK_deformer_null|nutmeg:center_tail_5_FK_vis_null|nutmeg:center_tail_5_FK_anim|nutmeg:center_tail_6_FK_null|nutmeg:center_tail_6_FK_deformer_null|nutmeg:center_tail_6_FK_vis_null|nutmeg:center_tail_6_FK_anim|nutmeg:center_tail_7_FK_null|nutmeg:center_tail_7_FK_deformer_null|nutmeg:center_tail_7_FK_vis_null|nutmeg:center_tail_7_FK_anim.center_tail_twitch_influence" 
		"nutmegRN.placeHolderList[62]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_1_IK_null|nutmeg:center_tail_1_IK_multicon_null|nutmeg:center_tail_1_IK_vis_null|nutmeg:center_tail_1_IK_anim.translateX" 
		"nutmegRN.placeHolderList[63]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_1_IK_null|nutmeg:center_tail_1_IK_multicon_null|nutmeg:center_tail_1_IK_vis_null|nutmeg:center_tail_1_IK_anim.translateY" 
		"nutmegRN.placeHolderList[64]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_1_IK_null|nutmeg:center_tail_1_IK_multicon_null|nutmeg:center_tail_1_IK_vis_null|nutmeg:center_tail_1_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[65]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_1_IK_null|nutmeg:center_tail_1_IK_multicon_null|nutmeg:center_tail_1_IK_vis_null|nutmeg:center_tail_1_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[66]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_1_IK_null|nutmeg:center_tail_1_IK_multicon_null|nutmeg:center_tail_1_IK_vis_null|nutmeg:center_tail_1_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[67]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_1_IK_null|nutmeg:center_tail_1_IK_multicon_null|nutmeg:center_tail_1_IK_vis_null|nutmeg:center_tail_1_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[68]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_1_IK_null|nutmeg:center_tail_1_IK_multicon_null|nutmeg:center_tail_1_IK_vis_null|nutmeg:center_tail_1_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[69]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_2_IK_null|nutmeg:center_tail_2_IK_multicon_null|nutmeg:center_tail_2_IK_vis_null|nutmeg:center_tail_2_IK_anim.translateX" 
		"nutmegRN.placeHolderList[70]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_2_IK_null|nutmeg:center_tail_2_IK_multicon_null|nutmeg:center_tail_2_IK_vis_null|nutmeg:center_tail_2_IK_anim.translateY" 
		"nutmegRN.placeHolderList[71]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_2_IK_null|nutmeg:center_tail_2_IK_multicon_null|nutmeg:center_tail_2_IK_vis_null|nutmeg:center_tail_2_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[72]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_2_IK_null|nutmeg:center_tail_2_IK_multicon_null|nutmeg:center_tail_2_IK_vis_null|nutmeg:center_tail_2_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[73]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_2_IK_null|nutmeg:center_tail_2_IK_multicon_null|nutmeg:center_tail_2_IK_vis_null|nutmeg:center_tail_2_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[74]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_2_IK_null|nutmeg:center_tail_2_IK_multicon_null|nutmeg:center_tail_2_IK_vis_null|nutmeg:center_tail_2_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[75]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_2_IK_null|nutmeg:center_tail_2_IK_multicon_null|nutmeg:center_tail_2_IK_vis_null|nutmeg:center_tail_2_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[76]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_3_IK_null|nutmeg:center_tail_3_IK_multicon_null|nutmeg:center_tail_3_IK_vis_null|nutmeg:center_tail_3_IK_anim.translateX" 
		"nutmegRN.placeHolderList[77]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_3_IK_null|nutmeg:center_tail_3_IK_multicon_null|nutmeg:center_tail_3_IK_vis_null|nutmeg:center_tail_3_IK_anim.translateY" 
		"nutmegRN.placeHolderList[78]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_3_IK_null|nutmeg:center_tail_3_IK_multicon_null|nutmeg:center_tail_3_IK_vis_null|nutmeg:center_tail_3_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[79]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_3_IK_null|nutmeg:center_tail_3_IK_multicon_null|nutmeg:center_tail_3_IK_vis_null|nutmeg:center_tail_3_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[80]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_3_IK_null|nutmeg:center_tail_3_IK_multicon_null|nutmeg:center_tail_3_IK_vis_null|nutmeg:center_tail_3_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[81]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_3_IK_null|nutmeg:center_tail_3_IK_multicon_null|nutmeg:center_tail_3_IK_vis_null|nutmeg:center_tail_3_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[82]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_3_IK_null|nutmeg:center_tail_3_IK_multicon_null|nutmeg:center_tail_3_IK_vis_null|nutmeg:center_tail_3_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[83]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_4_IK_null|nutmeg:center_tail_4_IK_multicon_null|nutmeg:center_tail_4_IK_vis_null|nutmeg:center_tail_4_IK_anim.translateX" 
		"nutmegRN.placeHolderList[84]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_4_IK_null|nutmeg:center_tail_4_IK_multicon_null|nutmeg:center_tail_4_IK_vis_null|nutmeg:center_tail_4_IK_anim.translateY" 
		"nutmegRN.placeHolderList[85]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_4_IK_null|nutmeg:center_tail_4_IK_multicon_null|nutmeg:center_tail_4_IK_vis_null|nutmeg:center_tail_4_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[86]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_4_IK_null|nutmeg:center_tail_4_IK_multicon_null|nutmeg:center_tail_4_IK_vis_null|nutmeg:center_tail_4_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[87]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_4_IK_null|nutmeg:center_tail_4_IK_multicon_null|nutmeg:center_tail_4_IK_vis_null|nutmeg:center_tail_4_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[88]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_4_IK_null|nutmeg:center_tail_4_IK_multicon_null|nutmeg:center_tail_4_IK_vis_null|nutmeg:center_tail_4_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[89]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_4_IK_null|nutmeg:center_tail_4_IK_multicon_null|nutmeg:center_tail_4_IK_vis_null|nutmeg:center_tail_4_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[90]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_5_IK_null|nutmeg:center_tail_5_IK_multicon_null|nutmeg:center_tail_5_IK_vis_null|nutmeg:center_tail_5_IK_anim.translateX" 
		"nutmegRN.placeHolderList[91]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_5_IK_null|nutmeg:center_tail_5_IK_multicon_null|nutmeg:center_tail_5_IK_vis_null|nutmeg:center_tail_5_IK_anim.translateY" 
		"nutmegRN.placeHolderList[92]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_5_IK_null|nutmeg:center_tail_5_IK_multicon_null|nutmeg:center_tail_5_IK_vis_null|nutmeg:center_tail_5_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[93]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_5_IK_null|nutmeg:center_tail_5_IK_multicon_null|nutmeg:center_tail_5_IK_vis_null|nutmeg:center_tail_5_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[94]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_5_IK_null|nutmeg:center_tail_5_IK_multicon_null|nutmeg:center_tail_5_IK_vis_null|nutmeg:center_tail_5_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[95]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_5_IK_null|nutmeg:center_tail_5_IK_multicon_null|nutmeg:center_tail_5_IK_vis_null|nutmeg:center_tail_5_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[96]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:center_tail_5_IK_null|nutmeg:center_tail_5_IK_multicon_null|nutmeg:center_tail_5_IK_vis_null|nutmeg:center_tail_5_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[97]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim.rotateX" 
		"nutmegRN.placeHolderList[98]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim.rotateY" 
		"nutmegRN.placeHolderList[99]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[100]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim.parent_to" 
		"nutmegRN.placeHolderList[101]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim.rotateX" 
		"nutmegRN.placeHolderList[102]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim.rotateY" 
		"nutmegRN.placeHolderList[103]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[104]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim.parent_to" 
		"nutmegRN.placeHolderList[105]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim|nutmeg:center_spine_3_null|nutmeg:center_spine_3_multicon_null|nutmeg:center_spine_3_vis_null|nutmeg:center_spine_3_anim.rotateX" 
		"nutmegRN.placeHolderList[106]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim|nutmeg:center_spine_3_null|nutmeg:center_spine_3_multicon_null|nutmeg:center_spine_3_vis_null|nutmeg:center_spine_3_anim.rotateY" 
		"nutmegRN.placeHolderList[107]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim|nutmeg:center_spine_3_null|nutmeg:center_spine_3_multicon_null|nutmeg:center_spine_3_vis_null|nutmeg:center_spine_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[108]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_spine_component_grp|nutmeg:center_spine_anim_grp|nutmeg:center_spine_1_null|nutmeg:center_spine_1_multicon_null|nutmeg:center_spine_1_vis_null|nutmeg:center_spine_1_anim|nutmeg:center_spine_2_null|nutmeg:center_spine_2_multicon_null|nutmeg:center_spine_2_vis_null|nutmeg:center_spine_2_anim|nutmeg:center_spine_3_null|nutmeg:center_spine_3_multicon_null|nutmeg:center_spine_3_vis_null|nutmeg:center_spine_3_anim.parent_to" 
		"nutmegRN.placeHolderList[109]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim.rotateX" 
		"nutmegRN.placeHolderList[110]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim.rotateY" 
		"nutmegRN.placeHolderList[111]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[112]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim.parent_to" 
		"nutmegRN.placeHolderList[113]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_2_null|nutmeg:center_neck_2_vis_null|nutmeg:center_neck_2_anim.rotateX" 
		"nutmegRN.placeHolderList[114]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_2_null|nutmeg:center_neck_2_vis_null|nutmeg:center_neck_2_anim.rotateY" 
		"nutmegRN.placeHolderList[115]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_neck_component_grp|nutmeg:center_neck_anim_grp|nutmeg:center_neck_1_null|nutmeg:center_neck_1_multicon_null|nutmeg:center_neck_1_vis_null|nutmeg:center_neck_1_anim|nutmeg:center_neck_2_null|nutmeg:center_neck_2_vis_null|nutmeg:center_neck_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[116]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_head_component_grp|nutmeg:center_head_anim_grp|nutmeg:center_head_null|nutmeg:center_head_multicon_null|nutmeg:center_head_vis_null|nutmeg:center_head_anim.rotateX" 
		"nutmegRN.placeHolderList[117]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_head_component_grp|nutmeg:center_head_anim_grp|nutmeg:center_head_null|nutmeg:center_head_multicon_null|nutmeg:center_head_vis_null|nutmeg:center_head_anim.rotateY" 
		"nutmegRN.placeHolderList[118]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_head_component_grp|nutmeg:center_head_anim_grp|nutmeg:center_head_null|nutmeg:center_head_multicon_null|nutmeg:center_head_vis_null|nutmeg:center_head_anim.rotateZ" 
		"nutmegRN.placeHolderList[119]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_head_component_grp|nutmeg:center_head_anim_grp|nutmeg:center_head_null|nutmeg:center_head_multicon_null|nutmeg:center_head_vis_null|nutmeg:center_head_anim.parent_to" 
		"nutmegRN.placeHolderList[120]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_A_component_grp|nutmeg:center_tail_tuft_A_anim_grp|nutmeg:center_tail_tuft_A_null|nutmeg:center_tail_tuft_A_vis_null|nutmeg:center_tail_tuft_A_anim.rotateX" 
		"nutmegRN.placeHolderList[121]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_A_component_grp|nutmeg:center_tail_tuft_A_anim_grp|nutmeg:center_tail_tuft_A_null|nutmeg:center_tail_tuft_A_vis_null|nutmeg:center_tail_tuft_A_anim.rotateY" 
		"nutmegRN.placeHolderList[122]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_A_component_grp|nutmeg:center_tail_tuft_A_anim_grp|nutmeg:center_tail_tuft_A_null|nutmeg:center_tail_tuft_A_vis_null|nutmeg:center_tail_tuft_A_anim.rotateZ" 
		"nutmegRN.placeHolderList[123]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_C_component_grp|nutmeg:center_tail_tuft_C_anim_grp|nutmeg:center_tail_tuft_C_1_null|nutmeg:center_tail_tuft_C_1_vis_null|nutmeg:center_tail_tuft_C_1_anim.rotateX" 
		"nutmegRN.placeHolderList[124]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_C_component_grp|nutmeg:center_tail_tuft_C_anim_grp|nutmeg:center_tail_tuft_C_1_null|nutmeg:center_tail_tuft_C_1_vis_null|nutmeg:center_tail_tuft_C_1_anim.rotateY" 
		"nutmegRN.placeHolderList[125]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_C_component_grp|nutmeg:center_tail_tuft_C_anim_grp|nutmeg:center_tail_tuft_C_1_null|nutmeg:center_tail_tuft_C_1_vis_null|nutmeg:center_tail_tuft_C_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[126]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_C_component_grp|nutmeg:center_tail_tuft_C_anim_grp|nutmeg:center_tail_tuft_C_1_null|nutmeg:center_tail_tuft_C_1_vis_null|nutmeg:center_tail_tuft_C_1_anim|nutmeg:center_tail_tuft_C_2_null|nutmeg:center_tail_tuft_C_2_vis_null|nutmeg:center_tail_tuft_C_2_anim.rotateX" 
		"nutmegRN.placeHolderList[127]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_C_component_grp|nutmeg:center_tail_tuft_C_anim_grp|nutmeg:center_tail_tuft_C_1_null|nutmeg:center_tail_tuft_C_1_vis_null|nutmeg:center_tail_tuft_C_1_anim|nutmeg:center_tail_tuft_C_2_null|nutmeg:center_tail_tuft_C_2_vis_null|nutmeg:center_tail_tuft_C_2_anim.rotateY" 
		"nutmegRN.placeHolderList[128]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_C_component_grp|nutmeg:center_tail_tuft_C_anim_grp|nutmeg:center_tail_tuft_C_1_null|nutmeg:center_tail_tuft_C_1_vis_null|nutmeg:center_tail_tuft_C_1_anim|nutmeg:center_tail_tuft_C_2_null|nutmeg:center_tail_tuft_C_2_vis_null|nutmeg:center_tail_tuft_C_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[129]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_B_component_grp|nutmeg:center_tail_tuft_B_anim_grp|nutmeg:center_tail_tuft_B_null|nutmeg:center_tail_tuft_B_vis_null|nutmeg:center_tail_tuft_B_anim.rotateX" 
		"nutmegRN.placeHolderList[130]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_B_component_grp|nutmeg:center_tail_tuft_B_anim_grp|nutmeg:center_tail_tuft_B_null|nutmeg:center_tail_tuft_B_vis_null|nutmeg:center_tail_tuft_B_anim.rotateY" 
		"nutmegRN.placeHolderList[131]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_B_component_grp|nutmeg:center_tail_tuft_B_anim_grp|nutmeg:center_tail_tuft_B_null|nutmeg:center_tail_tuft_B_vis_null|nutmeg:center_tail_tuft_B_anim.rotateZ" 
		"nutmegRN.placeHolderList[132]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_E_component_grp|nutmeg:center_tail_tuft_E_anim_grp|nutmeg:center_tail_tuft_E_1_null|nutmeg:center_tail_tuft_E_1_vis_null|nutmeg:center_tail_tuft_E_1_anim.rotateX" 
		"nutmegRN.placeHolderList[133]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_E_component_grp|nutmeg:center_tail_tuft_E_anim_grp|nutmeg:center_tail_tuft_E_1_null|nutmeg:center_tail_tuft_E_1_vis_null|nutmeg:center_tail_tuft_E_1_anim.rotateY" 
		"nutmegRN.placeHolderList[134]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_E_component_grp|nutmeg:center_tail_tuft_E_anim_grp|nutmeg:center_tail_tuft_E_1_null|nutmeg:center_tail_tuft_E_1_vis_null|nutmeg:center_tail_tuft_E_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[135]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_E_component_grp|nutmeg:center_tail_tuft_E_anim_grp|nutmeg:center_tail_tuft_E_1_null|nutmeg:center_tail_tuft_E_1_vis_null|nutmeg:center_tail_tuft_E_1_anim|nutmeg:center_tail_tuft_E_2_null|nutmeg:center_tail_tuft_E_2_vis_null|nutmeg:center_tail_tuft_E_2_anim.rotateX" 
		"nutmegRN.placeHolderList[136]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_E_component_grp|nutmeg:center_tail_tuft_E_anim_grp|nutmeg:center_tail_tuft_E_1_null|nutmeg:center_tail_tuft_E_1_vis_null|nutmeg:center_tail_tuft_E_1_anim|nutmeg:center_tail_tuft_E_2_null|nutmeg:center_tail_tuft_E_2_vis_null|nutmeg:center_tail_tuft_E_2_anim.rotateY" 
		"nutmegRN.placeHolderList[137]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_E_component_grp|nutmeg:center_tail_tuft_E_anim_grp|nutmeg:center_tail_tuft_E_1_null|nutmeg:center_tail_tuft_E_1_vis_null|nutmeg:center_tail_tuft_E_1_anim|nutmeg:center_tail_tuft_E_2_null|nutmeg:center_tail_tuft_E_2_vis_null|nutmeg:center_tail_tuft_E_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[138]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_D_component_grp|nutmeg:center_tail_tuft_D_anim_grp|nutmeg:center_tail_tuft_D_1_null|nutmeg:center_tail_tuft_D_1_vis_null|nutmeg:center_tail_tuft_D_1_anim.rotateX" 
		"nutmegRN.placeHolderList[139]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_D_component_grp|nutmeg:center_tail_tuft_D_anim_grp|nutmeg:center_tail_tuft_D_1_null|nutmeg:center_tail_tuft_D_1_vis_null|nutmeg:center_tail_tuft_D_1_anim.rotateY" 
		"nutmegRN.placeHolderList[140]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_D_component_grp|nutmeg:center_tail_tuft_D_anim_grp|nutmeg:center_tail_tuft_D_1_null|nutmeg:center_tail_tuft_D_1_vis_null|nutmeg:center_tail_tuft_D_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[141]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_D_component_grp|nutmeg:center_tail_tuft_D_anim_grp|nutmeg:center_tail_tuft_D_1_null|nutmeg:center_tail_tuft_D_1_vis_null|nutmeg:center_tail_tuft_D_1_anim|nutmeg:center_tail_tuft_D_2_null|nutmeg:center_tail_tuft_D_2_vis_null|nutmeg:center_tail_tuft_D_2_anim.rotateX" 
		"nutmegRN.placeHolderList[142]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_D_component_grp|nutmeg:center_tail_tuft_D_anim_grp|nutmeg:center_tail_tuft_D_1_null|nutmeg:center_tail_tuft_D_1_vis_null|nutmeg:center_tail_tuft_D_1_anim|nutmeg:center_tail_tuft_D_2_null|nutmeg:center_tail_tuft_D_2_vis_null|nutmeg:center_tail_tuft_D_2_anim.rotateY" 
		"nutmegRN.placeHolderList[143]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_D_component_grp|nutmeg:center_tail_tuft_D_anim_grp|nutmeg:center_tail_tuft_D_1_null|nutmeg:center_tail_tuft_D_1_vis_null|nutmeg:center_tail_tuft_D_1_anim|nutmeg:center_tail_tuft_D_2_null|nutmeg:center_tail_tuft_D_2_vis_null|nutmeg:center_tail_tuft_D_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[144]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_G_component_grp|nutmeg:center_tail_tuft_G_anim_grp|nutmeg:center_tail_tuft_G_null|nutmeg:center_tail_tuft_G_vis_null|nutmeg:center_tail_tuft_G_anim.rotateX" 
		"nutmegRN.placeHolderList[145]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_G_component_grp|nutmeg:center_tail_tuft_G_anim_grp|nutmeg:center_tail_tuft_G_null|nutmeg:center_tail_tuft_G_vis_null|nutmeg:center_tail_tuft_G_anim.rotateY" 
		"nutmegRN.placeHolderList[146]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_G_component_grp|nutmeg:center_tail_tuft_G_anim_grp|nutmeg:center_tail_tuft_G_null|nutmeg:center_tail_tuft_G_vis_null|nutmeg:center_tail_tuft_G_anim.rotateZ" 
		"nutmegRN.placeHolderList[147]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_F_component_grp|nutmeg:center_tail_tuft_F_anim_grp|nutmeg:center_tail_tuft_F_null|nutmeg:center_tail_tuft_F_vis_null|nutmeg:center_tail_tuft_F_anim.rotateX" 
		"nutmegRN.placeHolderList[148]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_F_component_grp|nutmeg:center_tail_tuft_F_anim_grp|nutmeg:center_tail_tuft_F_null|nutmeg:center_tail_tuft_F_vis_null|nutmeg:center_tail_tuft_F_anim.rotateY" 
		"nutmegRN.placeHolderList[149]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_tail_tuft_F_component_grp|nutmeg:center_tail_tuft_F_anim_grp|nutmeg:center_tail_tuft_F_null|nutmeg:center_tail_tuft_F_vis_null|nutmeg:center_tail_tuft_F_anim.rotateZ" 
		"nutmegRN.placeHolderList[150]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_hair_tuft_component_grp|nutmeg:center_hair_tuft_anim_grp|nutmeg:center_hair_tuft_1_null|nutmeg:center_hair_tuft_1_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_1_vis_null|nutmeg:center_hair_tuft_1_anim.rotateX" 
		"nutmegRN.placeHolderList[151]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_hair_tuft_component_grp|nutmeg:center_hair_tuft_anim_grp|nutmeg:center_hair_tuft_1_null|nutmeg:center_hair_tuft_1_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_1_vis_null|nutmeg:center_hair_tuft_1_anim.rotateY" 
		"nutmegRN.placeHolderList[152]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_hair_tuft_component_grp|nutmeg:center_hair_tuft_anim_grp|nutmeg:center_hair_tuft_1_null|nutmeg:center_hair_tuft_1_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_1_vis_null|nutmeg:center_hair_tuft_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[153]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_hair_tuft_component_grp|nutmeg:center_hair_tuft_anim_grp|nutmeg:center_hair_tuft_1_null|nutmeg:center_hair_tuft_1_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_1_vis_null|nutmeg:center_hair_tuft_1_anim|nutmeg:center_hair_tuft_2_null|nutmeg:center_hair_tuft_2_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_2_vis_null|nutmeg:center_hair_tuft_2_anim.rotateX" 
		"nutmegRN.placeHolderList[154]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_hair_tuft_component_grp|nutmeg:center_hair_tuft_anim_grp|nutmeg:center_hair_tuft_1_null|nutmeg:center_hair_tuft_1_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_1_vis_null|nutmeg:center_hair_tuft_1_anim|nutmeg:center_hair_tuft_2_null|nutmeg:center_hair_tuft_2_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_2_vis_null|nutmeg:center_hair_tuft_2_anim.rotateY" 
		"nutmegRN.placeHolderList[155]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_hair_tuft_component_grp|nutmeg:center_hair_tuft_anim_grp|nutmeg:center_hair_tuft_1_null|nutmeg:center_hair_tuft_1_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_1_vis_null|nutmeg:center_hair_tuft_1_anim|nutmeg:center_hair_tuft_2_null|nutmeg:center_hair_tuft_2_anim_hair_tuck_SDK_null|nutmeg:center_hair_tuft_2_vis_null|nutmeg:center_hair_tuft_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[156]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_upper_hair_tuft_component_grp|nutmeg:center_upper_hair_tuft_anim_grp|nutmeg:center_upper_hair_tuft_null|nutmeg:center_upper_hair_tuft_anim_hair_tuck_SDK_null|nutmeg:center_upper_hair_tuft_vis_null|nutmeg:center_upper_hair_tuft_anim.rotateX" 
		"nutmegRN.placeHolderList[157]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_upper_hair_tuft_component_grp|nutmeg:center_upper_hair_tuft_anim_grp|nutmeg:center_upper_hair_tuft_null|nutmeg:center_upper_hair_tuft_anim_hair_tuck_SDK_null|nutmeg:center_upper_hair_tuft_vis_null|nutmeg:center_upper_hair_tuft_anim.rotateY" 
		"nutmegRN.placeHolderList[158]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_upper_hair_tuft_component_grp|nutmeg:center_upper_hair_tuft_anim_grp|nutmeg:center_upper_hair_tuft_null|nutmeg:center_upper_hair_tuft_anim_hair_tuck_SDK_null|nutmeg:center_upper_hair_tuft_vis_null|nutmeg:center_upper_hair_tuft_anim.rotateZ" 
		"nutmegRN.placeHolderList[159]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_hair_tuft_component_grp|nutmeg:left_hair_tuft_anim_grp|nutmeg:left_hair_tuft_null|nutmeg:left_hair_tuft_vis_null|nutmeg:left_hair_tuft_anim.rotateX" 
		"nutmegRN.placeHolderList[160]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_hair_tuft_component_grp|nutmeg:left_hair_tuft_anim_grp|nutmeg:left_hair_tuft_null|nutmeg:left_hair_tuft_vis_null|nutmeg:left_hair_tuft_anim.rotateY" 
		"nutmegRN.placeHolderList[161]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_hair_tuft_component_grp|nutmeg:left_hair_tuft_anim_grp|nutmeg:left_hair_tuft_null|nutmeg:left_hair_tuft_vis_null|nutmeg:left_hair_tuft_anim.rotateZ" 
		"nutmegRN.placeHolderList[162]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_hair_tuft_component_grp|nutmeg:right_hair_tuft_anim_grp|nutmeg:right_hair_tuft_1_null|nutmeg:right_hair_tuft_1_vis_null|nutmeg:right_hair_tuft_1_anim.rotateX" 
		"nutmegRN.placeHolderList[163]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_hair_tuft_component_grp|nutmeg:right_hair_tuft_anim_grp|nutmeg:right_hair_tuft_1_null|nutmeg:right_hair_tuft_1_vis_null|nutmeg:right_hair_tuft_1_anim.rotateY" 
		"nutmegRN.placeHolderList[164]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_hair_tuft_component_grp|nutmeg:right_hair_tuft_anim_grp|nutmeg:right_hair_tuft_1_null|nutmeg:right_hair_tuft_1_vis_null|nutmeg:right_hair_tuft_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[165]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_hair_tuft_component_grp|nutmeg:right_hair_tuft_anim_grp|nutmeg:right_hair_tuft_1_null|nutmeg:right_hair_tuft_1_vis_null|nutmeg:right_hair_tuft_1_anim|nutmeg:right_hair_tuft_2_null|nutmeg:right_hair_tuft_2_vis_null|nutmeg:right_hair_tuft_2_anim.rotateX" 
		"nutmegRN.placeHolderList[166]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_hair_tuft_component_grp|nutmeg:right_hair_tuft_anim_grp|nutmeg:right_hair_tuft_1_null|nutmeg:right_hair_tuft_1_vis_null|nutmeg:right_hair_tuft_1_anim|nutmeg:right_hair_tuft_2_null|nutmeg:right_hair_tuft_2_vis_null|nutmeg:right_hair_tuft_2_anim.rotateY" 
		"nutmegRN.placeHolderList[167]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_hair_tuft_component_grp|nutmeg:right_hair_tuft_anim_grp|nutmeg:right_hair_tuft_1_null|nutmeg:right_hair_tuft_1_vis_null|nutmeg:right_hair_tuft_1_anim|nutmeg:right_hair_tuft_2_null|nutmeg:right_hair_tuft_2_vis_null|nutmeg:right_hair_tuft_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[168]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_clavicle_component_grp|nutmeg:left_clavicle_anim_grp|nutmeg:left_clavicle_null|nutmeg:left_clavicle_vis_null|nutmeg:left_clavicle_anim.rotateX" 
		"nutmegRN.placeHolderList[169]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_clavicle_component_grp|nutmeg:left_clavicle_anim_grp|nutmeg:left_clavicle_null|nutmeg:left_clavicle_vis_null|nutmeg:left_clavicle_anim.rotateY" 
		"nutmegRN.placeHolderList[170]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_clavicle_component_grp|nutmeg:left_clavicle_anim_grp|nutmeg:left_clavicle_null|nutmeg:left_clavicle_vis_null|nutmeg:left_clavicle_anim.rotateZ" 
		"nutmegRN.placeHolderList[171]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_clavicle_component_grp|nutmeg:left_clavicle_anim_grp|nutmeg:left_clavicle_null|nutmeg:left_clavicle_vis_null|nutmeg:left_clavicle_anim.stretch" 
		"nutmegRN.placeHolderList[172]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[173]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[174]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[175]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim.stretch" 
		"nutmegRN.placeHolderList[176]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim.parent_to" 
		"nutmegRN.placeHolderList[177]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim|nutmeg:left_arm_2_FK_null|nutmeg:left_arm_2_FK_vis_null|nutmeg:left_arm_2_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[178]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim|nutmeg:left_arm_2_FK_null|nutmeg:left_arm_2_FK_vis_null|nutmeg:left_arm_2_FK_anim.stretch" 
		"nutmegRN.placeHolderList[179]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim|nutmeg:left_arm_2_FK_null|nutmeg:left_arm_2_FK_vis_null|nutmeg:left_arm_2_FK_anim|nutmeg:left_arm_3_FK_null|nutmeg:left_arm_3_FK_vis_null|nutmeg:left_arm_3_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[180]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim|nutmeg:left_arm_2_FK_null|nutmeg:left_arm_2_FK_vis_null|nutmeg:left_arm_2_FK_anim|nutmeg:left_arm_3_FK_null|nutmeg:left_arm_3_FK_vis_null|nutmeg:left_arm_3_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[181]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_arm_1_FK_null|nutmeg:left_arm_1_FK_multicon_null|nutmeg:left_arm_1_FK_vis_null|nutmeg:left_arm_1_FK_anim|nutmeg:left_arm_2_FK_null|nutmeg:left_arm_2_FK_vis_null|nutmeg:left_arm_2_FK_anim|nutmeg:left_arm_3_FK_null|nutmeg:left_arm_3_FK_vis_null|nutmeg:left_arm_3_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[182]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[183]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[184]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[185]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.translateX" 
		"nutmegRN.placeHolderList[186]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.translateY" 
		"nutmegRN.placeHolderList[187]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[188]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.stretch" 
		"nutmegRN.placeHolderList[189]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.soft_IK" 
		"nutmegRN.placeHolderList[190]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_IK_null|nutmeg:left_arm_IK_multicon_null|nutmeg:left_arm_IK_vis_null|nutmeg:left_arm_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[191]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.FK_mode" 
		"nutmegRN.placeHolderList[192]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.translateX" 
		"nutmegRN.placeHolderList[193]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.translateY" 
		"nutmegRN.placeHolderList[194]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.translateZ" 
		"nutmegRN.placeHolderList[195]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.rotateX" 
		"nutmegRN.placeHolderList[196]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.rotateY" 
		"nutmegRN.placeHolderList[197]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.rotateZ" 
		"nutmegRN.placeHolderList[198]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.pole_vector_lock" 
		"nutmegRN.placeHolderList[199]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_arm_PV_null|nutmeg:left_arm_PV_position_null|nutmeg:left_arm_PV_multicon_null|nutmeg:left_arm_PV_vis_null|nutmeg:left_arm_PV_anim.parent_to" 
		"nutmegRN.placeHolderList[200]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[201]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[202]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[203]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim.stretch" 
		"nutmegRN.placeHolderList[204]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim.parent_to" 
		"nutmegRN.placeHolderList[205]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[206]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim.stretch" 
		"nutmegRN.placeHolderList[207]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[208]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[209]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[210]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_4_FK_null|nutmeg:left_leg_4_FK_vis_null|nutmeg:left_leg_4_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[211]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_4_FK_null|nutmeg:left_leg_4_FK_vis_null|nutmeg:left_leg_4_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[212]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_4_FK_null|nutmeg:left_leg_4_FK_vis_null|nutmeg:left_leg_4_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[213]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_4_FK_null|nutmeg:left_leg_4_FK_vis_null|nutmeg:left_leg_4_FK_anim|nutmeg:left_leg_5_FK_null|nutmeg:left_leg_5_FK_vis_null|nutmeg:left_leg_5_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[214]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_4_FK_null|nutmeg:left_leg_4_FK_vis_null|nutmeg:left_leg_4_FK_anim|nutmeg:left_leg_5_FK_null|nutmeg:left_leg_5_FK_vis_null|nutmeg:left_leg_5_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[215]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:left_leg_1_FK_null|nutmeg:left_leg_1_FK_multicon_null|nutmeg:left_leg_1_FK_vis_null|nutmeg:left_leg_1_FK_anim|nutmeg:left_leg_2_FK_null|nutmeg:left_leg_2_FK_vis_null|nutmeg:left_leg_2_FK_anim|nutmeg:left_leg_3_FK_null|nutmeg:left_leg_3_FK_vis_null|nutmeg:left_leg_3_FK_anim|nutmeg:left_leg_4_FK_null|nutmeg:left_leg_4_FK_vis_null|nutmeg:left_leg_4_FK_anim|nutmeg:left_leg_5_FK_null|nutmeg:left_leg_5_FK_vis_null|nutmeg:left_leg_5_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[216]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.translateX" 
		"nutmegRN.placeHolderList[217]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.translateY" 
		"nutmegRN.placeHolderList[218]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[219]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[220]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[221]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[222]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.roll_anim_vis" 
		"nutmegRN.placeHolderList[223]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.heel_pivot" 
		"nutmegRN.placeHolderList[224]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.toe_pivot" 
		"nutmegRN.placeHolderList[225]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.lean" 
		"nutmegRN.placeHolderList[226]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.toe_lift" 
		"nutmegRN.placeHolderList[227]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.balltoe_lift" 
		"nutmegRN.placeHolderList[228]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.side_to_side" 
		"nutmegRN.placeHolderList[229]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.heel_to_toe" 
		"nutmegRN.placeHolderList[230]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.stretch" 
		"nutmegRN.placeHolderList[231]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.soft_IK" 
		"nutmegRN.placeHolderList[232]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[233]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_quad_IK_null|nutmeg:left_leg_quad_IK_vis_null|nutmeg:left_leg_quad_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[234]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_quad_IK_null|nutmeg:left_leg_quad_IK_vis_null|nutmeg:left_leg_quad_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[235]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_quad_IK_null|nutmeg:left_leg_quad_IK_vis_null|nutmeg:left_leg_quad_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[236]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[237]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim.rotateY" 
		"nutmegRN.placeHolderList[238]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim.rotateZ" 
		"nutmegRN.placeHolderList[239]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[240]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[241]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[242]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim.rotateY" 
		"nutmegRN.placeHolderList[243]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim.rotateZ" 
		"nutmegRN.placeHolderList[244]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_center_pivot_null|nutmeg:left_leg_center_pivot_vis_null|nutmeg:left_leg_center_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[245]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_center_pivot_null|nutmeg:left_leg_center_pivot_vis_null|nutmeg:left_leg_center_pivot_anim.rotateY" 
		"nutmegRN.placeHolderList[246]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_center_pivot_null|nutmeg:left_leg_center_pivot_vis_null|nutmeg:left_leg_center_pivot_anim.rotateZ" 
		"nutmegRN.placeHolderList[247]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_digit_pivot_null|nutmeg:left_leg_digit_pivot_vis_null|nutmeg:left_leg_digit_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[248]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_digit_pivot_null|nutmeg:left_leg_digit_pivot_vis_null|nutmeg:left_leg_digit_pivot_anim.rotateY" 
		"nutmegRN.placeHolderList[249]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_IK_null|nutmeg:left_leg_IK_multicon_null|nutmeg:left_leg_IK_vis_null|nutmeg:left_leg_IK_anim|nutmeg:left_leg_foot_roll_grp|nutmeg:left_leg_IK_roll_grp|nutmeg:left_leg_back_pivot_null|nutmeg:left_leg_back_pivot_vis_null|nutmeg:left_leg_back_pivot_anim|nutmeg:left_leg_inner_pivot_null|nutmeg:left_leg_inner_pivot_vis_null|nutmeg:left_leg_inner_pivot_anim|nutmeg:left_leg_outer_pivot_null|nutmeg:left_leg_outer_pivot_vis_null|nutmeg:left_leg_outer_pivot_anim|nutmeg:left_leg_front_pivot_null|nutmeg:left_leg_front_pivot_vis_null|nutmeg:left_leg_front_pivot_anim|nutmeg:left_leg_digit_pivot_null|nutmeg:left_leg_digit_pivot_vis_null|nutmeg:left_leg_digit_pivot_anim.rotateZ" 
		"nutmegRN.placeHolderList[250]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.FK_mode" 
		"nutmegRN.placeHolderList[251]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.translateX" 
		"nutmegRN.placeHolderList[252]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.translateY" 
		"nutmegRN.placeHolderList[253]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.translateZ" 
		"nutmegRN.placeHolderList[254]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.rotateZ" 
		"nutmegRN.placeHolderList[255]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.rotateX" 
		"nutmegRN.placeHolderList[256]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.rotateY" 
		"nutmegRN.placeHolderList[257]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.pole_vector_lock" 
		"nutmegRN.placeHolderList[258]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:left_leg_PV_null|nutmeg:left_leg_PV_position_null|nutmeg:left_leg_PV_multicon_null|nutmeg:left_leg_PV_vis_null|nutmeg:left_leg_PV_anim.parent_to" 
		"nutmegRN.placeHolderList[259]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_1_null|nutmeg:left_wing_flap_1_translate_null|nutmeg:left_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_1_vis_null|nutmeg:left_wing_flap_1_anim.translateX" 
		"nutmegRN.placeHolderList[260]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_1_null|nutmeg:left_wing_flap_1_translate_null|nutmeg:left_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_1_vis_null|nutmeg:left_wing_flap_1_anim.translateY" 
		"nutmegRN.placeHolderList[261]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_1_null|nutmeg:left_wing_flap_1_translate_null|nutmeg:left_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_1_vis_null|nutmeg:left_wing_flap_1_anim.translateZ" 
		"nutmegRN.placeHolderList[262]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_1_null|nutmeg:left_wing_flap_1_translate_null|nutmeg:left_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_1_vis_null|nutmeg:left_wing_flap_1_anim.rotateX" 
		"nutmegRN.placeHolderList[263]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_1_null|nutmeg:left_wing_flap_1_translate_null|nutmeg:left_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_1_vis_null|nutmeg:left_wing_flap_1_anim.rotateY" 
		"nutmegRN.placeHolderList[264]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_1_null|nutmeg:left_wing_flap_1_translate_null|nutmeg:left_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_1_vis_null|nutmeg:left_wing_flap_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[265]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_2_null|nutmeg:left_wing_flap_2_translate_null|nutmeg:left_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_2_vis_null|nutmeg:left_wing_flap_2_anim.translateX" 
		"nutmegRN.placeHolderList[266]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_2_null|nutmeg:left_wing_flap_2_translate_null|nutmeg:left_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_2_vis_null|nutmeg:left_wing_flap_2_anim.translateY" 
		"nutmegRN.placeHolderList[267]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_2_null|nutmeg:left_wing_flap_2_translate_null|nutmeg:left_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_2_vis_null|nutmeg:left_wing_flap_2_anim.translateZ" 
		"nutmegRN.placeHolderList[268]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_2_null|nutmeg:left_wing_flap_2_translate_null|nutmeg:left_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_2_vis_null|nutmeg:left_wing_flap_2_anim.rotateX" 
		"nutmegRN.placeHolderList[269]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_2_null|nutmeg:left_wing_flap_2_translate_null|nutmeg:left_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_2_vis_null|nutmeg:left_wing_flap_2_anim.rotateY" 
		"nutmegRN.placeHolderList[270]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_2_null|nutmeg:left_wing_flap_2_translate_null|nutmeg:left_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_2_vis_null|nutmeg:left_wing_flap_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[271]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_3_null|nutmeg:left_wing_flap_3_translate_null|nutmeg:left_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_3_vis_null|nutmeg:left_wing_flap_3_anim.translateX" 
		"nutmegRN.placeHolderList[272]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_3_null|nutmeg:left_wing_flap_3_translate_null|nutmeg:left_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_3_vis_null|nutmeg:left_wing_flap_3_anim.translateY" 
		"nutmegRN.placeHolderList[273]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_3_null|nutmeg:left_wing_flap_3_translate_null|nutmeg:left_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_3_vis_null|nutmeg:left_wing_flap_3_anim.translateZ" 
		"nutmegRN.placeHolderList[274]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_3_null|nutmeg:left_wing_flap_3_translate_null|nutmeg:left_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_3_vis_null|nutmeg:left_wing_flap_3_anim.rotateX" 
		"nutmegRN.placeHolderList[275]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_3_null|nutmeg:left_wing_flap_3_translate_null|nutmeg:left_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_3_vis_null|nutmeg:left_wing_flap_3_anim.rotateY" 
		"nutmegRN.placeHolderList[276]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_3_null|nutmeg:left_wing_flap_3_translate_null|nutmeg:left_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_3_vis_null|nutmeg:left_wing_flap_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[277]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_4_null|nutmeg:left_wing_flap_4_translate_null|nutmeg:left_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_4_vis_null|nutmeg:left_wing_flap_4_anim.translateX" 
		"nutmegRN.placeHolderList[278]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_4_null|nutmeg:left_wing_flap_4_translate_null|nutmeg:left_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_4_vis_null|nutmeg:left_wing_flap_4_anim.translateY" 
		"nutmegRN.placeHolderList[279]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_4_null|nutmeg:left_wing_flap_4_translate_null|nutmeg:left_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_4_vis_null|nutmeg:left_wing_flap_4_anim.translateZ" 
		"nutmegRN.placeHolderList[280]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_4_null|nutmeg:left_wing_flap_4_translate_null|nutmeg:left_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_4_vis_null|nutmeg:left_wing_flap_4_anim.rotateX" 
		"nutmegRN.placeHolderList[281]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_4_null|nutmeg:left_wing_flap_4_translate_null|nutmeg:left_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_4_vis_null|nutmeg:left_wing_flap_4_anim.rotateY" 
		"nutmegRN.placeHolderList[282]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_4_null|nutmeg:left_wing_flap_4_translate_null|nutmeg:left_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_4_vis_null|nutmeg:left_wing_flap_4_anim.rotateZ" 
		"nutmegRN.placeHolderList[283]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_5_null|nutmeg:left_wing_flap_5_translate_null|nutmeg:left_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_5_vis_null|nutmeg:left_wing_flap_5_anim.translateX" 
		"nutmegRN.placeHolderList[284]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_5_null|nutmeg:left_wing_flap_5_translate_null|nutmeg:left_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_5_vis_null|nutmeg:left_wing_flap_5_anim.translateY" 
		"nutmegRN.placeHolderList[285]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_5_null|nutmeg:left_wing_flap_5_translate_null|nutmeg:left_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_5_vis_null|nutmeg:left_wing_flap_5_anim.translateZ" 
		"nutmegRN.placeHolderList[286]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_5_null|nutmeg:left_wing_flap_5_translate_null|nutmeg:left_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_5_vis_null|nutmeg:left_wing_flap_5_anim.rotateX" 
		"nutmegRN.placeHolderList[287]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_5_null|nutmeg:left_wing_flap_5_translate_null|nutmeg:left_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_5_vis_null|nutmeg:left_wing_flap_5_anim.rotateY" 
		"nutmegRN.placeHolderList[288]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_wing_flap_component_grp|nutmeg:left_wing_flap_anim_grp|nutmeg:left_wing_flap_5_null|nutmeg:left_wing_flap_5_translate_null|nutmeg:left_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:left_wing_flap_5_vis_null|nutmeg:left_wing_flap_5_anim.rotateZ" 
		"nutmegRN.placeHolderList[289]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_metacarpal_component_grp|nutmeg:left_index_metacarpal_anim_grp|nutmeg:left_index_metacarpal_null|nutmeg:left_index_metacarpal_vis_null|nutmeg:left_index_metacarpal_anim.rotateX" 
		"nutmegRN.placeHolderList[290]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_metacarpal_component_grp|nutmeg:left_index_metacarpal_anim_grp|nutmeg:left_index_metacarpal_null|nutmeg:left_index_metacarpal_vis_null|nutmeg:left_index_metacarpal_anim.rotateY" 
		"nutmegRN.placeHolderList[291]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_metacarpal_component_grp|nutmeg:left_index_metacarpal_anim_grp|nutmeg:left_index_metacarpal_null|nutmeg:left_index_metacarpal_vis_null|nutmeg:left_index_metacarpal_anim.rotateZ" 
		"nutmegRN.placeHolderList[292]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim.rotateX" 
		"nutmegRN.placeHolderList[293]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim.rotateY" 
		"nutmegRN.placeHolderList[294]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[295]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim.rotateX" 
		"nutmegRN.placeHolderList[296]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim.rotateY" 
		"nutmegRN.placeHolderList[297]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[298]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim|nutmeg:left_index_3_null|nutmeg:left_index_3_vis_null|nutmeg:left_index_3_anim.rotateX" 
		"nutmegRN.placeHolderList[299]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim|nutmeg:left_index_3_null|nutmeg:left_index_3_vis_null|nutmeg:left_index_3_anim.rotateY" 
		"nutmegRN.placeHolderList[300]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_index_component_grp|nutmeg:left_index_anim_grp|nutmeg:left_index_1_null|nutmeg:left_index_1_vis_null|nutmeg:left_index_1_anim|nutmeg:left_index_2_null|nutmeg:left_index_2_vis_null|nutmeg:left_index_2_anim|nutmeg:left_index_3_null|nutmeg:left_index_3_vis_null|nutmeg:left_index_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[301]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_metacarpal_component_grp|nutmeg:left_middle_metacarpal_anim_grp|nutmeg:left_middle_metacarpal_null|nutmeg:left_middle_metacarpal_vis_null|nutmeg:left_middle_metacarpal_anim.rotateX" 
		"nutmegRN.placeHolderList[302]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_metacarpal_component_grp|nutmeg:left_middle_metacarpal_anim_grp|nutmeg:left_middle_metacarpal_null|nutmeg:left_middle_metacarpal_vis_null|nutmeg:left_middle_metacarpal_anim.rotateY" 
		"nutmegRN.placeHolderList[303]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_metacarpal_component_grp|nutmeg:left_middle_metacarpal_anim_grp|nutmeg:left_middle_metacarpal_null|nutmeg:left_middle_metacarpal_vis_null|nutmeg:left_middle_metacarpal_anim.rotateZ" 
		"nutmegRN.placeHolderList[304]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim.rotateX" 
		"nutmegRN.placeHolderList[305]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim.rotateY" 
		"nutmegRN.placeHolderList[306]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[307]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim.rotateX" 
		"nutmegRN.placeHolderList[308]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim.rotateY" 
		"nutmegRN.placeHolderList[309]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[310]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim|nutmeg:left_middle_3_null|nutmeg:left_middle_3_vis_null|nutmeg:left_middle_3_anim.rotateX" 
		"nutmegRN.placeHolderList[311]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim|nutmeg:left_middle_3_null|nutmeg:left_middle_3_vis_null|nutmeg:left_middle_3_anim.rotateY" 
		"nutmegRN.placeHolderList[312]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_middle_component_grp|nutmeg:left_middle_anim_grp|nutmeg:left_middle_1_null|nutmeg:left_middle_1_vis_null|nutmeg:left_middle_1_anim|nutmeg:left_middle_2_null|nutmeg:left_middle_2_vis_null|nutmeg:left_middle_2_anim|nutmeg:left_middle_3_null|nutmeg:left_middle_3_vis_null|nutmeg:left_middle_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[313]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_metacarpal_component_grp|nutmeg:left_pinky_metacarpal_anim_grp|nutmeg:left_pinky_metacarpal_null|nutmeg:left_pinky_metacarpal_vis_null|nutmeg:left_pinky_metacarpal_anim.rotateX" 
		"nutmegRN.placeHolderList[314]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_metacarpal_component_grp|nutmeg:left_pinky_metacarpal_anim_grp|nutmeg:left_pinky_metacarpal_null|nutmeg:left_pinky_metacarpal_vis_null|nutmeg:left_pinky_metacarpal_anim.rotateY" 
		"nutmegRN.placeHolderList[315]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_metacarpal_component_grp|nutmeg:left_pinky_metacarpal_anim_grp|nutmeg:left_pinky_metacarpal_null|nutmeg:left_pinky_metacarpal_vis_null|nutmeg:left_pinky_metacarpal_anim.rotateZ" 
		"nutmegRN.placeHolderList[316]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim.rotateX" 
		"nutmegRN.placeHolderList[317]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim.rotateY" 
		"nutmegRN.placeHolderList[318]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[319]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim.rotateX" 
		"nutmegRN.placeHolderList[320]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim.rotateY" 
		"nutmegRN.placeHolderList[321]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[322]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim|nutmeg:left_pinky_3_null|nutmeg:left_pinky_3_vis_null|nutmeg:left_pinky_3_anim.rotateX" 
		"nutmegRN.placeHolderList[323]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim|nutmeg:left_pinky_3_null|nutmeg:left_pinky_3_vis_null|nutmeg:left_pinky_3_anim.rotateY" 
		"nutmegRN.placeHolderList[324]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_pinky_component_grp|nutmeg:left_pinky_anim_grp|nutmeg:left_pinky_1_null|nutmeg:left_pinky_1_vis_null|nutmeg:left_pinky_1_anim|nutmeg:left_pinky_2_null|nutmeg:left_pinky_2_vis_null|nutmeg:left_pinky_2_anim|nutmeg:left_pinky_3_null|nutmeg:left_pinky_3_vis_null|nutmeg:left_pinky_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[325]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim.rotateX" 
		"nutmegRN.placeHolderList[326]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim.rotateY" 
		"nutmegRN.placeHolderList[327]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[328]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_2_null|nutmeg:left_thumb_2_vis_null|nutmeg:left_thumb_2_anim.rotateX" 
		"nutmegRN.placeHolderList[329]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_2_null|nutmeg:left_thumb_2_vis_null|nutmeg:left_thumb_2_anim.rotateY" 
		"nutmegRN.placeHolderList[330]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_2_null|nutmeg:left_thumb_2_vis_null|nutmeg:left_thumb_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[331]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_2_null|nutmeg:left_thumb_2_vis_null|nutmeg:left_thumb_2_anim|nutmeg:left_thumb_3_null|nutmeg:left_thumb_3_vis_null|nutmeg:left_thumb_3_anim.rotateX" 
		"nutmegRN.placeHolderList[332]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_2_null|nutmeg:left_thumb_2_vis_null|nutmeg:left_thumb_2_anim|nutmeg:left_thumb_3_null|nutmeg:left_thumb_3_vis_null|nutmeg:left_thumb_3_anim.rotateY" 
		"nutmegRN.placeHolderList[333]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_thumb_component_grp|nutmeg:left_thumb_anim_grp|nutmeg:left_thumb_1_null|nutmeg:left_thumb_1_vis_null|nutmeg:left_thumb_1_anim|nutmeg:left_thumb_2_null|nutmeg:left_thumb_2_vis_null|nutmeg:left_thumb_2_anim|nutmeg:left_thumb_3_null|nutmeg:left_thumb_3_vis_null|nutmeg:left_thumb_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[334]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_uppercheek_tuft_component_grp|nutmeg:left_uppercheek_tuft_anim_grp|nutmeg:left_uppercheek_tuft_1_null|nutmeg:left_uppercheek_tuft_1_vis_null|nutmeg:left_uppercheek_tuft_1_anim.rotateX" 
		"nutmegRN.placeHolderList[335]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_uppercheek_tuft_component_grp|nutmeg:left_uppercheek_tuft_anim_grp|nutmeg:left_uppercheek_tuft_1_null|nutmeg:left_uppercheek_tuft_1_vis_null|nutmeg:left_uppercheek_tuft_1_anim.rotateY" 
		"nutmegRN.placeHolderList[336]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_uppercheek_tuft_component_grp|nutmeg:left_uppercheek_tuft_anim_grp|nutmeg:left_uppercheek_tuft_1_null|nutmeg:left_uppercheek_tuft_1_vis_null|nutmeg:left_uppercheek_tuft_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[337]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_uppercheek_tuft_component_grp|nutmeg:left_uppercheek_tuft_anim_grp|nutmeg:left_uppercheek_tuft_1_null|nutmeg:left_uppercheek_tuft_1_vis_null|nutmeg:left_uppercheek_tuft_1_anim|nutmeg:left_uppercheek_tuft_2_null|nutmeg:left_uppercheek_tuft_2_vis_null|nutmeg:left_uppercheek_tuft_2_anim.rotateX" 
		"nutmegRN.placeHolderList[338]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_uppercheek_tuft_component_grp|nutmeg:left_uppercheek_tuft_anim_grp|nutmeg:left_uppercheek_tuft_1_null|nutmeg:left_uppercheek_tuft_1_vis_null|nutmeg:left_uppercheek_tuft_1_anim|nutmeg:left_uppercheek_tuft_2_null|nutmeg:left_uppercheek_tuft_2_vis_null|nutmeg:left_uppercheek_tuft_2_anim.rotateY" 
		"nutmegRN.placeHolderList[339]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_uppercheek_tuft_component_grp|nutmeg:left_uppercheek_tuft_anim_grp|nutmeg:left_uppercheek_tuft_1_null|nutmeg:left_uppercheek_tuft_1_vis_null|nutmeg:left_uppercheek_tuft_1_anim|nutmeg:left_uppercheek_tuft_2_null|nutmeg:left_uppercheek_tuft_2_vis_null|nutmeg:left_uppercheek_tuft_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[340]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_lowercheek_tuft_component_grp|nutmeg:left_lowercheek_tuft_anim_grp|nutmeg:left_lowercheek_tuft_null|nutmeg:left_lowercheek_tuft_vis_null|nutmeg:left_lowercheek_tuft_anim.rotateX" 
		"nutmegRN.placeHolderList[341]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_lowercheek_tuft_component_grp|nutmeg:left_lowercheek_tuft_anim_grp|nutmeg:left_lowercheek_tuft_null|nutmeg:left_lowercheek_tuft_vis_null|nutmeg:left_lowercheek_tuft_anim.rotateY" 
		"nutmegRN.placeHolderList[342]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_lowercheek_tuft_component_grp|nutmeg:left_lowercheek_tuft_anim_grp|nutmeg:left_lowercheek_tuft_null|nutmeg:left_lowercheek_tuft_vis_null|nutmeg:left_lowercheek_tuft_anim.rotateZ" 
		"nutmegRN.placeHolderList[343]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_clavicle_component_grp|nutmeg:right_clavicle_anim_grp|nutmeg:right_clavicle_null|nutmeg:right_clavicle_vis_null|nutmeg:right_clavicle_anim.rotateX" 
		"nutmegRN.placeHolderList[344]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_clavicle_component_grp|nutmeg:right_clavicle_anim_grp|nutmeg:right_clavicle_null|nutmeg:right_clavicle_vis_null|nutmeg:right_clavicle_anim.rotateY" 
		"nutmegRN.placeHolderList[345]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_clavicle_component_grp|nutmeg:right_clavicle_anim_grp|nutmeg:right_clavicle_null|nutmeg:right_clavicle_vis_null|nutmeg:right_clavicle_anim.rotateZ" 
		"nutmegRN.placeHolderList[346]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_clavicle_component_grp|nutmeg:right_clavicle_anim_grp|nutmeg:right_clavicle_null|nutmeg:right_clavicle_vis_null|nutmeg:right_clavicle_anim.stretch" 
		"nutmegRN.placeHolderList[347]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[348]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[349]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[350]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim.stretch" 
		"nutmegRN.placeHolderList[351]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim.parent_to" 
		"nutmegRN.placeHolderList[352]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim|nutmeg:right_arm_2_FK_null|nutmeg:right_arm_2_FK_vis_null|nutmeg:right_arm_2_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[353]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim|nutmeg:right_arm_2_FK_null|nutmeg:right_arm_2_FK_vis_null|nutmeg:right_arm_2_FK_anim.stretch" 
		"nutmegRN.placeHolderList[354]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim|nutmeg:right_arm_2_FK_null|nutmeg:right_arm_2_FK_vis_null|nutmeg:right_arm_2_FK_anim|nutmeg:right_arm_3_FK_null|nutmeg:right_arm_3_FK_vis_null|nutmeg:right_arm_3_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[355]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim|nutmeg:right_arm_2_FK_null|nutmeg:right_arm_2_FK_vis_null|nutmeg:right_arm_2_FK_anim|nutmeg:right_arm_3_FK_null|nutmeg:right_arm_3_FK_vis_null|nutmeg:right_arm_3_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[356]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_arm_1_FK_null|nutmeg:right_arm_1_FK_multicon_null|nutmeg:right_arm_1_FK_vis_null|nutmeg:right_arm_1_FK_anim|nutmeg:right_arm_2_FK_null|nutmeg:right_arm_2_FK_vis_null|nutmeg:right_arm_2_FK_anim|nutmeg:right_arm_3_FK_null|nutmeg:right_arm_3_FK_vis_null|nutmeg:right_arm_3_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[357]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[358]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[359]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[360]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.translateX" 
		"nutmegRN.placeHolderList[361]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.translateY" 
		"nutmegRN.placeHolderList[362]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[363]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.stretch" 
		"nutmegRN.placeHolderList[364]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.soft_IK" 
		"nutmegRN.placeHolderList[365]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_IK_null|nutmeg:right_arm_IK_multicon_null|nutmeg:right_arm_IK_vis_null|nutmeg:right_arm_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[366]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.FK_mode" 
		"nutmegRN.placeHolderList[367]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.translateX" 
		"nutmegRN.placeHolderList[368]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.translateY" 
		"nutmegRN.placeHolderList[369]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.translateZ" 
		"nutmegRN.placeHolderList[370]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.rotateX" 
		"nutmegRN.placeHolderList[371]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.rotateY" 
		"nutmegRN.placeHolderList[372]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.rotateZ" 
		"nutmegRN.placeHolderList[373]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.pole_vector_lock" 
		"nutmegRN.placeHolderList[374]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_arm_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_arm_PV_null|nutmeg:right_arm_PV_position_null|nutmeg:right_arm_PV_multicon_null|nutmeg:right_arm_PV_vis_null|nutmeg:right_arm_PV_anim.parent_to" 
		"nutmegRN.placeHolderList[375]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[376]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[377]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[378]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim.stretch" 
		"nutmegRN.placeHolderList[379]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim.parent_to" 
		"nutmegRN.placeHolderList[380]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[381]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim.stretch" 
		"nutmegRN.placeHolderList[382]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[383]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[384]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[385]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_4_FK_null|nutmeg:right_leg_4_FK_vis_null|nutmeg:right_leg_4_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[386]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_4_FK_null|nutmeg:right_leg_4_FK_vis_null|nutmeg:right_leg_4_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[387]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_4_FK_null|nutmeg:right_leg_4_FK_vis_null|nutmeg:right_leg_4_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[388]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_4_FK_null|nutmeg:right_leg_4_FK_vis_null|nutmeg:right_leg_4_FK_anim|nutmeg:right_leg_5_FK_null|nutmeg:right_leg_5_FK_vis_null|nutmeg:right_leg_5_FK_anim.rotateX" 
		"nutmegRN.placeHolderList[389]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_4_FK_null|nutmeg:right_leg_4_FK_vis_null|nutmeg:right_leg_4_FK_anim|nutmeg:right_leg_5_FK_null|nutmeg:right_leg_5_FK_vis_null|nutmeg:right_leg_5_FK_anim.rotateY" 
		"nutmegRN.placeHolderList[390]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:FK_anim_grp|nutmeg:right_leg_1_FK_null|nutmeg:right_leg_1_FK_multicon_null|nutmeg:right_leg_1_FK_vis_null|nutmeg:right_leg_1_FK_anim|nutmeg:right_leg_2_FK_null|nutmeg:right_leg_2_FK_vis_null|nutmeg:right_leg_2_FK_anim|nutmeg:right_leg_3_FK_null|nutmeg:right_leg_3_FK_vis_null|nutmeg:right_leg_3_FK_anim|nutmeg:right_leg_4_FK_null|nutmeg:right_leg_4_FK_vis_null|nutmeg:right_leg_4_FK_anim|nutmeg:right_leg_5_FK_null|nutmeg:right_leg_5_FK_vis_null|nutmeg:right_leg_5_FK_anim.rotateZ" 
		"nutmegRN.placeHolderList[391]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.translateX" 
		"nutmegRN.placeHolderList[392]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.translateY" 
		"nutmegRN.placeHolderList[393]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.translateZ" 
		"nutmegRN.placeHolderList[394]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[395]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[396]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[397]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.roll_anim_vis" 
		"nutmegRN.placeHolderList[398]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.heel_pivot" 
		"nutmegRN.placeHolderList[399]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.toe_pivot" 
		"nutmegRN.placeHolderList[400]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.lean" 
		"nutmegRN.placeHolderList[401]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.toe_lift" 
		"nutmegRN.placeHolderList[402]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.balltoe_lift" 
		"nutmegRN.placeHolderList[403]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.side_to_side" 
		"nutmegRN.placeHolderList[404]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.heel_to_toe" 
		"nutmegRN.placeHolderList[405]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.stretch" 
		"nutmegRN.placeHolderList[406]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.soft_IK" 
		"nutmegRN.placeHolderList[407]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim.parent_to" 
		"nutmegRN.placeHolderList[408]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_quad_IK_null|nutmeg:right_leg_quad_IK_vis_null|nutmeg:right_leg_quad_IK_anim.rotateX" 
		"nutmegRN.placeHolderList[409]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_quad_IK_null|nutmeg:right_leg_quad_IK_vis_null|nutmeg:right_leg_quad_IK_anim.rotateY" 
		"nutmegRN.placeHolderList[410]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_quad_IK_null|nutmeg:right_leg_quad_IK_vis_null|nutmeg:right_leg_quad_IK_anim.rotateZ" 
		"nutmegRN.placeHolderList[411]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[412]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim.rotateY" 
		"nutmegRN.placeHolderList[413]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim.rotateZ" 
		"nutmegRN.placeHolderList[414]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[415]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[416]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[417]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim.rotateY" 
		"nutmegRN.placeHolderList[418]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim.rotateZ" 
		"nutmegRN.placeHolderList[419]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_center_pivot_null|nutmeg:right_leg_center_pivot_vis_null|nutmeg:right_leg_center_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[420]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_center_pivot_null|nutmeg:right_leg_center_pivot_vis_null|nutmeg:right_leg_center_pivot_anim.rotateY" 
		"nutmegRN.placeHolderList[421]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_center_pivot_null|nutmeg:right_leg_center_pivot_vis_null|nutmeg:right_leg_center_pivot_anim.rotateZ" 
		"nutmegRN.placeHolderList[422]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_digit_pivot_null|nutmeg:right_leg_digit_pivot_vis_null|nutmeg:right_leg_digit_pivot_anim.rotateX" 
		"nutmegRN.placeHolderList[423]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_digit_pivot_null|nutmeg:right_leg_digit_pivot_vis_null|nutmeg:right_leg_digit_pivot_anim.rotateY" 
		"nutmegRN.placeHolderList[424]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_IK_null|nutmeg:right_leg_IK_multicon_null|nutmeg:right_leg_IK_vis_null|nutmeg:right_leg_IK_anim|nutmeg:right_leg_foot_roll_grp|nutmeg:right_leg_IK_roll_grp|nutmeg:right_leg_back_pivot_null|nutmeg:right_leg_back_pivot_vis_null|nutmeg:right_leg_back_pivot_anim|nutmeg:right_leg_inner_pivot_null|nutmeg:right_leg_inner_pivot_vis_null|nutmeg:right_leg_inner_pivot_anim|nutmeg:right_leg_outer_pivot_null|nutmeg:right_leg_outer_pivot_vis_null|nutmeg:right_leg_outer_pivot_anim|nutmeg:right_leg_front_pivot_null|nutmeg:right_leg_front_pivot_vis_null|nutmeg:right_leg_front_pivot_anim|nutmeg:right_leg_digit_pivot_null|nutmeg:right_leg_digit_pivot_vis_null|nutmeg:right_leg_digit_pivot_anim.rotateZ" 
		"nutmegRN.placeHolderList[425]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.FK_mode" 
		"nutmegRN.placeHolderList[426]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.translateX" 
		"nutmegRN.placeHolderList[427]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.translateY" 
		"nutmegRN.placeHolderList[428]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.translateZ" 
		"nutmegRN.placeHolderList[429]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.rotateZ" 
		"nutmegRN.placeHolderList[430]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.rotateX" 
		"nutmegRN.placeHolderList[431]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.rotateY" 
		"nutmegRN.placeHolderList[432]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.pole_vector_lock" 
		"nutmegRN.placeHolderList[433]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_leg_component_grp|nutmeg:anim_grp|nutmeg:IK_anim_grp|nutmeg:right_leg_PV_null|nutmeg:right_leg_PV_position_null|nutmeg:right_leg_PV_multicon_null|nutmeg:right_leg_PV_vis_null|nutmeg:right_leg_PV_anim.parent_to" 
		"nutmegRN.placeHolderList[434]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_1_null|nutmeg:right_wing_flap_1_translate_null|nutmeg:right_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_1_vis_null|nutmeg:right_wing_flap_1_anim.translateX" 
		"nutmegRN.placeHolderList[435]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_1_null|nutmeg:right_wing_flap_1_translate_null|nutmeg:right_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_1_vis_null|nutmeg:right_wing_flap_1_anim.translateY" 
		"nutmegRN.placeHolderList[436]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_1_null|nutmeg:right_wing_flap_1_translate_null|nutmeg:right_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_1_vis_null|nutmeg:right_wing_flap_1_anim.translateZ" 
		"nutmegRN.placeHolderList[437]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_1_null|nutmeg:right_wing_flap_1_translate_null|nutmeg:right_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_1_vis_null|nutmeg:right_wing_flap_1_anim.rotateX" 
		"nutmegRN.placeHolderList[438]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_1_null|nutmeg:right_wing_flap_1_translate_null|nutmeg:right_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_1_vis_null|nutmeg:right_wing_flap_1_anim.rotateY" 
		"nutmegRN.placeHolderList[439]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_1_null|nutmeg:right_wing_flap_1_translate_null|nutmeg:right_wing_flap_1_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_1_vis_null|nutmeg:right_wing_flap_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[440]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_2_null|nutmeg:right_wing_flap_2_translate_null|nutmeg:right_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_2_vis_null|nutmeg:right_wing_flap_2_anim.translateX" 
		"nutmegRN.placeHolderList[441]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_2_null|nutmeg:right_wing_flap_2_translate_null|nutmeg:right_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_2_vis_null|nutmeg:right_wing_flap_2_anim.translateY" 
		"nutmegRN.placeHolderList[442]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_2_null|nutmeg:right_wing_flap_2_translate_null|nutmeg:right_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_2_vis_null|nutmeg:right_wing_flap_2_anim.translateZ" 
		"nutmegRN.placeHolderList[443]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_2_null|nutmeg:right_wing_flap_2_translate_null|nutmeg:right_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_2_vis_null|nutmeg:right_wing_flap_2_anim.rotateX" 
		"nutmegRN.placeHolderList[444]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_2_null|nutmeg:right_wing_flap_2_translate_null|nutmeg:right_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_2_vis_null|nutmeg:right_wing_flap_2_anim.rotateY" 
		"nutmegRN.placeHolderList[445]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_2_null|nutmeg:right_wing_flap_2_translate_null|nutmeg:right_wing_flap_2_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_2_vis_null|nutmeg:right_wing_flap_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[446]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_3_null|nutmeg:right_wing_flap_3_translate_null|nutmeg:right_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_3_vis_null|nutmeg:right_wing_flap_3_anim.translateX" 
		"nutmegRN.placeHolderList[447]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_3_null|nutmeg:right_wing_flap_3_translate_null|nutmeg:right_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_3_vis_null|nutmeg:right_wing_flap_3_anim.translateY" 
		"nutmegRN.placeHolderList[448]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_3_null|nutmeg:right_wing_flap_3_translate_null|nutmeg:right_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_3_vis_null|nutmeg:right_wing_flap_3_anim.translateZ" 
		"nutmegRN.placeHolderList[449]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_3_null|nutmeg:right_wing_flap_3_translate_null|nutmeg:right_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_3_vis_null|nutmeg:right_wing_flap_3_anim.rotateX" 
		"nutmegRN.placeHolderList[450]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_3_null|nutmeg:right_wing_flap_3_translate_null|nutmeg:right_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_3_vis_null|nutmeg:right_wing_flap_3_anim.rotateY" 
		"nutmegRN.placeHolderList[451]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_3_null|nutmeg:right_wing_flap_3_translate_null|nutmeg:right_wing_flap_3_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_3_vis_null|nutmeg:right_wing_flap_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[452]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_4_null|nutmeg:right_wing_flap_4_translate_null|nutmeg:right_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_4_vis_null|nutmeg:right_wing_flap_4_anim.translateX" 
		"nutmegRN.placeHolderList[453]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_4_null|nutmeg:right_wing_flap_4_translate_null|nutmeg:right_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_4_vis_null|nutmeg:right_wing_flap_4_anim.translateY" 
		"nutmegRN.placeHolderList[454]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_4_null|nutmeg:right_wing_flap_4_translate_null|nutmeg:right_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_4_vis_null|nutmeg:right_wing_flap_4_anim.translateZ" 
		"nutmegRN.placeHolderList[455]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_4_null|nutmeg:right_wing_flap_4_translate_null|nutmeg:right_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_4_vis_null|nutmeg:right_wing_flap_4_anim.rotateX" 
		"nutmegRN.placeHolderList[456]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_4_null|nutmeg:right_wing_flap_4_translate_null|nutmeg:right_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_4_vis_null|nutmeg:right_wing_flap_4_anim.rotateY" 
		"nutmegRN.placeHolderList[457]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_4_null|nutmeg:right_wing_flap_4_translate_null|nutmeg:right_wing_flap_4_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_4_vis_null|nutmeg:right_wing_flap_4_anim.rotateZ" 
		"nutmegRN.placeHolderList[458]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_5_null|nutmeg:right_wing_flap_5_translate_null|nutmeg:right_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_5_vis_null|nutmeg:right_wing_flap_5_anim.translateX" 
		"nutmegRN.placeHolderList[459]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_5_null|nutmeg:right_wing_flap_5_translate_null|nutmeg:right_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_5_vis_null|nutmeg:right_wing_flap_5_anim.translateY" 
		"nutmegRN.placeHolderList[460]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_5_null|nutmeg:right_wing_flap_5_translate_null|nutmeg:right_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_5_vis_null|nutmeg:right_wing_flap_5_anim.translateZ" 
		"nutmegRN.placeHolderList[461]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_5_null|nutmeg:right_wing_flap_5_translate_null|nutmeg:right_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_5_vis_null|nutmeg:right_wing_flap_5_anim.rotateX" 
		"nutmegRN.placeHolderList[462]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_5_null|nutmeg:right_wing_flap_5_translate_null|nutmeg:right_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_5_vis_null|nutmeg:right_wing_flap_5_anim.rotateY" 
		"nutmegRN.placeHolderList[463]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_wing_flap_component_grp|nutmeg:right_wing_flap_anim_grp|nutmeg:right_wing_flap_5_null|nutmeg:right_wing_flap_5_translate_null|nutmeg:right_wing_flap_5_anim_wing_retract_SDK_null|nutmeg:right_wing_flap_5_vis_null|nutmeg:right_wing_flap_5_anim.rotateZ" 
		"nutmegRN.placeHolderList[464]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_metacarpal_component_grp|nutmeg:right_index_metacarpal_anim_grp|nutmeg:right_index_metacarpal_null|nutmeg:right_index_metacarpal_vis_null|nutmeg:right_index_metacarpal_anim.rotateX" 
		"nutmegRN.placeHolderList[465]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_metacarpal_component_grp|nutmeg:right_index_metacarpal_anim_grp|nutmeg:right_index_metacarpal_null|nutmeg:right_index_metacarpal_vis_null|nutmeg:right_index_metacarpal_anim.rotateY" 
		"nutmegRN.placeHolderList[466]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_metacarpal_component_grp|nutmeg:right_index_metacarpal_anim_grp|nutmeg:right_index_metacarpal_null|nutmeg:right_index_metacarpal_vis_null|nutmeg:right_index_metacarpal_anim.rotateZ" 
		"nutmegRN.placeHolderList[467]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim.rotateX" 
		"nutmegRN.placeHolderList[468]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim.rotateY" 
		"nutmegRN.placeHolderList[469]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[470]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim.rotateX" 
		"nutmegRN.placeHolderList[471]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim.rotateY" 
		"nutmegRN.placeHolderList[472]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[473]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim|nutmeg:right_index_3_null|nutmeg:right_index_3_vis_null|nutmeg:right_index_3_anim.rotateX" 
		"nutmegRN.placeHolderList[474]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim|nutmeg:right_index_3_null|nutmeg:right_index_3_vis_null|nutmeg:right_index_3_anim.rotateY" 
		"nutmegRN.placeHolderList[475]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_index_component_grp|nutmeg:right_index_anim_grp|nutmeg:right_index_1_null|nutmeg:right_index_1_vis_null|nutmeg:right_index_1_anim|nutmeg:right_index_2_null|nutmeg:right_index_2_vis_null|nutmeg:right_index_2_anim|nutmeg:right_index_3_null|nutmeg:right_index_3_vis_null|nutmeg:right_index_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[476]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_metacarpal_component_grp|nutmeg:right_middle_metacarpal_anim_grp|nutmeg:right_middle_metacarpal_null|nutmeg:right_middle_metacarpal_vis_null|nutmeg:right_middle_metacarpal_anim.rotateX" 
		"nutmegRN.placeHolderList[477]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_metacarpal_component_grp|nutmeg:right_middle_metacarpal_anim_grp|nutmeg:right_middle_metacarpal_null|nutmeg:right_middle_metacarpal_vis_null|nutmeg:right_middle_metacarpal_anim.rotateY" 
		"nutmegRN.placeHolderList[478]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_metacarpal_component_grp|nutmeg:right_middle_metacarpal_anim_grp|nutmeg:right_middle_metacarpal_null|nutmeg:right_middle_metacarpal_vis_null|nutmeg:right_middle_metacarpal_anim.rotateZ" 
		"nutmegRN.placeHolderList[479]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim.rotateX" 
		"nutmegRN.placeHolderList[480]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim.rotateY" 
		"nutmegRN.placeHolderList[481]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[482]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim.rotateX" 
		"nutmegRN.placeHolderList[483]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim.rotateY" 
		"nutmegRN.placeHolderList[484]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[485]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim|nutmeg:right_middle_3_null|nutmeg:right_middle_3_vis_null|nutmeg:right_middle_3_anim.rotateX" 
		"nutmegRN.placeHolderList[486]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim|nutmeg:right_middle_3_null|nutmeg:right_middle_3_vis_null|nutmeg:right_middle_3_anim.rotateY" 
		"nutmegRN.placeHolderList[487]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_middle_component_grp|nutmeg:right_middle_anim_grp|nutmeg:right_middle_1_null|nutmeg:right_middle_1_vis_null|nutmeg:right_middle_1_anim|nutmeg:right_middle_2_null|nutmeg:right_middle_2_vis_null|nutmeg:right_middle_2_anim|nutmeg:right_middle_3_null|nutmeg:right_middle_3_vis_null|nutmeg:right_middle_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[488]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_metacarpal_component_grp|nutmeg:right_pinky_metacarpal_anim_grp|nutmeg:right_pinky_metacarpal_null|nutmeg:right_pinky_metacarpal_vis_null|nutmeg:right_pinky_metacarpal_anim.rotateX" 
		"nutmegRN.placeHolderList[489]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_metacarpal_component_grp|nutmeg:right_pinky_metacarpal_anim_grp|nutmeg:right_pinky_metacarpal_null|nutmeg:right_pinky_metacarpal_vis_null|nutmeg:right_pinky_metacarpal_anim.rotateY" 
		"nutmegRN.placeHolderList[490]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_metacarpal_component_grp|nutmeg:right_pinky_metacarpal_anim_grp|nutmeg:right_pinky_metacarpal_null|nutmeg:right_pinky_metacarpal_vis_null|nutmeg:right_pinky_metacarpal_anim.rotateZ" 
		"nutmegRN.placeHolderList[491]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim.rotateX" 
		"nutmegRN.placeHolderList[492]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim.rotateY" 
		"nutmegRN.placeHolderList[493]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[494]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim.rotateX" 
		"nutmegRN.placeHolderList[495]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim.rotateY" 
		"nutmegRN.placeHolderList[496]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[497]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim|nutmeg:right_pinky_3_null|nutmeg:right_pinky_3_vis_null|nutmeg:right_pinky_3_anim.rotateX" 
		"nutmegRN.placeHolderList[498]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim|nutmeg:right_pinky_3_null|nutmeg:right_pinky_3_vis_null|nutmeg:right_pinky_3_anim.rotateY" 
		"nutmegRN.placeHolderList[499]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_pinky_component_grp|nutmeg:right_pinky_anim_grp|nutmeg:right_pinky_1_null|nutmeg:right_pinky_1_vis_null|nutmeg:right_pinky_1_anim|nutmeg:right_pinky_2_null|nutmeg:right_pinky_2_vis_null|nutmeg:right_pinky_2_anim|nutmeg:right_pinky_3_null|nutmeg:right_pinky_3_vis_null|nutmeg:right_pinky_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[500]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim.rotateX" 
		"nutmegRN.placeHolderList[501]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim.rotateY" 
		"nutmegRN.placeHolderList[502]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[503]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_2_null|nutmeg:right_thumb_2_vis_null|nutmeg:right_thumb_2_anim.rotateX" 
		"nutmegRN.placeHolderList[504]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_2_null|nutmeg:right_thumb_2_vis_null|nutmeg:right_thumb_2_anim.rotateY" 
		"nutmegRN.placeHolderList[505]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_2_null|nutmeg:right_thumb_2_vis_null|nutmeg:right_thumb_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[506]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_2_null|nutmeg:right_thumb_2_vis_null|nutmeg:right_thumb_2_anim|nutmeg:right_thumb_3_null|nutmeg:right_thumb_3_vis_null|nutmeg:right_thumb_3_anim.rotateX" 
		"nutmegRN.placeHolderList[507]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_2_null|nutmeg:right_thumb_2_vis_null|nutmeg:right_thumb_2_anim|nutmeg:right_thumb_3_null|nutmeg:right_thumb_3_vis_null|nutmeg:right_thumb_3_anim.rotateY" 
		"nutmegRN.placeHolderList[508]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_thumb_component_grp|nutmeg:right_thumb_anim_grp|nutmeg:right_thumb_1_null|nutmeg:right_thumb_1_vis_null|nutmeg:right_thumb_1_anim|nutmeg:right_thumb_2_null|nutmeg:right_thumb_2_vis_null|nutmeg:right_thumb_2_anim|nutmeg:right_thumb_3_null|nutmeg:right_thumb_3_vis_null|nutmeg:right_thumb_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[509]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_uppercheek_tuft_component_grp|nutmeg:right_uppercheek_tuft_anim_grp|nutmeg:right_uppercheek_tuft_1_null|nutmeg:right_uppercheek_tuft_1_vis_null|nutmeg:right_uppercheek_tuft_1_anim.rotateX" 
		"nutmegRN.placeHolderList[510]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_uppercheek_tuft_component_grp|nutmeg:right_uppercheek_tuft_anim_grp|nutmeg:right_uppercheek_tuft_1_null|nutmeg:right_uppercheek_tuft_1_vis_null|nutmeg:right_uppercheek_tuft_1_anim.rotateY" 
		"nutmegRN.placeHolderList[511]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_uppercheek_tuft_component_grp|nutmeg:right_uppercheek_tuft_anim_grp|nutmeg:right_uppercheek_tuft_1_null|nutmeg:right_uppercheek_tuft_1_vis_null|nutmeg:right_uppercheek_tuft_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[512]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_uppercheek_tuft_component_grp|nutmeg:right_uppercheek_tuft_anim_grp|nutmeg:right_uppercheek_tuft_1_null|nutmeg:right_uppercheek_tuft_1_vis_null|nutmeg:right_uppercheek_tuft_1_anim|nutmeg:right_uppercheek_tuft_2_null|nutmeg:right_uppercheek_tuft_2_vis_null|nutmeg:right_uppercheek_tuft_2_anim.rotateX" 
		"nutmegRN.placeHolderList[513]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_uppercheek_tuft_component_grp|nutmeg:right_uppercheek_tuft_anim_grp|nutmeg:right_uppercheek_tuft_1_null|nutmeg:right_uppercheek_tuft_1_vis_null|nutmeg:right_uppercheek_tuft_1_anim|nutmeg:right_uppercheek_tuft_2_null|nutmeg:right_uppercheek_tuft_2_vis_null|nutmeg:right_uppercheek_tuft_2_anim.rotateY" 
		"nutmegRN.placeHolderList[514]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_uppercheek_tuft_component_grp|nutmeg:right_uppercheek_tuft_anim_grp|nutmeg:right_uppercheek_tuft_1_null|nutmeg:right_uppercheek_tuft_1_vis_null|nutmeg:right_uppercheek_tuft_1_anim|nutmeg:right_uppercheek_tuft_2_null|nutmeg:right_uppercheek_tuft_2_vis_null|nutmeg:right_uppercheek_tuft_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[515]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_lowercheek_tuft_component_grp|nutmeg:right_lowercheek_tuft_anim_grp|nutmeg:right_lowercheek_tuft_null|nutmeg:right_lowercheek_tuft_vis_null|nutmeg:right_lowercheek_tuft_anim.rotateX" 
		"nutmegRN.placeHolderList[516]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_lowercheek_tuft_component_grp|nutmeg:right_lowercheek_tuft_anim_grp|nutmeg:right_lowercheek_tuft_null|nutmeg:right_lowercheek_tuft_vis_null|nutmeg:right_lowercheek_tuft_anim.rotateY" 
		"nutmegRN.placeHolderList[517]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_lowercheek_tuft_component_grp|nutmeg:right_lowercheek_tuft_anim_grp|nutmeg:right_lowercheek_tuft_null|nutmeg:right_lowercheek_tuft_vis_null|nutmeg:right_lowercheek_tuft_anim.rotateZ" 
		"nutmegRN.placeHolderList[518]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_ear_component_grp|nutmeg:left_ear_anim_grp|nutmeg:left_ear_1_null|nutmeg:left_ear_1_anim_ear_tuck_SDK_null|nutmeg:left_ear_1_vis_null|nutmeg:left_ear_1_anim.rotateX" 
		"nutmegRN.placeHolderList[519]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_ear_component_grp|nutmeg:left_ear_anim_grp|nutmeg:left_ear_1_null|nutmeg:left_ear_1_anim_ear_tuck_SDK_null|nutmeg:left_ear_1_vis_null|nutmeg:left_ear_1_anim.rotateY" 
		"nutmegRN.placeHolderList[520]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_ear_component_grp|nutmeg:left_ear_anim_grp|nutmeg:left_ear_1_null|nutmeg:left_ear_1_anim_ear_tuck_SDK_null|nutmeg:left_ear_1_vis_null|nutmeg:left_ear_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[521]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_ear_component_grp|nutmeg:left_ear_anim_grp|nutmeg:left_ear_1_null|nutmeg:left_ear_1_anim_ear_tuck_SDK_null|nutmeg:left_ear_1_vis_null|nutmeg:left_ear_1_anim|nutmeg:left_ear_2_null|nutmeg:left_ear_2_anim_ear_tuck_SDK_null|nutmeg:left_ear_2_vis_null|nutmeg:left_ear_2_anim.rotateX" 
		"nutmegRN.placeHolderList[522]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_ear_component_grp|nutmeg:left_ear_anim_grp|nutmeg:left_ear_1_null|nutmeg:left_ear_1_anim_ear_tuck_SDK_null|nutmeg:left_ear_1_vis_null|nutmeg:left_ear_1_anim|nutmeg:left_ear_2_null|nutmeg:left_ear_2_anim_ear_tuck_SDK_null|nutmeg:left_ear_2_vis_null|nutmeg:left_ear_2_anim.rotateY" 
		"nutmegRN.placeHolderList[523]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:left_ear_component_grp|nutmeg:left_ear_anim_grp|nutmeg:left_ear_1_null|nutmeg:left_ear_1_anim_ear_tuck_SDK_null|nutmeg:left_ear_1_vis_null|nutmeg:left_ear_1_anim|nutmeg:left_ear_2_null|nutmeg:left_ear_2_anim_ear_tuck_SDK_null|nutmeg:left_ear_2_vis_null|nutmeg:left_ear_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[524]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_ear_component_grp|nutmeg:right_ear_anim_grp|nutmeg:right_ear_1_null|nutmeg:right_ear_1_anim_ear_tuck_SDK_null|nutmeg:right_ear_1_vis_null|nutmeg:right_ear_1_anim.rotateX" 
		"nutmegRN.placeHolderList[525]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_ear_component_grp|nutmeg:right_ear_anim_grp|nutmeg:right_ear_1_null|nutmeg:right_ear_1_anim_ear_tuck_SDK_null|nutmeg:right_ear_1_vis_null|nutmeg:right_ear_1_anim.rotateY" 
		"nutmegRN.placeHolderList[526]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_ear_component_grp|nutmeg:right_ear_anim_grp|nutmeg:right_ear_1_null|nutmeg:right_ear_1_anim_ear_tuck_SDK_null|nutmeg:right_ear_1_vis_null|nutmeg:right_ear_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[527]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_ear_component_grp|nutmeg:right_ear_anim_grp|nutmeg:right_ear_1_null|nutmeg:right_ear_1_anim_ear_tuck_SDK_null|nutmeg:right_ear_1_vis_null|nutmeg:right_ear_1_anim|nutmeg:right_ear_2_null|nutmeg:right_ear_2_anim_ear_tuck_SDK_null|nutmeg:right_ear_2_vis_null|nutmeg:right_ear_2_anim.rotateX" 
		"nutmegRN.placeHolderList[528]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_ear_component_grp|nutmeg:right_ear_anim_grp|nutmeg:right_ear_1_null|nutmeg:right_ear_1_anim_ear_tuck_SDK_null|nutmeg:right_ear_1_vis_null|nutmeg:right_ear_1_anim|nutmeg:right_ear_2_null|nutmeg:right_ear_2_anim_ear_tuck_SDK_null|nutmeg:right_ear_2_vis_null|nutmeg:right_ear_2_anim.rotateY" 
		"nutmegRN.placeHolderList[529]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:right_ear_component_grp|nutmeg:right_ear_anim_grp|nutmeg:right_ear_1_null|nutmeg:right_ear_1_anim_ear_tuck_SDK_null|nutmeg:right_ear_1_vis_null|nutmeg:right_ear_1_anim|nutmeg:right_ear_2_null|nutmeg:right_ear_2_anim_ear_tuck_SDK_null|nutmeg:right_ear_2_vis_null|nutmeg:right_ear_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[530]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_brow_component_grp|nutmeg:center_brow_anim_grp|nutmeg:center_brow_null|nutmeg:center_brow_vis_null|nutmeg:center_brow_anim.translateX" 
		"nutmegRN.placeHolderList[531]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_brow_component_grp|nutmeg:center_brow_anim_grp|nutmeg:center_brow_null|nutmeg:center_brow_vis_null|nutmeg:center_brow_anim.translateY" 
		"nutmegRN.placeHolderList[532]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_brow_component_grp|nutmeg:center_brow_anim_grp|nutmeg:center_brow_null|nutmeg:center_brow_vis_null|nutmeg:center_brow_anim.translateZ" 
		"nutmegRN.placeHolderList[533]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_brow_component_grp|nutmeg:center_brow_anim_grp|nutmeg:center_brow_null|nutmeg:center_brow_vis_null|nutmeg:center_brow_anim.rotateX" 
		"nutmegRN.placeHolderList[534]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_brow_component_grp|nutmeg:center_brow_anim_grp|nutmeg:center_brow_null|nutmeg:center_brow_vis_null|nutmeg:center_brow_anim.rotateY" 
		"nutmegRN.placeHolderList[535]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:component_grp|nutmeg:center_brow_component_grp|nutmeg:center_brow_anim_grp|nutmeg:center_brow_null|nutmeg:center_brow_vis_null|nutmeg:center_brow_anim.rotateZ" 
		"nutmegRN.placeHolderList[536]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_nose_component_grp|nutmeg:center_nose_anim_grp|nutmeg:center_nose_null|nutmeg:center_nose_vis_null|nutmeg:center_nose_anim.rotateX" 
		"nutmegRN.placeHolderList[537]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_nose_component_grp|nutmeg:center_nose_anim_grp|nutmeg:center_nose_null|nutmeg:center_nose_vis_null|nutmeg:center_nose_anim.rotateY" 
		"nutmegRN.placeHolderList[538]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_nose_component_grp|nutmeg:center_nose_anim_grp|nutmeg:center_nose_null|nutmeg:center_nose_vis_null|nutmeg:center_nose_anim.rotateZ" 
		"nutmegRN.placeHolderList[539]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_jaw_component_grp|nutmeg:center_jaw_anim_grp|nutmeg:center_jaw_null|nutmeg:center_jaw_vis_null|nutmeg:center_jaw_anim.rotateX" 
		"nutmegRN.placeHolderList[540]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_jaw_component_grp|nutmeg:center_jaw_anim_grp|nutmeg:center_jaw_null|nutmeg:center_jaw_vis_null|nutmeg:center_jaw_anim.rotateY" 
		"nutmegRN.placeHolderList[541]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_jaw_component_grp|nutmeg:center_jaw_anim_grp|nutmeg:center_jaw_null|nutmeg:center_jaw_vis_null|nutmeg:center_jaw_anim.rotateZ" 
		"nutmegRN.placeHolderList[542]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurbs_grp|nutmeg:center_mouth_upper_lip_nurb.visibility" 
		"nutmegRN.placeHolderList[543]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurbs_grp|nutmeg:center_mouth_upper_lip_nurb|nutmeg:center_mouth_upper_lip_nurbShape.create" 
		"nutmegRN.placeHolderList[544]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurbs_grp|nutmeg:center_mouth_lower_lip_nurb.visibility" 
		"nutmegRN.placeHolderList[545]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:DO_NOT_TOUCH|nutmeg:nurbs_grp|nutmeg:center_mouth_lower_lip_nurb|nutmeg:center_mouth_lower_lip_nurbShape.create" 
		"nutmegRN.placeHolderList[546]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_corner_null|nutmeg:center_mouth_upper_right_corner_vis_null|nutmeg:center_mouth_upper_right_corner_anim.translateX" 
		"nutmegRN.placeHolderList[547]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_corner_null|nutmeg:center_mouth_upper_right_corner_vis_null|nutmeg:center_mouth_upper_right_corner_anim.translateY" 
		"nutmegRN.placeHolderList[548]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_corner_null|nutmeg:center_mouth_upper_right_corner_vis_null|nutmeg:center_mouth_upper_right_corner_anim.translateZ" 
		"nutmegRN.placeHolderList[549]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_corner_null|nutmeg:center_mouth_upper_right_corner_vis_null|nutmeg:center_mouth_upper_right_corner_anim.rotateX" 
		"nutmegRN.placeHolderList[550]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_corner_null|nutmeg:center_mouth_upper_right_corner_vis_null|nutmeg:center_mouth_upper_right_corner_anim.rotateY" 
		"nutmegRN.placeHolderList[551]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_corner_null|nutmeg:center_mouth_upper_right_corner_vis_null|nutmeg:center_mouth_upper_right_corner_anim.rotateZ" 
		"nutmegRN.placeHolderList[552]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_null|nutmeg:center_mouth_upper_right_vis_null|nutmeg:center_mouth_upper_right_anim.translateX" 
		"nutmegRN.placeHolderList[553]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_null|nutmeg:center_mouth_upper_right_vis_null|nutmeg:center_mouth_upper_right_anim.translateY" 
		"nutmegRN.placeHolderList[554]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_null|nutmeg:center_mouth_upper_right_vis_null|nutmeg:center_mouth_upper_right_anim.translateZ" 
		"nutmegRN.placeHolderList[555]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_null|nutmeg:center_mouth_upper_right_vis_null|nutmeg:center_mouth_upper_right_anim.rotateX" 
		"nutmegRN.placeHolderList[556]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_null|nutmeg:center_mouth_upper_right_vis_null|nutmeg:center_mouth_upper_right_anim.rotateY" 
		"nutmegRN.placeHolderList[557]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_right_null|nutmeg:center_mouth_upper_right_vis_null|nutmeg:center_mouth_upper_right_anim.rotateZ" 
		"nutmegRN.placeHolderList[558]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_middle_null|nutmeg:center_mouth_upper_middle_vis_null|nutmeg:center_mouth_upper_middle_anim.translateX" 
		"nutmegRN.placeHolderList[559]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_middle_null|nutmeg:center_mouth_upper_middle_vis_null|nutmeg:center_mouth_upper_middle_anim.translateY" 
		"nutmegRN.placeHolderList[560]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_middle_null|nutmeg:center_mouth_upper_middle_vis_null|nutmeg:center_mouth_upper_middle_anim.translateZ" 
		"nutmegRN.placeHolderList[561]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_middle_null|nutmeg:center_mouth_upper_middle_vis_null|nutmeg:center_mouth_upper_middle_anim.rotateX" 
		"nutmegRN.placeHolderList[562]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_middle_null|nutmeg:center_mouth_upper_middle_vis_null|nutmeg:center_mouth_upper_middle_anim.rotateY" 
		"nutmegRN.placeHolderList[563]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_middle_null|nutmeg:center_mouth_upper_middle_vis_null|nutmeg:center_mouth_upper_middle_anim.rotateZ" 
		"nutmegRN.placeHolderList[564]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_null|nutmeg:center_mouth_upper_left_vis_null|nutmeg:center_mouth_upper_left_anim.translateX" 
		"nutmegRN.placeHolderList[565]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_null|nutmeg:center_mouth_upper_left_vis_null|nutmeg:center_mouth_upper_left_anim.translateY" 
		"nutmegRN.placeHolderList[566]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_null|nutmeg:center_mouth_upper_left_vis_null|nutmeg:center_mouth_upper_left_anim.translateZ" 
		"nutmegRN.placeHolderList[567]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_null|nutmeg:center_mouth_upper_left_vis_null|nutmeg:center_mouth_upper_left_anim.rotateX" 
		"nutmegRN.placeHolderList[568]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_null|nutmeg:center_mouth_upper_left_vis_null|nutmeg:center_mouth_upper_left_anim.rotateY" 
		"nutmegRN.placeHolderList[569]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_null|nutmeg:center_mouth_upper_left_vis_null|nutmeg:center_mouth_upper_left_anim.rotateZ" 
		"nutmegRN.placeHolderList[570]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_corner_null|nutmeg:center_mouth_upper_left_corner_vis_null|nutmeg:center_mouth_upper_left_corner_anim.translateX" 
		"nutmegRN.placeHolderList[571]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_corner_null|nutmeg:center_mouth_upper_left_corner_vis_null|nutmeg:center_mouth_upper_left_corner_anim.translateY" 
		"nutmegRN.placeHolderList[572]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_corner_null|nutmeg:center_mouth_upper_left_corner_vis_null|nutmeg:center_mouth_upper_left_corner_anim.translateZ" 
		"nutmegRN.placeHolderList[573]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_corner_null|nutmeg:center_mouth_upper_left_corner_vis_null|nutmeg:center_mouth_upper_left_corner_anim.rotateX" 
		"nutmegRN.placeHolderList[574]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_corner_null|nutmeg:center_mouth_upper_left_corner_vis_null|nutmeg:center_mouth_upper_left_corner_anim.rotateY" 
		"nutmegRN.placeHolderList[575]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_upper_left_corner_null|nutmeg:center_mouth_upper_left_corner_vis_null|nutmeg:center_mouth_upper_left_corner_anim.rotateZ" 
		"nutmegRN.placeHolderList[576]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_right_null|nutmeg:center_mouth_right_vis_null|nutmeg:center_mouth_right_anim.translateX" 
		"nutmegRN.placeHolderList[577]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_right_null|nutmeg:center_mouth_right_vis_null|nutmeg:center_mouth_right_anim.translateY" 
		"nutmegRN.placeHolderList[578]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_right_null|nutmeg:center_mouth_right_vis_null|nutmeg:center_mouth_right_anim.translateZ" 
		"nutmegRN.placeHolderList[579]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_right_null|nutmeg:center_mouth_right_vis_null|nutmeg:center_mouth_right_anim.rotateX" 
		"nutmegRN.placeHolderList[580]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_right_null|nutmeg:center_mouth_right_vis_null|nutmeg:center_mouth_right_anim.rotateY" 
		"nutmegRN.placeHolderList[581]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_right_null|nutmeg:center_mouth_right_vis_null|nutmeg:center_mouth_right_anim.rotateZ" 
		"nutmegRN.placeHolderList[582]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_left_null|nutmeg:center_mouth_left_vis_null|nutmeg:center_mouth_left_anim.translateX" 
		"nutmegRN.placeHolderList[583]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_left_null|nutmeg:center_mouth_left_vis_null|nutmeg:center_mouth_left_anim.translateY" 
		"nutmegRN.placeHolderList[584]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_left_null|nutmeg:center_mouth_left_vis_null|nutmeg:center_mouth_left_anim.translateZ" 
		"nutmegRN.placeHolderList[585]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_left_null|nutmeg:center_mouth_left_vis_null|nutmeg:center_mouth_left_anim.rotateX" 
		"nutmegRN.placeHolderList[586]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_left_null|nutmeg:center_mouth_left_vis_null|nutmeg:center_mouth_left_anim.rotateY" 
		"nutmegRN.placeHolderList[587]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:center_mouth_upper_lip_null|nutmeg:center_mouth_upper_lip_vis_null|nutmeg:center_mouth_upper_lip_anim|nutmeg:center_mouth_left_null|nutmeg:center_mouth_left_vis_null|nutmeg:center_mouth_left_anim.rotateZ" 
		"nutmegRN.placeHolderList[588]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_corner_null|nutmeg:center_mouth_lower_right_corner_vis_null|nutmeg:center_mouth_lower_right_corner_anim.translateX" 
		"nutmegRN.placeHolderList[589]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_corner_null|nutmeg:center_mouth_lower_right_corner_vis_null|nutmeg:center_mouth_lower_right_corner_anim.translateY" 
		"nutmegRN.placeHolderList[590]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_corner_null|nutmeg:center_mouth_lower_right_corner_vis_null|nutmeg:center_mouth_lower_right_corner_anim.translateZ" 
		"nutmegRN.placeHolderList[591]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_corner_null|nutmeg:center_mouth_lower_right_corner_vis_null|nutmeg:center_mouth_lower_right_corner_anim.rotateX" 
		"nutmegRN.placeHolderList[592]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_corner_null|nutmeg:center_mouth_lower_right_corner_vis_null|nutmeg:center_mouth_lower_right_corner_anim.rotateY" 
		"nutmegRN.placeHolderList[593]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_corner_null|nutmeg:center_mouth_lower_right_corner_vis_null|nutmeg:center_mouth_lower_right_corner_anim.rotateZ" 
		"nutmegRN.placeHolderList[594]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_null|nutmeg:center_mouth_lower_right_vis_null|nutmeg:center_mouth_lower_right_anim.translateX" 
		"nutmegRN.placeHolderList[595]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_null|nutmeg:center_mouth_lower_right_vis_null|nutmeg:center_mouth_lower_right_anim.translateY" 
		"nutmegRN.placeHolderList[596]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_null|nutmeg:center_mouth_lower_right_vis_null|nutmeg:center_mouth_lower_right_anim.translateZ" 
		"nutmegRN.placeHolderList[597]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_null|nutmeg:center_mouth_lower_right_vis_null|nutmeg:center_mouth_lower_right_anim.rotateX" 
		"nutmegRN.placeHolderList[598]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_null|nutmeg:center_mouth_lower_right_vis_null|nutmeg:center_mouth_lower_right_anim.rotateY" 
		"nutmegRN.placeHolderList[599]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_right_null|nutmeg:center_mouth_lower_right_vis_null|nutmeg:center_mouth_lower_right_anim.rotateZ" 
		"nutmegRN.placeHolderList[600]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_middle_null|nutmeg:center_mouth_lower_middle_vis_null|nutmeg:center_mouth_lower_middle_anim.translateX" 
		"nutmegRN.placeHolderList[601]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_middle_null|nutmeg:center_mouth_lower_middle_vis_null|nutmeg:center_mouth_lower_middle_anim.translateY" 
		"nutmegRN.placeHolderList[602]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_middle_null|nutmeg:center_mouth_lower_middle_vis_null|nutmeg:center_mouth_lower_middle_anim.translateZ" 
		"nutmegRN.placeHolderList[603]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_middle_null|nutmeg:center_mouth_lower_middle_vis_null|nutmeg:center_mouth_lower_middle_anim.rotateX" 
		"nutmegRN.placeHolderList[604]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_middle_null|nutmeg:center_mouth_lower_middle_vis_null|nutmeg:center_mouth_lower_middle_anim.rotateY" 
		"nutmegRN.placeHolderList[605]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_middle_null|nutmeg:center_mouth_lower_middle_vis_null|nutmeg:center_mouth_lower_middle_anim.rotateZ" 
		"nutmegRN.placeHolderList[606]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_null|nutmeg:center_mouth_lower_left_vis_null|nutmeg:center_mouth_lower_left_anim.translateX" 
		"nutmegRN.placeHolderList[607]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_null|nutmeg:center_mouth_lower_left_vis_null|nutmeg:center_mouth_lower_left_anim.translateY" 
		"nutmegRN.placeHolderList[608]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_null|nutmeg:center_mouth_lower_left_vis_null|nutmeg:center_mouth_lower_left_anim.translateZ" 
		"nutmegRN.placeHolderList[609]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_null|nutmeg:center_mouth_lower_left_vis_null|nutmeg:center_mouth_lower_left_anim.rotateX" 
		"nutmegRN.placeHolderList[610]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_null|nutmeg:center_mouth_lower_left_vis_null|nutmeg:center_mouth_lower_left_anim.rotateY" 
		"nutmegRN.placeHolderList[611]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_null|nutmeg:center_mouth_lower_left_vis_null|nutmeg:center_mouth_lower_left_anim.rotateZ" 
		"nutmegRN.placeHolderList[612]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_corner_null|nutmeg:center_mouth_lower_left_corner_vis_null|nutmeg:center_mouth_lower_left_corner_anim.translateX" 
		"nutmegRN.placeHolderList[613]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_corner_null|nutmeg:center_mouth_lower_left_corner_vis_null|nutmeg:center_mouth_lower_left_corner_anim.translateY" 
		"nutmegRN.placeHolderList[614]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_corner_null|nutmeg:center_mouth_lower_left_corner_vis_null|nutmeg:center_mouth_lower_left_corner_anim.translateZ" 
		"nutmegRN.placeHolderList[615]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_corner_null|nutmeg:center_mouth_lower_left_corner_vis_null|nutmeg:center_mouth_lower_left_corner_anim.rotateX" 
		"nutmegRN.placeHolderList[616]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_corner_null|nutmeg:center_mouth_lower_left_corner_vis_null|nutmeg:center_mouth_lower_left_corner_anim.rotateY" 
		"nutmegRN.placeHolderList[617]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:center_mouth_component_grp|nutmeg:anim_grp|nutmeg:primary_anim_grp|nutmeg:center_mouth_lip_main_null|nutmeg:center_mouth_lip_main_vis_null|nutmeg:center_mouth_lip_main_anim|nutmeg:jaw_anim_grp_rot_null|nutmeg:jaw_anim_grp_rot|nutmeg:jaw_anim_grp|nutmeg:center_mouth_lower_lip_null|nutmeg:center_mouth_lower_lip_vis_null|nutmeg:center_mouth_lower_lip_anim|nutmeg:center_mouth_lower_left_corner_null|nutmeg:center_mouth_lower_left_corner_vis_null|nutmeg:center_mouth_lower_left_corner_anim.rotateZ" 
		"nutmegRN.placeHolderList[618]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_eyebrow_component_grp|nutmeg:left_eyebrow_anim_grp|nutmeg:left_eyebrow_null|nutmeg:left_eyebrow_vis_null|nutmeg:left_eyebrow_anim.translateX" 
		"nutmegRN.placeHolderList[619]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_eyebrow_component_grp|nutmeg:left_eyebrow_anim_grp|nutmeg:left_eyebrow_null|nutmeg:left_eyebrow_vis_null|nutmeg:left_eyebrow_anim.translateY" 
		"nutmegRN.placeHolderList[620]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_eyebrow_component_grp|nutmeg:left_eyebrow_anim_grp|nutmeg:left_eyebrow_null|nutmeg:left_eyebrow_vis_null|nutmeg:left_eyebrow_anim.translateZ" 
		"nutmegRN.placeHolderList[621]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_eyebrow_component_grp|nutmeg:left_eyebrow_anim_grp|nutmeg:left_eyebrow_null|nutmeg:left_eyebrow_vis_null|nutmeg:left_eyebrow_anim.rotateX" 
		"nutmegRN.placeHolderList[622]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_eyebrow_component_grp|nutmeg:left_eyebrow_anim_grp|nutmeg:left_eyebrow_null|nutmeg:left_eyebrow_vis_null|nutmeg:left_eyebrow_anim.rotateY" 
		"nutmegRN.placeHolderList[623]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_eyebrow_component_grp|nutmeg:left_eyebrow_anim_grp|nutmeg:left_eyebrow_null|nutmeg:left_eyebrow_vis_null|nutmeg:left_eyebrow_anim.rotateZ" 
		"nutmegRN.placeHolderList[624]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_1_null|nutmeg:left_brow_1_vis_null|nutmeg:left_brow_1_anim.translateX" 
		"nutmegRN.placeHolderList[625]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_1_null|nutmeg:left_brow_1_vis_null|nutmeg:left_brow_1_anim.translateY" 
		"nutmegRN.placeHolderList[626]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_1_null|nutmeg:left_brow_1_vis_null|nutmeg:left_brow_1_anim.translateZ" 
		"nutmegRN.placeHolderList[627]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_1_null|nutmeg:left_brow_1_vis_null|nutmeg:left_brow_1_anim.rotateX" 
		"nutmegRN.placeHolderList[628]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_1_null|nutmeg:left_brow_1_vis_null|nutmeg:left_brow_1_anim.rotateY" 
		"nutmegRN.placeHolderList[629]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_1_null|nutmeg:left_brow_1_vis_null|nutmeg:left_brow_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[630]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_2_null|nutmeg:left_brow_2_vis_null|nutmeg:left_brow_2_anim.translateX" 
		"nutmegRN.placeHolderList[631]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_2_null|nutmeg:left_brow_2_vis_null|nutmeg:left_brow_2_anim.translateY" 
		"nutmegRN.placeHolderList[632]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_2_null|nutmeg:left_brow_2_vis_null|nutmeg:left_brow_2_anim.translateZ" 
		"nutmegRN.placeHolderList[633]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_2_null|nutmeg:left_brow_2_vis_null|nutmeg:left_brow_2_anim.rotateX" 
		"nutmegRN.placeHolderList[634]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_2_null|nutmeg:left_brow_2_vis_null|nutmeg:left_brow_2_anim.rotateY" 
		"nutmegRN.placeHolderList[635]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_2_null|nutmeg:left_brow_2_vis_null|nutmeg:left_brow_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[636]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_3_null|nutmeg:left_brow_3_vis_null|nutmeg:left_brow_3_anim.translateX" 
		"nutmegRN.placeHolderList[637]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_3_null|nutmeg:left_brow_3_vis_null|nutmeg:left_brow_3_anim.translateY" 
		"nutmegRN.placeHolderList[638]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_3_null|nutmeg:left_brow_3_vis_null|nutmeg:left_brow_3_anim.translateZ" 
		"nutmegRN.placeHolderList[639]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_3_null|nutmeg:left_brow_3_vis_null|nutmeg:left_brow_3_anim.rotateX" 
		"nutmegRN.placeHolderList[640]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_3_null|nutmeg:left_brow_3_vis_null|nutmeg:left_brow_3_anim.rotateY" 
		"nutmegRN.placeHolderList[641]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_brow_component_grp|nutmeg:left_brow_anim_grp|nutmeg:left_brow_3_null|nutmeg:left_brow_3_vis_null|nutmeg:left_brow_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[642]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_1_null|nutmeg:left_upper_eyelid_1_vis_null|nutmeg:left_upper_eyelid_1_anim.translateX" 
		"nutmegRN.placeHolderList[643]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_1_null|nutmeg:left_upper_eyelid_1_vis_null|nutmeg:left_upper_eyelid_1_anim.translateY" 
		"nutmegRN.placeHolderList[644]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_1_null|nutmeg:left_upper_eyelid_1_vis_null|nutmeg:left_upper_eyelid_1_anim.translateZ" 
		"nutmegRN.placeHolderList[645]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_1_null|nutmeg:left_upper_eyelid_1_vis_null|nutmeg:left_upper_eyelid_1_anim.rotateX" 
		"nutmegRN.placeHolderList[646]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_1_null|nutmeg:left_upper_eyelid_1_vis_null|nutmeg:left_upper_eyelid_1_anim.rotateY" 
		"nutmegRN.placeHolderList[647]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_1_null|nutmeg:left_upper_eyelid_1_vis_null|nutmeg:left_upper_eyelid_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[648]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_2_null|nutmeg:left_upper_eyelid_2_vis_null|nutmeg:left_upper_eyelid_2_anim.translateX" 
		"nutmegRN.placeHolderList[649]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_2_null|nutmeg:left_upper_eyelid_2_vis_null|nutmeg:left_upper_eyelid_2_anim.translateY" 
		"nutmegRN.placeHolderList[650]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_2_null|nutmeg:left_upper_eyelid_2_vis_null|nutmeg:left_upper_eyelid_2_anim.translateZ" 
		"nutmegRN.placeHolderList[651]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_2_null|nutmeg:left_upper_eyelid_2_vis_null|nutmeg:left_upper_eyelid_2_anim.rotateX" 
		"nutmegRN.placeHolderList[652]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_2_null|nutmeg:left_upper_eyelid_2_vis_null|nutmeg:left_upper_eyelid_2_anim.rotateY" 
		"nutmegRN.placeHolderList[653]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_2_null|nutmeg:left_upper_eyelid_2_vis_null|nutmeg:left_upper_eyelid_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[654]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_3_null|nutmeg:left_upper_eyelid_3_vis_null|nutmeg:left_upper_eyelid_3_anim.translateX" 
		"nutmegRN.placeHolderList[655]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_3_null|nutmeg:left_upper_eyelid_3_vis_null|nutmeg:left_upper_eyelid_3_anim.translateY" 
		"nutmegRN.placeHolderList[656]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_3_null|nutmeg:left_upper_eyelid_3_vis_null|nutmeg:left_upper_eyelid_3_anim.translateZ" 
		"nutmegRN.placeHolderList[657]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_3_null|nutmeg:left_upper_eyelid_3_vis_null|nutmeg:left_upper_eyelid_3_anim.rotateX" 
		"nutmegRN.placeHolderList[658]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_3_null|nutmeg:left_upper_eyelid_3_vis_null|nutmeg:left_upper_eyelid_3_anim.rotateY" 
		"nutmegRN.placeHolderList[659]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_upper_eyelid_component_grp|nutmeg:left_upper_eyelid_anim_grp|nutmeg:left_upper_eyelid_3_null|nutmeg:left_upper_eyelid_3_vis_null|nutmeg:left_upper_eyelid_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[660]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_1_null|nutmeg:left_lower_eyelid_1_vis_null|nutmeg:left_lower_eyelid_1_anim.translateX" 
		"nutmegRN.placeHolderList[661]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_1_null|nutmeg:left_lower_eyelid_1_vis_null|nutmeg:left_lower_eyelid_1_anim.translateY" 
		"nutmegRN.placeHolderList[662]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_1_null|nutmeg:left_lower_eyelid_1_vis_null|nutmeg:left_lower_eyelid_1_anim.translateZ" 
		"nutmegRN.placeHolderList[663]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_1_null|nutmeg:left_lower_eyelid_1_vis_null|nutmeg:left_lower_eyelid_1_anim.rotateX" 
		"nutmegRN.placeHolderList[664]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_1_null|nutmeg:left_lower_eyelid_1_vis_null|nutmeg:left_lower_eyelid_1_anim.rotateY" 
		"nutmegRN.placeHolderList[665]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_1_null|nutmeg:left_lower_eyelid_1_vis_null|nutmeg:left_lower_eyelid_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[666]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_2_null|nutmeg:left_lower_eyelid_2_vis_null|nutmeg:left_lower_eyelid_2_anim.translateX" 
		"nutmegRN.placeHolderList[667]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_2_null|nutmeg:left_lower_eyelid_2_vis_null|nutmeg:left_lower_eyelid_2_anim.translateY" 
		"nutmegRN.placeHolderList[668]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_2_null|nutmeg:left_lower_eyelid_2_vis_null|nutmeg:left_lower_eyelid_2_anim.translateZ" 
		"nutmegRN.placeHolderList[669]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_2_null|nutmeg:left_lower_eyelid_2_vis_null|nutmeg:left_lower_eyelid_2_anim.rotateX" 
		"nutmegRN.placeHolderList[670]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_2_null|nutmeg:left_lower_eyelid_2_vis_null|nutmeg:left_lower_eyelid_2_anim.rotateY" 
		"nutmegRN.placeHolderList[671]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_2_null|nutmeg:left_lower_eyelid_2_vis_null|nutmeg:left_lower_eyelid_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[672]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_3_null|nutmeg:left_lower_eyelid_3_vis_null|nutmeg:left_lower_eyelid_3_anim.translateX" 
		"nutmegRN.placeHolderList[673]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_3_null|nutmeg:left_lower_eyelid_3_vis_null|nutmeg:left_lower_eyelid_3_anim.translateY" 
		"nutmegRN.placeHolderList[674]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_3_null|nutmeg:left_lower_eyelid_3_vis_null|nutmeg:left_lower_eyelid_3_anim.translateZ" 
		"nutmegRN.placeHolderList[675]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_3_null|nutmeg:left_lower_eyelid_3_vis_null|nutmeg:left_lower_eyelid_3_anim.rotateX" 
		"nutmegRN.placeHolderList[676]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_3_null|nutmeg:left_lower_eyelid_3_vis_null|nutmeg:left_lower_eyelid_3_anim.rotateY" 
		"nutmegRN.placeHolderList[677]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_lower_eyelid_component_grp|nutmeg:left_lower_eyelid_anim_grp|nutmeg:left_lower_eyelid_3_null|nutmeg:left_lower_eyelid_3_vis_null|nutmeg:left_lower_eyelid_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[678]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_inner_eyelid_component_grp|nutmeg:left_inner_eyelid_anim_grp|nutmeg:left_inner_eyelid_null|nutmeg:left_inner_eyelid_vis_null|nutmeg:left_inner_eyelid_anim.translateX" 
		"nutmegRN.placeHolderList[679]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_inner_eyelid_component_grp|nutmeg:left_inner_eyelid_anim_grp|nutmeg:left_inner_eyelid_null|nutmeg:left_inner_eyelid_vis_null|nutmeg:left_inner_eyelid_anim.translateY" 
		"nutmegRN.placeHolderList[680]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_inner_eyelid_component_grp|nutmeg:left_inner_eyelid_anim_grp|nutmeg:left_inner_eyelid_null|nutmeg:left_inner_eyelid_vis_null|nutmeg:left_inner_eyelid_anim.translateZ" 
		"nutmegRN.placeHolderList[681]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_inner_eyelid_component_grp|nutmeg:left_inner_eyelid_anim_grp|nutmeg:left_inner_eyelid_null|nutmeg:left_inner_eyelid_vis_null|nutmeg:left_inner_eyelid_anim.rotateX" 
		"nutmegRN.placeHolderList[682]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_inner_eyelid_component_grp|nutmeg:left_inner_eyelid_anim_grp|nutmeg:left_inner_eyelid_null|nutmeg:left_inner_eyelid_vis_null|nutmeg:left_inner_eyelid_anim.rotateY" 
		"nutmegRN.placeHolderList[683]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_inner_eyelid_component_grp|nutmeg:left_inner_eyelid_anim_grp|nutmeg:left_inner_eyelid_null|nutmeg:left_inner_eyelid_vis_null|nutmeg:left_inner_eyelid_anim.rotateZ" 
		"nutmegRN.placeHolderList[684]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_outer_eyelid_component_grp|nutmeg:left_outer_eyelid_anim_grp|nutmeg:left_outer_eyelid_null|nutmeg:left_outer_eyelid_vis_null|nutmeg:left_outer_eyelid_anim.translateX" 
		"nutmegRN.placeHolderList[685]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_outer_eyelid_component_grp|nutmeg:left_outer_eyelid_anim_grp|nutmeg:left_outer_eyelid_null|nutmeg:left_outer_eyelid_vis_null|nutmeg:left_outer_eyelid_anim.translateY" 
		"nutmegRN.placeHolderList[686]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_outer_eyelid_component_grp|nutmeg:left_outer_eyelid_anim_grp|nutmeg:left_outer_eyelid_null|nutmeg:left_outer_eyelid_vis_null|nutmeg:left_outer_eyelid_anim.translateZ" 
		"nutmegRN.placeHolderList[687]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_outer_eyelid_component_grp|nutmeg:left_outer_eyelid_anim_grp|nutmeg:left_outer_eyelid_null|nutmeg:left_outer_eyelid_vis_null|nutmeg:left_outer_eyelid_anim.rotateX" 
		"nutmegRN.placeHolderList[688]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_outer_eyelid_component_grp|nutmeg:left_outer_eyelid_anim_grp|nutmeg:left_outer_eyelid_null|nutmeg:left_outer_eyelid_vis_null|nutmeg:left_outer_eyelid_anim.rotateY" 
		"nutmegRN.placeHolderList[689]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_outer_eyelid_component_grp|nutmeg:left_outer_eyelid_anim_grp|nutmeg:left_outer_eyelid_null|nutmeg:left_outer_eyelid_vis_null|nutmeg:left_outer_eyelid_anim.rotateZ" 
		"nutmegRN.placeHolderList[690]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_1_null|nutmeg:left_cheek_1_vis_null|nutmeg:left_cheek_1_anim.translateX" 
		"nutmegRN.placeHolderList[691]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_1_null|nutmeg:left_cheek_1_vis_null|nutmeg:left_cheek_1_anim.translateY" 
		"nutmegRN.placeHolderList[692]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_1_null|nutmeg:left_cheek_1_vis_null|nutmeg:left_cheek_1_anim.translateZ" 
		"nutmegRN.placeHolderList[693]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_1_null|nutmeg:left_cheek_1_vis_null|nutmeg:left_cheek_1_anim.rotateX" 
		"nutmegRN.placeHolderList[694]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_1_null|nutmeg:left_cheek_1_vis_null|nutmeg:left_cheek_1_anim.rotateY" 
		"nutmegRN.placeHolderList[695]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_1_null|nutmeg:left_cheek_1_vis_null|nutmeg:left_cheek_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[696]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_2_null|nutmeg:left_cheek_2_vis_null|nutmeg:left_cheek_2_anim.translateX" 
		"nutmegRN.placeHolderList[697]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_2_null|nutmeg:left_cheek_2_vis_null|nutmeg:left_cheek_2_anim.translateY" 
		"nutmegRN.placeHolderList[698]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_2_null|nutmeg:left_cheek_2_vis_null|nutmeg:left_cheek_2_anim.translateZ" 
		"nutmegRN.placeHolderList[699]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_2_null|nutmeg:left_cheek_2_vis_null|nutmeg:left_cheek_2_anim.rotateX" 
		"nutmegRN.placeHolderList[700]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_2_null|nutmeg:left_cheek_2_vis_null|nutmeg:left_cheek_2_anim.rotateY" 
		"nutmegRN.placeHolderList[701]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:left_cheek_component_grp|nutmeg:left_cheek_anim_grp|nutmeg:left_cheek_2_null|nutmeg:left_cheek_2_vis_null|nutmeg:left_cheek_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[702]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_eyebrow_component_grp|nutmeg:right_eyebrow_anim_grp|nutmeg:right_eyebrow_null|nutmeg:right_eyebrow_vis_null|nutmeg:right_eyebrow_anim.translateX" 
		"nutmegRN.placeHolderList[703]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_eyebrow_component_grp|nutmeg:right_eyebrow_anim_grp|nutmeg:right_eyebrow_null|nutmeg:right_eyebrow_vis_null|nutmeg:right_eyebrow_anim.translateY" 
		"nutmegRN.placeHolderList[704]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_eyebrow_component_grp|nutmeg:right_eyebrow_anim_grp|nutmeg:right_eyebrow_null|nutmeg:right_eyebrow_vis_null|nutmeg:right_eyebrow_anim.translateZ" 
		"nutmegRN.placeHolderList[705]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_eyebrow_component_grp|nutmeg:right_eyebrow_anim_grp|nutmeg:right_eyebrow_null|nutmeg:right_eyebrow_vis_null|nutmeg:right_eyebrow_anim.rotateX" 
		"nutmegRN.placeHolderList[706]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_eyebrow_component_grp|nutmeg:right_eyebrow_anim_grp|nutmeg:right_eyebrow_null|nutmeg:right_eyebrow_vis_null|nutmeg:right_eyebrow_anim.rotateY" 
		"nutmegRN.placeHolderList[707]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_eyebrow_component_grp|nutmeg:right_eyebrow_anim_grp|nutmeg:right_eyebrow_null|nutmeg:right_eyebrow_vis_null|nutmeg:right_eyebrow_anim.rotateZ" 
		"nutmegRN.placeHolderList[708]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_1_null|nutmeg:right_brow_1_vis_null|nutmeg:right_brow_1_anim.translateX" 
		"nutmegRN.placeHolderList[709]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_1_null|nutmeg:right_brow_1_vis_null|nutmeg:right_brow_1_anim.translateY" 
		"nutmegRN.placeHolderList[710]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_1_null|nutmeg:right_brow_1_vis_null|nutmeg:right_brow_1_anim.translateZ" 
		"nutmegRN.placeHolderList[711]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_1_null|nutmeg:right_brow_1_vis_null|nutmeg:right_brow_1_anim.rotateX" 
		"nutmegRN.placeHolderList[712]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_1_null|nutmeg:right_brow_1_vis_null|nutmeg:right_brow_1_anim.rotateY" 
		"nutmegRN.placeHolderList[713]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_1_null|nutmeg:right_brow_1_vis_null|nutmeg:right_brow_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[714]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_2_null|nutmeg:right_brow_2_vis_null|nutmeg:right_brow_2_anim.translateX" 
		"nutmegRN.placeHolderList[715]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_2_null|nutmeg:right_brow_2_vis_null|nutmeg:right_brow_2_anim.translateY" 
		"nutmegRN.placeHolderList[716]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_2_null|nutmeg:right_brow_2_vis_null|nutmeg:right_brow_2_anim.translateZ" 
		"nutmegRN.placeHolderList[717]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_2_null|nutmeg:right_brow_2_vis_null|nutmeg:right_brow_2_anim.rotateX" 
		"nutmegRN.placeHolderList[718]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_2_null|nutmeg:right_brow_2_vis_null|nutmeg:right_brow_2_anim.rotateY" 
		"nutmegRN.placeHolderList[719]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_2_null|nutmeg:right_brow_2_vis_null|nutmeg:right_brow_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[720]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_3_null|nutmeg:right_brow_3_vis_null|nutmeg:right_brow_3_anim.translateX" 
		"nutmegRN.placeHolderList[721]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_3_null|nutmeg:right_brow_3_vis_null|nutmeg:right_brow_3_anim.translateY" 
		"nutmegRN.placeHolderList[722]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_3_null|nutmeg:right_brow_3_vis_null|nutmeg:right_brow_3_anim.translateZ" 
		"nutmegRN.placeHolderList[723]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_3_null|nutmeg:right_brow_3_vis_null|nutmeg:right_brow_3_anim.rotateX" 
		"nutmegRN.placeHolderList[724]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_3_null|nutmeg:right_brow_3_vis_null|nutmeg:right_brow_3_anim.rotateY" 
		"nutmegRN.placeHolderList[725]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_brow_component_grp|nutmeg:right_brow_anim_grp|nutmeg:right_brow_3_null|nutmeg:right_brow_3_vis_null|nutmeg:right_brow_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[726]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_1_null|nutmeg:right_upper_eyelid_1_vis_null|nutmeg:right_upper_eyelid_1_anim.translateX" 
		"nutmegRN.placeHolderList[727]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_1_null|nutmeg:right_upper_eyelid_1_vis_null|nutmeg:right_upper_eyelid_1_anim.translateY" 
		"nutmegRN.placeHolderList[728]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_1_null|nutmeg:right_upper_eyelid_1_vis_null|nutmeg:right_upper_eyelid_1_anim.translateZ" 
		"nutmegRN.placeHolderList[729]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_1_null|nutmeg:right_upper_eyelid_1_vis_null|nutmeg:right_upper_eyelid_1_anim.rotateX" 
		"nutmegRN.placeHolderList[730]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_1_null|nutmeg:right_upper_eyelid_1_vis_null|nutmeg:right_upper_eyelid_1_anim.rotateY" 
		"nutmegRN.placeHolderList[731]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_1_null|nutmeg:right_upper_eyelid_1_vis_null|nutmeg:right_upper_eyelid_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[732]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_2_null|nutmeg:right_upper_eyelid_2_vis_null|nutmeg:right_upper_eyelid_2_anim.translateX" 
		"nutmegRN.placeHolderList[733]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_2_null|nutmeg:right_upper_eyelid_2_vis_null|nutmeg:right_upper_eyelid_2_anim.translateY" 
		"nutmegRN.placeHolderList[734]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_2_null|nutmeg:right_upper_eyelid_2_vis_null|nutmeg:right_upper_eyelid_2_anim.translateZ" 
		"nutmegRN.placeHolderList[735]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_2_null|nutmeg:right_upper_eyelid_2_vis_null|nutmeg:right_upper_eyelid_2_anim.rotateX" 
		"nutmegRN.placeHolderList[736]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_2_null|nutmeg:right_upper_eyelid_2_vis_null|nutmeg:right_upper_eyelid_2_anim.rotateY" 
		"nutmegRN.placeHolderList[737]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_2_null|nutmeg:right_upper_eyelid_2_vis_null|nutmeg:right_upper_eyelid_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[738]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_3_null|nutmeg:right_upper_eyelid_3_vis_null|nutmeg:right_upper_eyelid_3_anim.translateX" 
		"nutmegRN.placeHolderList[739]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_3_null|nutmeg:right_upper_eyelid_3_vis_null|nutmeg:right_upper_eyelid_3_anim.translateY" 
		"nutmegRN.placeHolderList[740]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_3_null|nutmeg:right_upper_eyelid_3_vis_null|nutmeg:right_upper_eyelid_3_anim.translateZ" 
		"nutmegRN.placeHolderList[741]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_3_null|nutmeg:right_upper_eyelid_3_vis_null|nutmeg:right_upper_eyelid_3_anim.rotateX" 
		"nutmegRN.placeHolderList[742]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_3_null|nutmeg:right_upper_eyelid_3_vis_null|nutmeg:right_upper_eyelid_3_anim.rotateY" 
		"nutmegRN.placeHolderList[743]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_upper_eyelid_component_grp|nutmeg:right_upper_eyelid_anim_grp|nutmeg:right_upper_eyelid_3_null|nutmeg:right_upper_eyelid_3_vis_null|nutmeg:right_upper_eyelid_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[744]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_1_null|nutmeg:right_lower_eyelid_1_vis_null|nutmeg:right_lower_eyelid_1_anim.translateX" 
		"nutmegRN.placeHolderList[745]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_1_null|nutmeg:right_lower_eyelid_1_vis_null|nutmeg:right_lower_eyelid_1_anim.translateY" 
		"nutmegRN.placeHolderList[746]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_1_null|nutmeg:right_lower_eyelid_1_vis_null|nutmeg:right_lower_eyelid_1_anim.translateZ" 
		"nutmegRN.placeHolderList[747]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_1_null|nutmeg:right_lower_eyelid_1_vis_null|nutmeg:right_lower_eyelid_1_anim.rotateX" 
		"nutmegRN.placeHolderList[748]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_1_null|nutmeg:right_lower_eyelid_1_vis_null|nutmeg:right_lower_eyelid_1_anim.rotateY" 
		"nutmegRN.placeHolderList[749]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_1_null|nutmeg:right_lower_eyelid_1_vis_null|nutmeg:right_lower_eyelid_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[750]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_2_null|nutmeg:right_lower_eyelid_2_vis_null|nutmeg:right_lower_eyelid_2_anim.translateX" 
		"nutmegRN.placeHolderList[751]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_2_null|nutmeg:right_lower_eyelid_2_vis_null|nutmeg:right_lower_eyelid_2_anim.translateY" 
		"nutmegRN.placeHolderList[752]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_2_null|nutmeg:right_lower_eyelid_2_vis_null|nutmeg:right_lower_eyelid_2_anim.translateZ" 
		"nutmegRN.placeHolderList[753]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_2_null|nutmeg:right_lower_eyelid_2_vis_null|nutmeg:right_lower_eyelid_2_anim.rotateX" 
		"nutmegRN.placeHolderList[754]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_2_null|nutmeg:right_lower_eyelid_2_vis_null|nutmeg:right_lower_eyelid_2_anim.rotateY" 
		"nutmegRN.placeHolderList[755]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_2_null|nutmeg:right_lower_eyelid_2_vis_null|nutmeg:right_lower_eyelid_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[756]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_3_null|nutmeg:right_lower_eyelid_3_vis_null|nutmeg:right_lower_eyelid_3_anim.translateX" 
		"nutmegRN.placeHolderList[757]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_3_null|nutmeg:right_lower_eyelid_3_vis_null|nutmeg:right_lower_eyelid_3_anim.translateY" 
		"nutmegRN.placeHolderList[758]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_3_null|nutmeg:right_lower_eyelid_3_vis_null|nutmeg:right_lower_eyelid_3_anim.translateZ" 
		"nutmegRN.placeHolderList[759]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_3_null|nutmeg:right_lower_eyelid_3_vis_null|nutmeg:right_lower_eyelid_3_anim.rotateX" 
		"nutmegRN.placeHolderList[760]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_3_null|nutmeg:right_lower_eyelid_3_vis_null|nutmeg:right_lower_eyelid_3_anim.rotateY" 
		"nutmegRN.placeHolderList[761]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_lower_eyelid_component_grp|nutmeg:right_lower_eyelid_anim_grp|nutmeg:right_lower_eyelid_3_null|nutmeg:right_lower_eyelid_3_vis_null|nutmeg:right_lower_eyelid_3_anim.rotateZ" 
		"nutmegRN.placeHolderList[762]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_inner_eyelid_component_grp|nutmeg:right_inner_eyelid_anim_grp|nutmeg:right_inner_eyelid_null|nutmeg:right_inner_eyelid_vis_null|nutmeg:right_inner_eyelid_anim.translateX" 
		"nutmegRN.placeHolderList[763]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_inner_eyelid_component_grp|nutmeg:right_inner_eyelid_anim_grp|nutmeg:right_inner_eyelid_null|nutmeg:right_inner_eyelid_vis_null|nutmeg:right_inner_eyelid_anim.translateY" 
		"nutmegRN.placeHolderList[764]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_inner_eyelid_component_grp|nutmeg:right_inner_eyelid_anim_grp|nutmeg:right_inner_eyelid_null|nutmeg:right_inner_eyelid_vis_null|nutmeg:right_inner_eyelid_anim.translateZ" 
		"nutmegRN.placeHolderList[765]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_inner_eyelid_component_grp|nutmeg:right_inner_eyelid_anim_grp|nutmeg:right_inner_eyelid_null|nutmeg:right_inner_eyelid_vis_null|nutmeg:right_inner_eyelid_anim.rotateX" 
		"nutmegRN.placeHolderList[766]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_inner_eyelid_component_grp|nutmeg:right_inner_eyelid_anim_grp|nutmeg:right_inner_eyelid_null|nutmeg:right_inner_eyelid_vis_null|nutmeg:right_inner_eyelid_anim.rotateY" 
		"nutmegRN.placeHolderList[767]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_inner_eyelid_component_grp|nutmeg:right_inner_eyelid_anim_grp|nutmeg:right_inner_eyelid_null|nutmeg:right_inner_eyelid_vis_null|nutmeg:right_inner_eyelid_anim.rotateZ" 
		"nutmegRN.placeHolderList[768]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_outer_eyelid_component_grp|nutmeg:right_outer_eyelid_anim_grp|nutmeg:right_outer_eyelid_null|nutmeg:right_outer_eyelid_vis_null|nutmeg:right_outer_eyelid_anim.translateX" 
		"nutmegRN.placeHolderList[769]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_outer_eyelid_component_grp|nutmeg:right_outer_eyelid_anim_grp|nutmeg:right_outer_eyelid_null|nutmeg:right_outer_eyelid_vis_null|nutmeg:right_outer_eyelid_anim.translateY" 
		"nutmegRN.placeHolderList[770]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_outer_eyelid_component_grp|nutmeg:right_outer_eyelid_anim_grp|nutmeg:right_outer_eyelid_null|nutmeg:right_outer_eyelid_vis_null|nutmeg:right_outer_eyelid_anim.translateZ" 
		"nutmegRN.placeHolderList[771]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_outer_eyelid_component_grp|nutmeg:right_outer_eyelid_anim_grp|nutmeg:right_outer_eyelid_null|nutmeg:right_outer_eyelid_vis_null|nutmeg:right_outer_eyelid_anim.rotateX" 
		"nutmegRN.placeHolderList[772]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_outer_eyelid_component_grp|nutmeg:right_outer_eyelid_anim_grp|nutmeg:right_outer_eyelid_null|nutmeg:right_outer_eyelid_vis_null|nutmeg:right_outer_eyelid_anim.rotateY" 
		"nutmegRN.placeHolderList[773]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_outer_eyelid_component_grp|nutmeg:right_outer_eyelid_anim_grp|nutmeg:right_outer_eyelid_null|nutmeg:right_outer_eyelid_vis_null|nutmeg:right_outer_eyelid_anim.rotateZ" 
		"nutmegRN.placeHolderList[774]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_1_null|nutmeg:right_cheek_1_vis_null|nutmeg:right_cheek_1_anim.translateX" 
		"nutmegRN.placeHolderList[775]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_1_null|nutmeg:right_cheek_1_vis_null|nutmeg:right_cheek_1_anim.translateY" 
		"nutmegRN.placeHolderList[776]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_1_null|nutmeg:right_cheek_1_vis_null|nutmeg:right_cheek_1_anim.translateZ" 
		"nutmegRN.placeHolderList[777]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_1_null|nutmeg:right_cheek_1_vis_null|nutmeg:right_cheek_1_anim.rotateX" 
		"nutmegRN.placeHolderList[778]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_1_null|nutmeg:right_cheek_1_vis_null|nutmeg:right_cheek_1_anim.rotateY" 
		"nutmegRN.placeHolderList[779]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_1_null|nutmeg:right_cheek_1_vis_null|nutmeg:right_cheek_1_anim.rotateZ" 
		"nutmegRN.placeHolderList[780]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_2_null|nutmeg:right_cheek_2_vis_null|nutmeg:right_cheek_2_anim.translateX" 
		"nutmegRN.placeHolderList[781]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_2_null|nutmeg:right_cheek_2_vis_null|nutmeg:right_cheek_2_anim.translateY" 
		"nutmegRN.placeHolderList[782]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_2_null|nutmeg:right_cheek_2_vis_null|nutmeg:right_cheek_2_anim.translateZ" 
		"nutmegRN.placeHolderList[783]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_2_null|nutmeg:right_cheek_2_vis_null|nutmeg:right_cheek_2_anim.rotateX" 
		"nutmegRN.placeHolderList[784]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_2_null|nutmeg:right_cheek_2_vis_null|nutmeg:right_cheek_2_anim.rotateY" 
		"nutmegRN.placeHolderList[785]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Face_topCon|nutmeg:component_grp|nutmeg:right_cheek_component_grp|nutmeg:right_cheek_anim_grp|nutmeg:right_cheek_2_null|nutmeg:right_cheek_2_vis_null|nutmeg:right_cheek_2_anim.rotateZ" 
		"nutmegRN.placeHolderList[786]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.translateX" 
		"nutmegRN.placeHolderList[787]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.translateY" 
		"nutmegRN.placeHolderList[788]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.translateZ" 
		"nutmegRN.placeHolderList[789]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.rotateX" 
		"nutmegRN.placeHolderList[790]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.rotateY" 
		"nutmegRN.placeHolderList[791]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.rotateZ" 
		"nutmegRN.placeHolderList[792]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.display_side_anims" 
		"nutmegRN.placeHolderList[793]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.hide_spine_anims" 
		"nutmegRN.placeHolderList[794]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.hide_geo" 
		"nutmegRN.placeHolderList[795]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.parent_to" 
		"nutmegRN.placeHolderList[796]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.open_left_side" 
		"nutmegRN.placeHolderList[797]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.open_right_side" 
		"nutmegRN.placeHolderList[798]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.display_normal_body" 
		"nutmegRN.placeHolderList[799]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_body_armor_component_grp|nutmeg:center_body_armor_anim_grp|nutmeg:center_body_armor_null|nutmeg:center_body_armor_multicon_null|nutmeg:center_body_armor_vis_null|nutmeg:center_body_armor_anim.basket_mode" 
		"nutmegRN.placeHolderList[800]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.split_helmet" 
		"nutmegRN.placeHolderList[801]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.translateX" 
		"nutmegRN.placeHolderList[802]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.translateY" 
		"nutmegRN.placeHolderList[803]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.translateZ" 
		"nutmegRN.placeHolderList[804]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.rotateX" 
		"nutmegRN.placeHolderList[805]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.rotateY" 
		"nutmegRN.placeHolderList[806]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.rotateZ" 
		"nutmegRN.placeHolderList[807]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.hide_head_anims" 
		"nutmegRN.placeHolderList[808]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.hide_geo" 
		"nutmegRN.placeHolderList[809]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.parent_to" 
		"nutmegRN.placeHolderList[810]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.tuck_left_ear" 
		"nutmegRN.placeHolderList[811]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.tuck_right_ear" 
		"nutmegRN.placeHolderList[812]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:center_helmet_component_grp|nutmeg:center_helmet_anim_grp|nutmeg:center_helmet_null|nutmeg:center_helmet_multicon_null|nutmeg:center_helmet_vis_null|nutmeg:center_helmet_anim.hair_tuck" 
		"nutmegRN.placeHolderList[813]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_helmet_piece_component_grp|nutmeg:left_helmet_piece_anim_grp|nutmeg:left_helmet_piece_null|nutmeg:left_helmet_piece_vis_null|nutmeg:left_helmet_piece_anim.translateX" 
		"nutmegRN.placeHolderList[814]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_helmet_piece_component_grp|nutmeg:left_helmet_piece_anim_grp|nutmeg:left_helmet_piece_null|nutmeg:left_helmet_piece_vis_null|nutmeg:left_helmet_piece_anim.translateY" 
		"nutmegRN.placeHolderList[815]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_helmet_piece_component_grp|nutmeg:left_helmet_piece_anim_grp|nutmeg:left_helmet_piece_null|nutmeg:left_helmet_piece_vis_null|nutmeg:left_helmet_piece_anim.translateZ" 
		"nutmegRN.placeHolderList[816]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_helmet_piece_component_grp|nutmeg:left_helmet_piece_anim_grp|nutmeg:left_helmet_piece_null|nutmeg:left_helmet_piece_vis_null|nutmeg:left_helmet_piece_anim.rotateX" 
		"nutmegRN.placeHolderList[817]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_helmet_piece_component_grp|nutmeg:left_helmet_piece_anim_grp|nutmeg:left_helmet_piece_null|nutmeg:left_helmet_piece_vis_null|nutmeg:left_helmet_piece_anim.rotateY" 
		"nutmegRN.placeHolderList[818]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_helmet_piece_component_grp|nutmeg:left_helmet_piece_anim_grp|nutmeg:left_helmet_piece_null|nutmeg:left_helmet_piece_vis_null|nutmeg:left_helmet_piece_anim.rotateZ" 
		"nutmegRN.placeHolderList[819]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_body_armor_component_grp|nutmeg:left_body_armor_anim_grp|nutmeg:left_body_armor_null|nutmeg:left_body_armor_anim_chest_open_SDK_null|nutmeg:left_body_armor_vis_null|nutmeg:left_body_armor_anim.rotateZ" 
		"nutmegRN.placeHolderList[820]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_bib_armor_component_grp|nutmeg:left_bib_armor_anim_grp|nutmeg:left_bib_armor_null|nutmeg:left_bib_armor_multicon_null|nutmeg:left_bib_armor_vis_null|nutmeg:left_bib_armor_anim.translateX" 
		"nutmegRN.placeHolderList[821]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_bib_armor_component_grp|nutmeg:left_bib_armor_anim_grp|nutmeg:left_bib_armor_null|nutmeg:left_bib_armor_multicon_null|nutmeg:left_bib_armor_vis_null|nutmeg:left_bib_armor_anim.translateY" 
		"nutmegRN.placeHolderList[822]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_bib_armor_component_grp|nutmeg:left_bib_armor_anim_grp|nutmeg:left_bib_armor_null|nutmeg:left_bib_armor_multicon_null|nutmeg:left_bib_armor_vis_null|nutmeg:left_bib_armor_anim.translateZ" 
		"nutmegRN.placeHolderList[823]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_bib_armor_component_grp|nutmeg:left_bib_armor_anim_grp|nutmeg:left_bib_armor_null|nutmeg:left_bib_armor_multicon_null|nutmeg:left_bib_armor_vis_null|nutmeg:left_bib_armor_anim.rotateX" 
		"nutmegRN.placeHolderList[824]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_bib_armor_component_grp|nutmeg:left_bib_armor_anim_grp|nutmeg:left_bib_armor_null|nutmeg:left_bib_armor_multicon_null|nutmeg:left_bib_armor_vis_null|nutmeg:left_bib_armor_anim.rotateY" 
		"nutmegRN.placeHolderList[825]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_bib_armor_component_grp|nutmeg:left_bib_armor_anim_grp|nutmeg:left_bib_armor_null|nutmeg:left_bib_armor_multicon_null|nutmeg:left_bib_armor_vis_null|nutmeg:left_bib_armor_anim.rotateZ" 
		"nutmegRN.placeHolderList[826]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_bib_armor_component_grp|nutmeg:left_bib_armor_anim_grp|nutmeg:left_bib_armor_null|nutmeg:left_bib_armor_multicon_null|nutmeg:left_bib_armor_vis_null|nutmeg:left_bib_armor_anim.parent_to" 
		"nutmegRN.placeHolderList[827]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.translateX" 
		"nutmegRN.placeHolderList[828]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.translateY" 
		"nutmegRN.placeHolderList[829]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.translateZ" 
		"nutmegRN.placeHolderList[830]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.rotateX" 
		"nutmegRN.placeHolderList[831]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.rotateY" 
		"nutmegRN.placeHolderList[832]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.rotateZ" 
		"nutmegRN.placeHolderList[833]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.display_latch_anim" 
		"nutmegRN.placeHolderList[834]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.hide_arm_anims" 
		"nutmegRN.placeHolderList[835]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.hide_geo" 
		"nutmegRN.placeHolderList[836]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.parent_to" 
		"nutmegRN.placeHolderList[837]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_component_grp|nutmeg:left_elbow_armor_anim_grp|nutmeg:left_elbow_armor_null|nutmeg:left_elbow_armor_multicon_null|nutmeg:left_elbow_armor_vis_null|nutmeg:left_elbow_armor_anim.open_latch" 
		"nutmegRN.placeHolderList[838]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:left_elbow_armor_latch_component_grp|nutmeg:left_elbow_armor_latch_anim_grp|nutmeg:left_elbow_armor_latch_null|nutmeg:left_elbow_armor_latch_anim_open_latch_SDK_null|nutmeg:left_elbow_armor_latch_vis_null|nutmeg:left_elbow_armor_latch_anim.rotateZ" 
		"nutmegRN.placeHolderList[839]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_helmet_piece_component_grp|nutmeg:right_helmet_piece_anim_grp|nutmeg:right_helmet_piece_null|nutmeg:right_helmet_piece_vis_null|nutmeg:right_helmet_piece_anim.translateX" 
		"nutmegRN.placeHolderList[840]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_helmet_piece_component_grp|nutmeg:right_helmet_piece_anim_grp|nutmeg:right_helmet_piece_null|nutmeg:right_helmet_piece_vis_null|nutmeg:right_helmet_piece_anim.translateY" 
		"nutmegRN.placeHolderList[841]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_helmet_piece_component_grp|nutmeg:right_helmet_piece_anim_grp|nutmeg:right_helmet_piece_null|nutmeg:right_helmet_piece_vis_null|nutmeg:right_helmet_piece_anim.translateZ" 
		"nutmegRN.placeHolderList[842]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_helmet_piece_component_grp|nutmeg:right_helmet_piece_anim_grp|nutmeg:right_helmet_piece_null|nutmeg:right_helmet_piece_vis_null|nutmeg:right_helmet_piece_anim.rotateX" 
		"nutmegRN.placeHolderList[843]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_helmet_piece_component_grp|nutmeg:right_helmet_piece_anim_grp|nutmeg:right_helmet_piece_null|nutmeg:right_helmet_piece_vis_null|nutmeg:right_helmet_piece_anim.rotateY" 
		"nutmegRN.placeHolderList[844]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_helmet_piece_component_grp|nutmeg:right_helmet_piece_anim_grp|nutmeg:right_helmet_piece_null|nutmeg:right_helmet_piece_vis_null|nutmeg:right_helmet_piece_anim.rotateZ" 
		"nutmegRN.placeHolderList[845]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_body_armor_component_grp|nutmeg:right_body_armor_anim_grp|nutmeg:right_body_armor_null|nutmeg:right_body_armor_anim_chest_open_SDK_null|nutmeg:right_body_armor_vis_null|nutmeg:right_body_armor_anim.rotateZ" 
		"nutmegRN.placeHolderList[846]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_bib_armor_component_grp|nutmeg:right_bib_armor_anim_grp|nutmeg:right_bib_armor_null|nutmeg:right_bib_armor_multicon_null|nutmeg:right_bib_armor_vis_null|nutmeg:right_bib_armor_anim.translateX" 
		"nutmegRN.placeHolderList[847]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_bib_armor_component_grp|nutmeg:right_bib_armor_anim_grp|nutmeg:right_bib_armor_null|nutmeg:right_bib_armor_multicon_null|nutmeg:right_bib_armor_vis_null|nutmeg:right_bib_armor_anim.translateY" 
		"nutmegRN.placeHolderList[848]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_bib_armor_component_grp|nutmeg:right_bib_armor_anim_grp|nutmeg:right_bib_armor_null|nutmeg:right_bib_armor_multicon_null|nutmeg:right_bib_armor_vis_null|nutmeg:right_bib_armor_anim.translateZ" 
		"nutmegRN.placeHolderList[849]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_bib_armor_component_grp|nutmeg:right_bib_armor_anim_grp|nutmeg:right_bib_armor_null|nutmeg:right_bib_armor_multicon_null|nutmeg:right_bib_armor_vis_null|nutmeg:right_bib_armor_anim.rotateX" 
		"nutmegRN.placeHolderList[850]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_bib_armor_component_grp|nutmeg:right_bib_armor_anim_grp|nutmeg:right_bib_armor_null|nutmeg:right_bib_armor_multicon_null|nutmeg:right_bib_armor_vis_null|nutmeg:right_bib_armor_anim.rotateY" 
		"nutmegRN.placeHolderList[851]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_bib_armor_component_grp|nutmeg:right_bib_armor_anim_grp|nutmeg:right_bib_armor_null|nutmeg:right_bib_armor_multicon_null|nutmeg:right_bib_armor_vis_null|nutmeg:right_bib_armor_anim.rotateZ" 
		"nutmegRN.placeHolderList[852]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_bib_armor_component_grp|nutmeg:right_bib_armor_anim_grp|nutmeg:right_bib_armor_null|nutmeg:right_bib_armor_multicon_null|nutmeg:right_bib_armor_vis_null|nutmeg:right_bib_armor_anim.parent_to" 
		"nutmegRN.placeHolderList[853]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.translateX" 
		"nutmegRN.placeHolderList[854]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.translateY" 
		"nutmegRN.placeHolderList[855]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.translateZ" 
		"nutmegRN.placeHolderList[856]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.rotateX" 
		"nutmegRN.placeHolderList[857]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.rotateY" 
		"nutmegRN.placeHolderList[858]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.rotateZ" 
		"nutmegRN.placeHolderList[859]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.display_latch_anim" 
		"nutmegRN.placeHolderList[860]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.hide_arm_anims" 
		"nutmegRN.placeHolderList[861]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.hide_geo" 
		"nutmegRN.placeHolderList[862]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.parent_to" 
		"nutmegRN.placeHolderList[863]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_component_grp|nutmeg:right_elbow_armor_anim_grp|nutmeg:right_elbow_armor_null|nutmeg:right_elbow_armor_multicon_null|nutmeg:right_elbow_armor_vis_null|nutmeg:right_elbow_armor_anim.open_latch" 
		"nutmegRN.placeHolderList[864]" ""
		5 4 "nutmegRN" "|nutmeg:Nutmeg_topCon|nutmeg:Nutmeg_Armor_topCon|nutmeg:component_grp|nutmeg:right_elbow_armor_latch_component_grp|nutmeg:right_elbow_armor_latch_anim_grp|nutmeg:right_elbow_armor_latch_null|nutmeg:right_elbow_armor_latch_anim_open_latch_SDK_null|nutmeg:right_elbow_armor_latch_vis_null|nutmeg:right_elbow_armor_latch_anim.rotateZ" 
		"nutmegRN.placeHolderList[865]" ""
		5 3 "nutmegRN" "nutmeg:center_tail_nurb_skin.outputGeometry[0]" "nutmegRN.placeHolderList[866]" 
		"nutmeg:center_tail_nurbShape.cr"
		5 3 "nutmegRN" "nutmeg:center_mouth_upper_lip_nurb_skin.outputGeometry[0]" 
		"nutmegRN.placeHolderList[867]" "nutmeg:center_mouth_upper_lip_nurbShape.cr"
		5 3 "nutmegRN" "nutmeg:center_mouth_lower_lip_nurb_skin.outputGeometry[0]" 
		"nutmegRN.placeHolderList[868]" "nutmeg:center_mouth_lower_lip_nurbShape.cr";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "EEF9C86D-4CEB-8D66-53A8-B99354C4F38B";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "3.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "834ECA22-45AF-C2A9-DF4A-638FD57F2F0E";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "5BDDED38-4280-C768-123E-D8B429663EA0";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "293202DD-4E8E-D81B-7E47-7B9708BC132F";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "cannonRN";
	rename -uid "85DCC060-4C35-4456-EEB9-14B75F8B26C6";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"cannonRN"
		"cannonRN" 0
		"cannonRN" 5
		2 "|cannon:back" "visibility" " 1"
		2 "|cannon:cannon_grp" "translate" " -type \"double3\" 0 61.9185879856911896 0"
		
		2 "|cannon:cannon_grp" "rotate" " -type \"double3\" -26.64426422983758513 0 0"
		
		2 "|cannon:cannon_grp|cannon:cannon_body" "rotate" " -type \"double3\" 0 0 0"
		
		5 3 "cannonRN" "|cannon:back|cannon:backShape.message" "cannonRN.placeHolderList[1]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode rebuildSurface -n "rebuildSurface1";
	rename -uid "AE24A0A5-43A6-1DDB-0DCC-289C8BF539C1";
	setAttr ".end" 1;
	setAttr ".kc" no;
	setAttr ".kr" 0;
createNode rebuildSurface -n "rebuildSurface2";
	rename -uid "573892A2-46C5-E105-DB08-E297D67605F4";
	setAttr ".end" 1;
	setAttr ".kc" no;
	setAttr ".kr" 0;
createNode rebuildSurface -n "rebuildSurface3";
	rename -uid "C1346F86-4661-5039-3106-1D8083F8C83A";
	setAttr ".end" 1;
	setAttr ".kc" no;
	setAttr ".kr" 0;
createNode expression -n "expression1";
	rename -uid "3DA2EA8F-4035-DE82-B406-41A3173E5971";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
createNode expression -n "expression2";
	rename -uid "8E753189-43B1-B1E1-7DF3-48AF4142C683";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
createNode animCurveTL -n "render_cam_translateX";
	rename -uid "2739E0C3-4068-58AF-9E25-F29574C0A4AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 452.28732980127353 30 44.099137163523793
		 54 44.099137163523793 57 27.956825146640583 60 1.2873082932185074;
createNode animCurveTL -n "render_cam_translateY";
	rename -uid "AFAF4B49-4F4C-D661-2025-81A96345401F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 91.445599664040117 30 30.303595320465316
		 54 30.303595320465316 57 108.32425046841782 60 213.84978531806235;
createNode animCurveTL -n "render_cam_translateZ";
	rename -uid "6641F74B-4320-AAF8-F0F4-0E8AEC51B935";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 171.39987879032759 30 386.68448025398516
		 54 386.68448025398516 57 267.90202867887325 60 76.847644372649285;
createNode animCurveTU -n "render_cam_visibility";
	rename -uid "57285913-470F-782A-25F9-4695A1A58A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 54 1 60 1;
	setAttr -s 4 ".kit[2:3]"  9 9;
	setAttr -s 4 ".kot[2:3]"  5 5;
createNode animCurveTA -n "render_cam_rotateX";
	rename -uid "F086B05F-4623-26B0-429F-DB9492FE067E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 11.661647270470676 30 22.461647270471371
		 54 22.461647270471371 60 46.321705579509384;
createNode animCurveTA -n "render_cam_rotateY";
	rename -uid "D9695FD0-4B36-4F38-4908-59A66758F3AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -292.19999999999158 30 -350.99999999998272
		 54 -350.99999999998272 60 -359.52361516033028;
createNode animCurveTA -n "render_cam_rotateZ";
	rename -uid "F07ED5FA-4211-3701-E710-449CD1334CED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -3.4310501125476535e-15 30 -3.4310501125476535e-15
		 54 -3.4310501125476535e-15 60 -3.4310501125476535e-15;
createNode animCurveTU -n "render_cam_scaleX";
	rename -uid "BC890D10-409B-0816-221F-0FB9D2E6CDFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 54 1 60 1;
createNode animCurveTU -n "render_cam_scaleY";
	rename -uid "C7D476D9-4340-12E6-41D4-CDB87D593C71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 54 1 60 1;
createNode animCurveTU -n "render_cam_scaleZ";
	rename -uid "8F6BDFE2-437D-5AAC-1A5A-C6BA9007EDEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 54 1 60 1;
createNode expression -n "expression3";
	rename -uid "AB69D3B6-418D-9540-FFDC-5C80C1AA6BB6";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
createNode animCurveTL -n "center_body_armor_anim_translateX";
	rename -uid "96DD420F-41FC-9130-4D98-8DB5E049CAA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_body_armor_anim_translateY";
	rename -uid "6A95D3A2-4511-5B32-BEC6-829F7D1C4388";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_body_armor_anim_translateZ";
	rename -uid "03B0D6CB-45F9-DD2F-F64B-8EA902CD3DB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_helmet_anim_translateX";
	rename -uid "1C73C7FE-4A87-9107-7887-6CA8FEC7B580";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_helmet_anim_translateY";
	rename -uid "CEA132A4-4FF3-0FBA-7DD9-FBABB6118768";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_helmet_anim_translateZ";
	rename -uid "2FF3C860-4B3C-24C9-3FF5-9496BCC9FBE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_bib_armor_anim_translateX";
	rename -uid "1A2ACA33-4ABC-AD60-72E7-93A54D880FF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_bib_armor_anim_translateY";
	rename -uid "0B21C45C-4F4E-ECF3-E1E0-9F9CC0CBD693";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_bib_armor_anim_translateZ";
	rename -uid "E85BE1FD-40A9-71F6-14E8-15AD93BDD177";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_elbow_armor_anim_translateX";
	rename -uid "8A3A97F0-403A-2588-23EE-FEBBC2814ABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_elbow_armor_anim_translateY";
	rename -uid "4981BD3E-402F-C7CC-9A4D-A886A744F9B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_elbow_armor_anim_translateZ";
	rename -uid "91744A88-470D-91A6-AE1E-74A42FEC1F92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_helmet_piece_anim_translateX";
	rename -uid "AFDAE7E9-492C-0C73-C41E-F9ACBC132CFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_helmet_piece_anim_translateY";
	rename -uid "E1D060BB-4288-5D97-34F0-5CBCE409F495";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_helmet_piece_anim_translateZ";
	rename -uid "D6DEA75F-4C1E-FAEB-1294-979D42D8D93D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_bib_armor_anim_translateX";
	rename -uid "9A6DE8F8-48C2-2DA8-8DF2-71AE229DEA11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_bib_armor_anim_translateY";
	rename -uid "0D8C17F4-463D-EDA1-279D-5EB9A7BD6A20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_bib_armor_anim_translateZ";
	rename -uid "81FE80B7-4726-1345-9816-E09160097353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_elbow_armor_anim_translateX";
	rename -uid "A103E602-4F0E-8102-54B6-94B0496F3625";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_elbow_armor_anim_translateY";
	rename -uid "CBAB70C3-49F2-442D-DAA2-69A6F1AE6534";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_elbow_armor_anim_translateZ";
	rename -uid "A039EF02-4550-C03F-D9A1-A09637FFBB14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_helmet_piece_anim_translateX";
	rename -uid "43DBBC8A-4757-ED0C-991C-22889322FF10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_helmet_piece_anim_translateY";
	rename -uid "DB3B7B51-4370-0BD9-A8FF-3382E3912552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_helmet_piece_anim_translateZ";
	rename -uid "77527F4F-4D62-EAD0-C6E2-4EA0B742AB13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_left_anim_translateX";
	rename -uid "B5BBCDFD-4D0A-294C-EF07-DFA02108770C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_left_anim_translateY";
	rename -uid "6E1A9C44-4D54-91E5-3890-F68FDBBE4891";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_left_anim_translateZ";
	rename -uid "5EEF5C51-4382-A019-6215-1295EE4B3ECC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_right_anim_translateX";
	rename -uid "50052AAC-47FA-2BA5-1A99-C9A72CB671BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_right_anim_translateY";
	rename -uid "58CA37F7-4B12-224B-B921-738466691775";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_right_anim_translateZ";
	rename -uid "69A949CC-4A24-FA76-EAE3-88AEB61D6BDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_left_corner_anim_translateX";
	rename -uid "639747FF-49E6-EE88-D24D-16BDFA5C4CEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_left_corner_anim_translateY";
	rename -uid "083FA3C3-45DA-86C7-D49B-94AC40BB151B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_left_corner_anim_translateZ";
	rename -uid "750D9351-4AD1-044C-BB45-0C8049360511";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_left_anim_translateX";
	rename -uid "F454995A-498D-BCC9-ECF9-15BCEC2B810A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_left_anim_translateY";
	rename -uid "80E0C53C-4F40-3B2E-2A13-6F947BF334CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_left_anim_translateZ";
	rename -uid "1B35A2A2-4769-3658-5FF9-79B6A5B67E19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_middle_anim_translateX";
	rename -uid "1D25ABBA-4A19-1BD4-F137-5D936D2016C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_middle_anim_translateY";
	rename -uid "ACAC5A7B-43DE-67F1-11C6-079A115E5334";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_middle_anim_translateZ";
	rename -uid "D3C2989C-48A4-A3A8-629A-D99521587BCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_right_corner_anim_translateX";
	rename -uid "A80D0809-4607-073C-35FB-A68E103C485D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_right_corner_anim_translateY";
	rename -uid "C9AC0784-487F-EB26-4032-BBA3B072D7DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_right_corner_anim_translateZ";
	rename -uid "3C1B6FC0-4D83-8FC4-ABFA-62A5D100DF63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_right_anim_translateX";
	rename -uid "90A916E2-4479-8678-1CB6-EE8D7DCA4928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_right_anim_translateY";
	rename -uid "12009F63-486C-7964-1CE9-418EB1FB2479";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_upper_right_anim_translateZ";
	rename -uid "47E702EA-4C37-C35B-0628-BDA8A1684288";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_left_corner_anim_translateX";
	rename -uid "237DCE3A-4FC1-6641-281A-96876A1B66DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_left_corner_anim_translateY";
	rename -uid "EF28E495-4235-EDD6-039A-9691EC2015CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_left_corner_anim_translateZ";
	rename -uid "A4C84B9F-4C59-BA0F-0C49-72BB3B09DE90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_left_anim_translateX";
	rename -uid "0443F9F1-47CD-E8D7-25B5-D3ACAE7DDD0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_left_anim_translateY";
	rename -uid "4EF361EB-4B43-D9DC-CF77-528477143034";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_left_anim_translateZ";
	rename -uid "AB7C2665-4CEA-AB6D-63DE-9BA716D8C9CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_middle_anim_translateX";
	rename -uid "AD6A0A2C-4C93-29EA-87DF-548E3B30906D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_middle_anim_translateY";
	rename -uid "5C69D8BA-4CBE-AAB9-30E8-EF867FF2A511";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_middle_anim_translateZ";
	rename -uid "68B12E9F-43A7-AF8A-AF68-BBA6F7EF5DA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_right_corner_anim_translateX";
	rename -uid "2317AB40-4952-A915-A855-479AB8980F29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_right_corner_anim_translateY";
	rename -uid "2DD0F7AC-4AD8-D78A-8846-2598C76F0CD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_right_corner_anim_translateZ";
	rename -uid "94CB4D94-42EA-9F28-2FEB-D283F053BEFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_right_anim_translateX";
	rename -uid "D435F5C8-44D5-5AE3-CA90-58B670E74DAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_right_anim_translateY";
	rename -uid "D7B31119-4FEC-4735-548B-128A60CB830E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_mouth_lower_right_anim_translateZ";
	rename -uid "795B6405-4141-FAE1-6B39-768232BE4FBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_1_anim_translateX";
	rename -uid "CC326A51-403F-37BC-BAC1-D987B97FFD8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_1_anim_translateY";
	rename -uid "4EF5F187-4F77-C50C-2380-9DB6EE9E9466";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_1_anim_translateZ";
	rename -uid "893FE334-4924-75BB-5D0F-DFAD9F74E630";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_2_anim_translateX";
	rename -uid "BBCD566B-4A89-59E7-4A62-E7BFB1F95109";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_2_anim_translateY";
	rename -uid "9400E3A4-41E2-F5FF-B951-82822C731F1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_2_anim_translateZ";
	rename -uid "1D32EFF7-4747-91D7-EC0A-5AB3F9145594";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_3_anim_translateX";
	rename -uid "39392A03-45FD-0ACE-5812-09BC48C1001F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_3_anim_translateY";
	rename -uid "FB092C18-4BE8-13B3-3CB9-A39F1E6D8812";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_brow_3_anim_translateZ";
	rename -uid "EB92AADD-47F2-9423-A728-5581706475F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_cheek_1_anim_translateX";
	rename -uid "D25A14E7-4D45-4526-86DD-ABA5D2ACCA43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_cheek_1_anim_translateY";
	rename -uid "499BDF6E-4467-9CF3-E40F-899306CED94A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_cheek_1_anim_translateZ";
	rename -uid "5A11B2FF-4B5E-BFA3-9981-BD839334C1AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_cheek_2_anim_translateX";
	rename -uid "A19F2B4C-44B2-F79D-16ED-7C80C5B1EAF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_cheek_2_anim_translateY";
	rename -uid "49F44BC9-485B-C858-E5B4-7F95CFA153BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_cheek_2_anim_translateZ";
	rename -uid "4AB75E0B-4A27-70F3-DE51-5B9AE2FF0C23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_eyebrow_anim_translateX";
	rename -uid "1391C65A-4479-7793-3DD1-37B578BE8E3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_eyebrow_anim_translateY";
	rename -uid "82555193-4BCA-7533-4982-CCAB4E1411F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_eyebrow_anim_translateZ";
	rename -uid "3D703A80-41AD-FF44-75B4-36B0BBEBC5E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_inner_eyelid_anim_translateX";
	rename -uid "D58EA4F1-4789-F1AA-A188-35830C9F2E1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_inner_eyelid_anim_translateY";
	rename -uid "E922B25D-4AC7-1D5F-C98C-59A7B974A6C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_inner_eyelid_anim_translateZ";
	rename -uid "5186BBF9-4A9F-78B9-61E5-5D92484B7299";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_1_anim_translateX";
	rename -uid "950560A9-4D6E-8BD8-209F-42AFFFFA055B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_1_anim_translateY";
	rename -uid "8EA3C652-4B42-19B2-0191-2FBED148584A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_1_anim_translateZ";
	rename -uid "B0F7D1AA-4781-4452-5637-08B0B26B2757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_2_anim_translateX";
	rename -uid "26E6C330-442A-8CF4-CF70-7BB6DDB65E7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_2_anim_translateY";
	rename -uid "79556B6C-45C1-134C-F4E8-16A396EBB0E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_2_anim_translateZ";
	rename -uid "90FF0170-4126-354D-06FE-389E6D0C115D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_3_anim_translateX";
	rename -uid "08187514-4A60-7288-5F46-B78913ACFFD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_3_anim_translateY";
	rename -uid "051DF033-40A8-73A7-4BAF-6989688D52A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_lower_eyelid_3_anim_translateZ";
	rename -uid "192A3B3D-49BA-C990-F00A-27A0608742F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_outer_eyelid_anim_translateX";
	rename -uid "16D86CD2-49A0-9289-5E73-EA814CD73152";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_outer_eyelid_anim_translateY";
	rename -uid "99CA37B4-42EE-88EF-25E6-768E7242CA86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_outer_eyelid_anim_translateZ";
	rename -uid "0996DCEC-455B-367F-590E-B68D1F14C8C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_1_anim_translateX";
	rename -uid "6D055B10-4BB7-0B68-BF23-ACAF97F42F2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_1_anim_translateY";
	rename -uid "153AB9AB-47B7-FEE3-96ED-4482AC22481C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_1_anim_translateZ";
	rename -uid "BF931906-4657-A6BA-7503-6B9397315C3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_2_anim_translateX";
	rename -uid "8176CADF-424D-1A68-FA83-FEAE31E58441";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_2_anim_translateY";
	rename -uid "FF3BBB34-4A96-BC6C-08B3-90BA471E147D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_2_anim_translateZ";
	rename -uid "3349EEEE-459F-415C-1F78-31B5C6B163BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_3_anim_translateX";
	rename -uid "B6C5173A-4F60-D505-E780-7ABF632150AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_3_anim_translateY";
	rename -uid "56B2E8AB-452F-7D9B-4724-BF9A2A3733A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_upper_eyelid_3_anim_translateZ";
	rename -uid "712FF564-4FDC-EC8C-E718-DBAA4F0459F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_1_anim_translateX";
	rename -uid "980BC706-4FA9-DD9F-4D06-A499045174FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_1_anim_translateY";
	rename -uid "22D9B099-4B5D-E085-A4DD-F5B5FFC95280";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_1_anim_translateZ";
	rename -uid "2681A3E9-4FAD-6EBE-CCBD-888A2D9505DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_2_anim_translateX";
	rename -uid "58107FDC-4936-EAFC-42DE-9DA392D08277";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_2_anim_translateY";
	rename -uid "E0BE7FEA-4BF6-CB29-7C4D-248258B798BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_2_anim_translateZ";
	rename -uid "E2A4CD89-43BB-ABEA-13D5-1D9103F944EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_3_anim_translateX";
	rename -uid "473F5F6A-400B-AE5F-AB82-2EA964CAEA2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_3_anim_translateY";
	rename -uid "7765E539-4F38-CF41-2884-208AA94FAB4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_brow_3_anim_translateZ";
	rename -uid "FC9A594C-43C8-A7BD-23D1-9C821F897462";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_cheek_1_anim_translateX";
	rename -uid "CDF8F588-43AD-3368-47DA-98ACD34FBBB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_cheek_1_anim_translateY";
	rename -uid "0AF9526E-44EF-21E1-17CC-F88122CA13BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_cheek_1_anim_translateZ";
	rename -uid "604FF844-4A1C-5A9B-92BB-CEB87680D855";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_cheek_2_anim_translateX";
	rename -uid "B231ECAC-471E-F751-81BF-B3B5874CBBB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_cheek_2_anim_translateY";
	rename -uid "4D9E7CD5-4316-1477-29D5-6AA03AB7806F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_cheek_2_anim_translateZ";
	rename -uid "B83FA00A-410C-E95A-50F7-F6B5A9B9820E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_eyebrow_anim_translateX";
	rename -uid "6B2E1DF6-40D6-D6FA-B4F8-A3BAB12C004D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_eyebrow_anim_translateY";
	rename -uid "D5BF6BE5-4E16-2E3B-98DD-14A85319C2FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_eyebrow_anim_translateZ";
	rename -uid "0A13C94B-40A5-9FF9-3497-54ABF5444B77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_inner_eyelid_anim_translateX";
	rename -uid "7D94A1E1-4CE0-E005-8FEC-7E805B211F17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_inner_eyelid_anim_translateY";
	rename -uid "732D6507-4AE9-32FD-25F0-B88BEF4AB16C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_inner_eyelid_anim_translateZ";
	rename -uid "AF135DD6-4B56-0291-8E17-AA8BE28E9D6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_1_anim_translateX";
	rename -uid "AB472914-4516-7970-C1EE-D4B8FC627BD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_1_anim_translateY";
	rename -uid "716C38C3-4DF7-C4BB-1202-CF970F1D902D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_1_anim_translateZ";
	rename -uid "F05556BA-4E33-4CF4-13C2-9FBB4E425A3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_2_anim_translateX";
	rename -uid "528E0005-440D-FCCB-F45F-F1849D9E13F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_2_anim_translateY";
	rename -uid "E7A2A2E1-4C67-A203-B807-36BBBE4CF3EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_2_anim_translateZ";
	rename -uid "6D5A5E5D-46D7-B367-796D-58958DA8D6D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_3_anim_translateX";
	rename -uid "0DD8E897-428C-FD3A-8B80-B9859CFA5C42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_3_anim_translateY";
	rename -uid "CB341307-4B9E-5B8D-BF89-5D92C40390FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_lower_eyelid_3_anim_translateZ";
	rename -uid "E9E60A20-496B-B343-3A0F-82A94EEC3B1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_outer_eyelid_anim_translateX";
	rename -uid "9C838B0F-4685-FD42-D9C9-229CD101B3B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_outer_eyelid_anim_translateY";
	rename -uid "14F8E99E-4313-6950-A754-8F9E502C5F01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_outer_eyelid_anim_translateZ";
	rename -uid "1A53A915-428F-6FA3-C5B7-7E8FDB8A1B48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_1_anim_translateX";
	rename -uid "AA3E0E38-475A-1D46-5A53-DF9B69A91081";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_1_anim_translateY";
	rename -uid "EF580BFD-4A6C-699B-E7E0-C29CB9EFFCBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_1_anim_translateZ";
	rename -uid "DDDF13C4-4C4B-AE68-C724-58AB77497C9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_2_anim_translateX";
	rename -uid "C6E63AAC-437E-AD85-1374-F59D0366AD84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_2_anim_translateY";
	rename -uid "4B7315C4-4018-6B1D-E12E-0D84AA34D2DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_2_anim_translateZ";
	rename -uid "BAB6E54F-4A42-7C82-4358-54BC7278DDD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_3_anim_translateX";
	rename -uid "850F2240-4DF6-C225-F07F-11A7B923BDCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_3_anim_translateY";
	rename -uid "89ED4B8C-4474-45E1-170C-54A083CF09E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_upper_eyelid_3_anim_translateZ";
	rename -uid "FCD76EE1-4DD2-BC55-1496-8B8725DDBD92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_COG_anim_translateX";
	rename -uid "4052AE1A-4CAA-7DAC-1065-DB9587C148C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -9.4739031434680051e-15 32 -14.97525359887492
		 33 -15.17428734505296 57 3.0337230749459478;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_COG_anim_translateY";
	rename -uid "44AAE347-4132-0784-F785-92949A9AA6F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 92.158011742867515 32 115.33497500125901
		 33 137.92986697174607 57 131.05834986608534;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_COG_anim_translateZ";
	rename -uid "010A5294-4DC5-5E5B-72E4-11A9426ACDCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -40.42067301118918 32 -37.420143243269244
		 33 -21.917764397096693 57 -27.265595771673272;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_brow_anim_translateX";
	rename -uid "FB19F7F2-4851-4884-10AC-C08A66B9EF5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_brow_anim_translateY";
	rename -uid "55521E97-47D5-AECC-7DC0-A7BAE177EB17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_brow_anim_translateZ";
	rename -uid "67C57E4E-4BB9-92FE-51A8-8785A0C12D96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_1_FK_anim_translateX";
	rename -uid "9C6BA097-49A5-2290-050F-64A38CC234A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_1_FK_anim_translateY";
	rename -uid "E7952069-456D-0FC4-CA6F-D8B235F8EB36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_1_FK_anim_translateZ";
	rename -uid "B482C34C-4B6F-B486-C25E-199ED24AE63A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_1_IK_anim_translateX";
	rename -uid "CA92F49E-400A-1BDB-F5CF-DC8522A5EA21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_1_IK_anim_translateY";
	rename -uid "C8F018C2-4D00-71A0-7883-EFB5EBD01209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_1_IK_anim_translateZ";
	rename -uid "ED11A8C5-465A-3733-B4F1-D0B6F6D6EE56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_2_IK_anim_translateX";
	rename -uid "83BA67F6-4D48-AC55-8EEB-2BBA99D6FBDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_2_IK_anim_translateY";
	rename -uid "1046AACD-4EC2-8E58-64E1-688B9487199D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_2_IK_anim_translateZ";
	rename -uid "6EA8DDC6-4246-05E4-9BD2-789264C1841D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_3_IK_anim_translateX";
	rename -uid "D799990E-4FA7-80C4-91FA-B8A9D1059366";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_3_IK_anim_translateY";
	rename -uid "A9B52466-4D47-0968-3835-7E8CB49F2E59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_3_IK_anim_translateZ";
	rename -uid "258059C1-4348-108A-D31E-6490AEC59C62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_4_IK_anim_translateX";
	rename -uid "41D18ED4-4AC5-C7B8-BEA0-B8BA526CF526";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_4_IK_anim_translateY";
	rename -uid "D49DD9B1-45C3-F378-D96E-A8AAE3CE960C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_4_IK_anim_translateZ";
	rename -uid "9345E1C7-4B99-ED73-AB6E-77BF7AC70E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_5_IK_anim_translateX";
	rename -uid "E170A5B1-4D08-68B9-F43E-70B62E531642";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_5_IK_anim_translateY";
	rename -uid "0A927EFC-4481-59F7-01C2-09AED012B7DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "center_tail_5_IK_anim_translateZ";
	rename -uid "2F651DA8-47E8-AE3A-51B0-F68114DD3557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_arm_IK_anim_translateX";
	rename -uid "99F99195-4527-BBB3-F91E-73A300CE2CE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTL -n "left_arm_IK_anim_translateY";
	rename -uid "DB1A0419-4D71-57B4-C687-F7A4225DF4B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTL -n "left_arm_IK_anim_translateZ";
	rename -uid "C770242B-4A37-4479-3DDC-02AFA2367011";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTL -n "left_arm_PV_anim_translateX";
	rename -uid "491B6B6F-455F-37E3-B738-49AB3C07320B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTL -n "left_arm_PV_anim_translateY";
	rename -uid "79E5DC41-4803-6CF5-4AF3-77B805A9C816";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTL -n "left_arm_PV_anim_translateZ";
	rename -uid "310795B9-45D4-7D1E-5C69-A0A6E0CDB7BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTL -n "left_leg_IK_anim_translateX";
	rename -uid "843653DE-43AA-1D2C-F740-EC9F2916DA29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 17.38703031433025 32 17.38703031433025
		 33 17.38703031433025 57 17.38703031433025;
createNode animCurveTL -n "left_leg_IK_anim_translateY";
	rename -uid "9B9FAB9F-4210-89D4-8159-D79761BBF6C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -130.01411072742255 32 -130.01411072742255
		 33 -130.01411072742255 57 -130.01411072742255;
createNode animCurveTL -n "left_leg_IK_anim_translateZ";
	rename -uid "2B21327C-4234-0857-79EF-93AFB875C0CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -5.6132068665029947e-15 32 -5.6132068665029947e-15
		 33 -5.6132068665029947e-15 57 -5.6132068665029947e-15;
createNode animCurveTL -n "left_leg_PV_anim_translateX";
	rename -uid "AFBC8F0B-4DF3-3DD1-14C2-EDBA080360E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 120.69135679608861 32 120.69135679608861
		 33 120.69135679608861 57 120.69135679608861;
createNode animCurveTL -n "left_leg_PV_anim_translateY";
	rename -uid "1357C90D-4E60-D726-21A0-DE93DB031C43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -48.930006184901991 32 -48.930006184901991
		 33 -48.930006184901991 57 -48.930006184901991;
createNode animCurveTL -n "left_leg_PV_anim_translateZ";
	rename -uid "9F6F1A4A-427C-5C6B-E1C6-ABBB597D1904";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -15.666164203741474 32 -15.666164203741474
		 33 -15.666164203741474 57 -15.666164203741474;
createNode animCurveTL -n "left_wing_flap_1_anim_translateX";
	rename -uid "DDF39B2E-4D76-79FD-FF7C-7D87E110B973";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_1_anim_translateY";
	rename -uid "2858CE92-4C12-80B2-FB4B-CBAA0F82B833";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_1_anim_translateZ";
	rename -uid "A6A1252B-488D-1272-0E34-D4999D8846CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_2_anim_translateX";
	rename -uid "C04F535E-4D81-3CDC-DC86-E79A56C5249D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_2_anim_translateY";
	rename -uid "35183CD8-460B-089C-EFAA-DEAFA9E87787";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_2_anim_translateZ";
	rename -uid "4AAAC871-4BA2-CD0E-319E-1BAF76AD54E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_3_anim_translateX";
	rename -uid "378642BB-49A5-3439-AE2A-A0A9797B56C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_3_anim_translateY";
	rename -uid "2E7107D7-45A4-D146-A2E8-088F5E1024F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_3_anim_translateZ";
	rename -uid "964053A9-4091-A1D9-B1A2-AE90026BE7E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_4_anim_translateX";
	rename -uid "381F7F13-433C-C31F-AC21-1FB42DCB9B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_4_anim_translateY";
	rename -uid "5E663037-489E-3407-5A99-838EB24610B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_4_anim_translateZ";
	rename -uid "F99850D8-4B19-F062-36D9-25906DE40DE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_5_anim_translateX";
	rename -uid "04A3413C-4C25-6ABE-6BE8-10AAC48005C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_5_anim_translateY";
	rename -uid "DA275DDE-4390-0884-85A6-A785BC0609B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "left_wing_flap_5_anim_translateZ";
	rename -uid "8353DBF7-4EBA-011F-A60D-3AB5E6A98815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_arm_IK_anim_translateX";
	rename -uid "FDAFCBE3-4E5B-B2CA-9DC0-4F8FF16F5BAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_arm_IK_anim_translateY";
	rename -uid "3C63787C-4B04-20C8-27DB-0198807FCFE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_arm_IK_anim_translateZ";
	rename -uid "319AB168-4D95-1F29-1187-FDB46A70F6CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_arm_PV_anim_translateX";
	rename -uid "A6AAA044-40EF-964F-2E4E-DB8EF174FBD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_arm_PV_anim_translateY";
	rename -uid "8274EC6E-4854-F161-826A-41B2B1D34F8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_arm_PV_anim_translateZ";
	rename -uid "A9BAC27A-416C-2EEE-4E6E-7E93F68CC171";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_leg_IK_anim_translateX";
	rename -uid "AC34D9B4-463D-1FA9-B398-C195902A595A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 17.387030314330254 32 17.387030314330254
		 33 17.387030314330254 57 17.387030314330254;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_leg_IK_anim_translateY";
	rename -uid "9B659C79-4535-E0E3-E4FD-FF9EA8DE2B66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -130.01411072742255 32 -130.01411072742255
		 33 -130.01411072742255 57 -130.01411072742255;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_leg_IK_anim_translateZ";
	rename -uid "9D7B68A3-49D8-016F-FD96-7E8532EB5AFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 3.275977950789761e-13 32 3.275977950789761e-13
		 33 3.275977950789761e-13 57 3.275977950789761e-13;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_leg_PV_anim_translateX";
	rename -uid "3CFBF805-4A89-091F-8FF5-02BB51A22E2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 120.69135679608863 32 120.69135679608863
		 33 120.69135679608863 57 120.69135679608863;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_leg_PV_anim_translateY";
	rename -uid "C45067C4-451E-0F3F-F920-9BB6EBC957CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -48.930006184901998 32 -48.930006184901998
		 33 -48.930006184901998 57 -48.930006184901998;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_leg_PV_anim_translateZ";
	rename -uid "98B2039E-488D-B6CA-57FD-F6BFE74BA92A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -15.666164203741603 32 -15.666164203741603
		 33 -15.666164203741603 57 -15.666164203741603;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_1_anim_translateX";
	rename -uid "719B059F-48EA-0423-4290-CD82E989D7D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_1_anim_translateY";
	rename -uid "2B5D9CEE-446D-B064-AA38-D4BEAAD844C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_1_anim_translateZ";
	rename -uid "1A86FA28-4DF8-6C0A-575F-6CB2C9FF1AA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_2_anim_translateX";
	rename -uid "18CE760D-49EA-DA4C-667F-E9B1B8AF77B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_2_anim_translateY";
	rename -uid "7855DC1E-48C1-CAB4-6FDC-4EB9C55B2FDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_2_anim_translateZ";
	rename -uid "49C65A6D-4B5A-4C30-F666-3A80FD1C63FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_3_anim_translateX";
	rename -uid "34544D7E-4B91-78F6-D417-BEB206BFE085";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_3_anim_translateY";
	rename -uid "7A201067-4DB7-0AE2-B375-EDBE67068257";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_3_anim_translateZ";
	rename -uid "E2626D4D-4682-023E-84DA-0FA7CCA8C172";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_4_anim_translateX";
	rename -uid "17E2ADE5-4E20-D197-DAEF-E2873D2A034F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_4_anim_translateY";
	rename -uid "091493BD-4DD3-DF1A-1345-00B81737D0BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_4_anim_translateZ";
	rename -uid "8C120C79-48EC-19CB-30B2-259CB59CE9FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_5_anim_translateX";
	rename -uid "13989757-4B90-FEFF-F4FF-6DB636EE507E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_5_anim_translateY";
	rename -uid "46843D68-4D99-73F9-8012-568DAE9D85C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "right_wing_flap_5_anim_translateZ";
	rename -uid "BA0CD1F6-4AFE-4F13-7CF1-698A94575655";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_COG_anim_rotateX";
	rename -uid "4A2D221D-40CE-0BD6-0245-A8AB08262350";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 23.601369679840055 32 14.824678881529538
		 33 14.799429174268681 57 23.538218342480757;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_COG_anim_rotateY";
	rename -uid "C771A018-4FD2-34A4-DB8A-B484C5CE643F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 18.541810578783252 33 18.595153609768314
		 57 -1.7766680623225681;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_COG_anim_rotateZ";
	rename -uid "9FB9FC84-4B16-28B0-B9BF-4EB9CD61E3AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 -50.212795928433707 33 -50.357253381370988
		 57 4.0710961159492838;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_COG_anim_tail_twitch_offset";
	rename -uid "754B808E-447E-3C90-A2BF-3CA022305490";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_COG_anim_tail_twitch_height";
	rename -uid "DCF5D1EC-4506-6816-6904-EFB297E95390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_COG_anim_tail_twitch_length";
	rename -uid "DFE7E11A-40FE-C0B0-0C10-47AF2C3C8F40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 5 32 5 33 5 57 5;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_body_armor_anim_rotateX";
	rename -uid "BCE56793-411D-3B62-ACA8-4EB890AA7F2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_body_armor_anim_rotateY";
	rename -uid "4704ECE0-4B04-6A54-C926-26ACDA802A38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_body_armor_anim_rotateZ";
	rename -uid "C50765E4-46F2-9115-EF98-C1A5F76102F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_body_armor_anim_open_left_side";
	rename -uid "C72F6BB2-4E53-002C-D557-3C85AFA67A67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_body_armor_anim_open_right_side";
	rename -uid "24CBB97E-4A32-6BD3-6990-D7B73B80C6CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_body_armor_anim_hide_spine_anims";
	rename -uid "B4740853-487B-8666-0879-BEB4446C5BD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_body_armor_anim_display_side_anims";
	rename -uid "B26BD46D-4D1A-DD80-97C4-05B92C4E0F17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_body_armor_anim_basket_mode";
	rename -uid "BBD494D8-4CB9-0322-C324-7B9F5B8C865A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_body_armor_anim_display_normal_body";
	rename -uid "0F37A547-4F00-9D35-A606-4985BBB55CA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_body_armor_anim_hide_geo";
	rename -uid "D22C2531-4B78-DA37-A710-0A8F3D446D4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_body_armor_anim_parent_to";
	rename -uid "89E34BB2-45B4-09EE-7289-98B540A31EB7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_brow_anim_rotateX";
	rename -uid "70BC0AAF-4324-9636-CAAC-459D1226DBB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_brow_anim_rotateY";
	rename -uid "5A9EFF11-4CCD-7690-1FCE-468F8F51FEF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_brow_anim_rotateZ";
	rename -uid "B37B1E9D-4D0F-BF55-5983-138F50566140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_hair_tuft_1_anim_rotateX";
	rename -uid "10386195-4001-C070-B48C-C3B6E3D0EDE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_hair_tuft_1_anim_rotateY";
	rename -uid "950DBEDD-45EB-BF06-6655-79A998398327";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_hair_tuft_1_anim_rotateZ";
	rename -uid "CC2B9375-4D78-3950-DFC5-82B7114B8945";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_hair_tuft_2_anim_rotateX";
	rename -uid "187813D3-411B-95D3-3ED4-CCB7EC062B03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_hair_tuft_2_anim_rotateY";
	rename -uid "87F0B717-4D37-219C-CB3D-4C9D5F54ABC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_hair_tuft_2_anim_rotateZ";
	rename -uid "2B831EB3-45FB-548B-2DF6-4AB213EC7B5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_head_anim_rotateX";
	rename -uid "D8381203-45EC-6026-00EA-DB9286D1E9FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_head_anim_rotateY";
	rename -uid "477046AA-486E-6EEF-7A03-25BD64B4643D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_head_anim_rotateZ";
	rename -uid "0FD5281D-4C03-D925-0B87-28BC8D14F16B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_head_anim_parent_to";
	rename -uid "43AE688A-4440-3E07-3365-6BACC7CD46E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_helmet_anim_rotateX";
	rename -uid "2F4FA7DD-461E-E57C-9929-DDB9152EF749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_helmet_anim_rotateY";
	rename -uid "97FF12C4-4A71-A402-B2D4-D7935B7AD5E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_helmet_anim_rotateZ";
	rename -uid "1427C4DC-4256-586F-E6A8-129F81A8AA75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_helmet_anim_hair_tuck";
	rename -uid "C7989336-48B1-9D06-58D6-97A4963C2D77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_helmet_anim_tuck_left_ear";
	rename -uid "E57A7479-4DC2-FE21-7717-8CA37690B470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_helmet_anim_tuck_right_ear";
	rename -uid "8B68B252-4B96-BC31-1991-FF8B92442F42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_helmet_anim_split_helmet";
	rename -uid "076D63C8-49AA-7CE7-CBDD-B0A29F92D1F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_helmet_anim_hide_head_anims";
	rename -uid "4AC114EE-45BB-E89D-2D7A-ABAB0E9420BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_helmet_anim_hide_geo";
	rename -uid "389BB637-4DCB-FA97-10B0-C1BAA8A1F12C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_helmet_anim_parent_to";
	rename -uid "F7370700-406E-BB21-0569-FFA066BF141B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_jaw_anim_rotateX";
	rename -uid "8DF46EEF-4C2C-359D-19E5-909D1B1BEF6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_jaw_anim_rotateY";
	rename -uid "F9C0CABC-4DFD-1C5B-94C3-6883BC399624";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_jaw_anim_rotateZ";
	rename -uid "8DB4FA62-4A68-403C-99CC-6197CD951570";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_left_anim_rotateX";
	rename -uid "A6FC62F7-47CC-9C5D-D59B-60B015C2FA0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_left_anim_rotateY";
	rename -uid "8FC89BB2-4F68-8FD3-D3FE-C39429B6090B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_left_anim_rotateZ";
	rename -uid "76E05AE9-4E16-2F58-62DC-A9A88C9842A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_left_anim_rotateX";
	rename -uid "51434D35-4A3F-DF59-1EAD-F3BFFB92BF09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_left_anim_rotateY";
	rename -uid "7E7E8B0C-41BF-9C6C-64E9-A6BE04F2513C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_left_anim_rotateZ";
	rename -uid "A50C97C6-4FB3-E4DC-906D-EA86A196CE77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_left_corner_anim_rotateX";
	rename -uid "B707A42F-42BF-957B-A334-4A8196E50FF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_left_corner_anim_rotateY";
	rename -uid "ECCC7124-4860-DE9E-5225-C9B1EE596046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_left_corner_anim_rotateZ";
	rename -uid "F88BE553-4C02-6838-33B6-719182F24F79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_mouth_lower_lip_nurb_visibility";
	rename -uid "32D9DC07-466F-DADC-5379-91A6362D2A7C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_middle_anim_rotateX";
	rename -uid "925E51DA-4EF0-6A4E-6B0E-558A4DCA5373";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_middle_anim_rotateY";
	rename -uid "7B3524F8-43C6-FD68-7805-1B9EB7224451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_middle_anim_rotateZ";
	rename -uid "1A9E2711-4565-F9CB-E5B9-4EAC6B18D47C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_right_anim_rotateX";
	rename -uid "58F0B37C-4A4F-92B5-EDBA-70ADA2EEB5F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_right_anim_rotateY";
	rename -uid "0866023F-4B9C-CD48-426D-58A17353AA6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_right_anim_rotateZ";
	rename -uid "93A143AB-43F6-F819-DFBA-EE83B2126006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_right_corner_anim_rotateX";
	rename -uid "CB726FB9-48F3-A348-CBFA-9FAD335ECF5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_right_corner_anim_rotateY";
	rename -uid "601B3CE3-42E9-8C3B-1C56-1993655CDA71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_lower_right_corner_anim_rotateZ";
	rename -uid "194F52AA-4EB7-9A77-A9FF-AFAF141F9E01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_right_anim_rotateX";
	rename -uid "02EE81DE-48AA-E030-9507-DAAC06E45634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_right_anim_rotateY";
	rename -uid "C1AEBC31-401A-13CA-4061-BEA7316A8880";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_right_anim_rotateZ";
	rename -uid "0FD22B8F-4924-C585-5632-5993512885AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_left_anim_rotateX";
	rename -uid "450B06A1-4665-579A-16CD-FCA5BCB30C52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_left_anim_rotateY";
	rename -uid "4B604C4C-40AA-CB63-9E39-129AE5168C43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_left_anim_rotateZ";
	rename -uid "A7470EAC-4BE6-6538-81CA-969BBC501E8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_left_corner_anim_rotateX";
	rename -uid "AB937FCE-4CBF-2EFC-1CC3-D0A1D3780B9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_left_corner_anim_rotateY";
	rename -uid "A9CB25CB-4CE9-3CE3-C120-1BA25CA65393";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_left_corner_anim_rotateZ";
	rename -uid "05E2D35D-4D99-EC28-C72C-A4ABEE43B927";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_mouth_upper_lip_nurb_visibility";
	rename -uid "1EAFEB3A-49B3-F491-AC80-AAAD294C9945";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_middle_anim_rotateX";
	rename -uid "E89939D6-43AB-12AD-4EAF-1797A5C03833";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_middle_anim_rotateY";
	rename -uid "8ED7A6AF-48C6-51D6-CE5E-EFB60EC3CD9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_middle_anim_rotateZ";
	rename -uid "C4F2835F-41DE-6D12-AEA7-788380D196F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_right_anim_rotateX";
	rename -uid "234C7ADA-4295-DBE6-3F9E-C68D6C69DBF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_right_anim_rotateY";
	rename -uid "554D252C-419E-C8DE-B721-079629C430C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_right_anim_rotateZ";
	rename -uid "4D5E96A0-4CCF-843A-3E57-B181F9F3F871";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_right_corner_anim_rotateX";
	rename -uid "8F4FBC06-4E47-30F0-43B7-F98FEAFC0D0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_right_corner_anim_rotateY";
	rename -uid "DFB8F731-4D86-3849-11C8-09917443529D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_mouth_upper_right_corner_anim_rotateZ";
	rename -uid "881878C8-4DF2-9673-0DA5-ECAAFE7AC291";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_neck_1_anim_rotateX";
	rename -uid "02F6AAA5-4674-9E43-6B6F-21AE7A126860";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_neck_1_anim_rotateY";
	rename -uid "3FCFCE8B-4D1D-9344-B86E-0A8C00D0D481";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 -143.84580207051496 33 -144.25963280426743
		 57 -144.25963280426743;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_neck_1_anim_rotateZ";
	rename -uid "17D87B08-4B98-E8C3-BECF-429E7337F9A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_neck_1_anim_parent_to";
	rename -uid "95E48A89-4573-811E-BC11-AE8EFF5A2176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_neck_2_anim_rotateX";
	rename -uid "D9EC932C-451E-D421-C2D1-B29B6E38FC15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -42.556441657626493;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_neck_2_anim_rotateY";
	rename -uid "1999D068-4ADD-4449-D474-5CAEB7A21A11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 211.47071348950718;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_neck_2_anim_rotateZ";
	rename -uid "BD8D29D8-4EC4-EAA4-9290-12828FB538F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 3.8422293947062229 33 3.8532831243720844
		 57 -115.7695315986398;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_nose_anim_rotateX";
	rename -uid "C6398B60-48F8-720B-098F-78BC1D095B2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_nose_anim_rotateY";
	rename -uid "47AF4D4C-4A1A-F0A0-CA6D-428846E86815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_nose_anim_rotateZ";
	rename -uid "EB17CE48-42EA-09C1-18AC-069822A9FEC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_pelvis_anim_rotateX";
	rename -uid "F6F81510-4DCB-4DF2-E37F-3EA133EE4FA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_pelvis_anim_rotateY";
	rename -uid "9248120D-4388-F350-9477-F892EE57B282";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_pelvis_anim_rotateZ";
	rename -uid "4B9E536E-4FBF-19B7-70B7-42AD735312CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_1_anim_rotateX";
	rename -uid "C3C8BA19-4A73-978A-A51A-E680061D625B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_1_anim_rotateY";
	rename -uid "1AB8B1B3-4433-DD14-4D82-8490C5C2DB8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_1_anim_rotateZ";
	rename -uid "B7775878-4424-FE0F-CE2D-F3A6FA4EF918";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_spine_1_anim_parent_to";
	rename -uid "8AD05B7E-48D1-DEC7-123B-58A53E5237DC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_2_anim_rotateX";
	rename -uid "B565D337-42E8-EEFA-0B16-9B8828659AB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_2_anim_rotateY";
	rename -uid "93F25A7A-4D07-CDBA-A446-159EE79650B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_2_anim_rotateZ";
	rename -uid "4B71CDF9-4107-4F4F-0D43-16A71C16C285";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_spine_2_anim_parent_to";
	rename -uid "2F43703B-4BED-5AE4-F198-7AA092105DDF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_3_anim_rotateX";
	rename -uid "C06509DA-447E-4D00-5CB9-27949ED29D8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_3_anim_rotateY";
	rename -uid "B99FBF82-491B-871B-03D0-3B9A1A5BA7DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_spine_3_anim_rotateZ";
	rename -uid "AC212BD5-4447-8DE0-5890-F0805875082A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_spine_3_anim_parent_to";
	rename -uid "30153F0E-40BB-4276-8C81-218129677CDF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_1_FK_anim_rotateX";
	rename -uid "B6C46594-42F1-1F94-6ABC-00B4C18F4A04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_1_FK_anim_rotateY";
	rename -uid "52BC6995-46B8-2789-DB4B-82A1CB3871A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 -2.9994264896516194 33 -3.0080555552703756
		 57 -3.0080555552703756;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_1_FK_anim_rotateZ";
	rename -uid "F8991F18-42C8-FE23-12CC-4181A506D07F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -79.138790492509102 32 71.357076082527044
		 33 71.790038421330181 57 71.790038421330181;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_1_FK_anim_stretch";
	rename -uid "3190E6DB-4C4F-57CF-B6BC-08992B3B84BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_1_FK_anim_center_tail_twitch_influence";
	rename -uid "BAF86104-49E2-8558-69C9-F99D60F59CA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_1_IK_anim_rotateX";
	rename -uid "FC2F3E5E-45A1-53FB-7E29-F5841322B25C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_1_IK_anim_rotateY";
	rename -uid "1972C827-4AF9-9169-0F19-A1B35AF4CED3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_1_IK_anim_rotateZ";
	rename -uid "7E358B32-4CB7-39E8-97DC-6B998C180F8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_1_IK_anim_parent_to";
	rename -uid "D1980ED1-4F19-139A-EAB3-0D9EE407BC5D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_2_FK_anim_rotateX";
	rename -uid "9EB483A9-4E1E-76FE-A1C3-4FA0191989D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 -45.428800336717593 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_2_FK_anim_rotateY";
	rename -uid "9C398DA7-4F83-78E3-1039-65BFE6F1C738";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 47.601652280461607 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_2_FK_anim_rotateZ";
	rename -uid "D63C4146-4A14-AD7D-1071-9D8D9E4CADB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -34.864728894130344 32 -94.58639534353479
		 33 -34.864728894130344 57 -34.864728894130344;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_2_FK_anim_stretch";
	rename -uid "CDD69930-4FAE-5499-B00D-4C943634626C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_2_FK_anim_center_tail_twitch_influence";
	rename -uid "14B59741-41D1-7D76-1489-90A9D801D25C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_2_IK_anim_rotateX";
	rename -uid "105C535B-4976-8134-8345-35AA8ACD17CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_2_IK_anim_rotateY";
	rename -uid "3365AEC9-4FAE-038A-0C97-58B167D855E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_2_IK_anim_rotateZ";
	rename -uid "78B2FA0A-4109-2274-A833-5C8ED517F8DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_2_IK_anim_parent_to";
	rename -uid "512F2013-4661-B426-AD34-D2B3AD72EF02";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_3_FK_anim_rotateX";
	rename -uid "B3007A97-4012-5A25-A8B9-BA87A0F7EC12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_3_FK_anim_rotateY";
	rename -uid "4F84BE2D-444F-93DC-855F-B696A262E5E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_3_FK_anim_rotateZ";
	rename -uid "A95109A8-494E-4F67-85D2-1382910A70FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -16.250582377075894 32 -16.250582377075894
		 33 -16.250582377075894 57 -16.250582377075894;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_3_FK_anim_stretch";
	rename -uid "7D13C066-4BE2-8FFE-CE8D-E6B0A42345DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_3_FK_anim_center_tail_twitch_influence";
	rename -uid "D0F1397B-48F5-4813-B690-1C8A67DEB25B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_3_IK_anim_rotateX";
	rename -uid "97752DB7-49D4-16A1-59B5-73BD3290475F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_3_IK_anim_rotateY";
	rename -uid "9028B6E6-4104-CE7F-1B69-FE889BCFDA43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_3_IK_anim_rotateZ";
	rename -uid "C8F9174E-4FD7-D48B-EC83-59BF6E6C40E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_3_IK_anim_parent_to";
	rename -uid "28B6F654-4212-6B5F-2BD3-0EB657CCED02";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_4_FK_anim_rotateX";
	rename -uid "1CF6CC2D-4132-FF54-E9BD-CDACEC159D33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_4_FK_anim_rotateY";
	rename -uid "CDEAFAE7-422C-405C-94B8-26B8A3CF2998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_4_FK_anim_rotateZ";
	rename -uid "43C099A9-4C9E-D8EF-0FB1-DB9FF9608FA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 22.413452940031789 32 22.413452940031789
		 33 22.413452940031789 57 22.413452940031789;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_4_FK_anim_stretch";
	rename -uid "66E160AC-492E-8A6B-2DB7-388600B49DF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_4_FK_anim_center_tail_twitch_influence";
	rename -uid "AF19CC34-4D38-4B2B-E8A8-77BCC10A31EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_4_IK_anim_rotateX";
	rename -uid "8BCE9CBB-414A-7FFC-4360-149050553ADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_4_IK_anim_rotateY";
	rename -uid "08B266C2-48A7-1BCF-3E03-DCBCB5670E26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_4_IK_anim_rotateZ";
	rename -uid "CCD381CD-4E32-C83D-2CE2-92B63FC526B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_4_IK_anim_parent_to";
	rename -uid "4F7BD88C-447C-139D-7D82-D59438B3F741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_5_FK_anim_rotateX";
	rename -uid "4307B582-4E08-2E2A-D051-6B840FF4763C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_5_FK_anim_rotateY";
	rename -uid "4CAC1F1F-44DA-E980-212D-6887247FEA1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_5_FK_anim_rotateZ";
	rename -uid "DBA61787-4012-A68E-592D-5A90C8FCBB50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 29.04490209043831 32 29.04490209043831
		 33 29.04490209043831 57 29.04490209043831;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_5_FK_anim_stretch";
	rename -uid "66BE9AFF-4B2E-4017-5E7B-3B8CD2EC35C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_5_FK_anim_center_tail_twitch_influence";
	rename -uid "8EAFF081-45C1-41B8-61CD-65956371709F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_5_IK_anim_rotateX";
	rename -uid "4E4C99C6-4653-AAEC-41AD-68B0E3D08FFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_5_IK_anim_rotateY";
	rename -uid "20B3E7D6-4544-36B5-C868-A7907BA2A8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_5_IK_anim_rotateZ";
	rename -uid "1A70BBE4-4102-73A7-07A8-1C9B0C51A010";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_5_IK_anim_parent_to";
	rename -uid "A068E92F-47F1-E321-EAE9-46AEE3DF548D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_6_FK_anim_rotateX";
	rename -uid "0AB64076-44FF-ADCD-54BE-E68E3C530A6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_6_FK_anim_rotateY";
	rename -uid "7BF19016-437A-6357-FE92-B997B2039C85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_6_FK_anim_rotateZ";
	rename -uid "DA7C1BB4-4907-47D6-3BA9-4C8A33B28091";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 28.404902926351145 32 28.404902926351145
		 33 28.404902926351145 57 28.404902926351145;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_6_FK_anim_stretch";
	rename -uid "DC2FE45B-4DA7-DDAA-F651-B7A11E8B45ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_6_FK_anim_center_tail_twitch_influence";
	rename -uid "7744BD8D-4672-A716-DD98-E1B816898FFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_7_FK_anim_rotateX";
	rename -uid "161DB601-46CC-1124-10F2-A0A90992A5B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_7_FK_anim_rotateY";
	rename -uid "1E5D1A0A-41AB-0796-C5C0-2E93122A176D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_7_FK_anim_rotateZ";
	rename -uid "1F2EE3DC-4A3C-1141-515D-3E9364D9B6E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 41.054622607933403 32 41.054622607933403
		 33 41.054622607933403 57 41.054622607933403;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_7_FK_anim_stretch";
	rename -uid "E35C4752-492A-3A28-17A4-54B129C0F1D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_7_FK_anim_center_tail_twitch_influence";
	rename -uid "B2A14561-404A-0C80-BB1E-F1B7DA99237D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "center_tail_nurb_visibility";
	rename -uid "E2A3E76D-409A-6370-8689-2EA6B19C3D01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_A_anim_rotateX";
	rename -uid "BFE2E9EB-44C8-54D5-1C5C-A7B4D342A680";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_A_anim_rotateY";
	rename -uid "0AE854A0-4D5E-7DCE-C2BB-26BB99810101";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_A_anim_rotateZ";
	rename -uid "8AAFDF10-4B6B-1E6C-84C3-9F8C1AAFE6DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_B_anim_rotateX";
	rename -uid "0D6A4DCA-4177-F6A9-3F95-0E935EFCE712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_B_anim_rotateY";
	rename -uid "663B51AC-4663-5EEF-720D-B387E4E13A3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_B_anim_rotateZ";
	rename -uid "6F0C1A96-47B9-E04D-C1B2-488E9916F648";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_C_1_anim_rotateX";
	rename -uid "1D96164D-4238-321B-1DC3-049A1B8267B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_C_1_anim_rotateY";
	rename -uid "D4BB3A2A-49C5-4850-69E5-468B59C1E795";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_C_1_anim_rotateZ";
	rename -uid "C2F44A02-4A40-5B9A-F322-90A01E4477AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_C_2_anim_rotateX";
	rename -uid "1F237138-4A3C-1D80-DE0A-81923A213DE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_C_2_anim_rotateY";
	rename -uid "FE93D1E6-4F1C-F02F-935A-CE8B58C51BDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_C_2_anim_rotateZ";
	rename -uid "8F9A2194-4788-705A-C679-86A188D8EE27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_D_1_anim_rotateX";
	rename -uid "F02309CC-45B1-9364-3376-A693E057E179";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_D_1_anim_rotateY";
	rename -uid "6D9653CA-4E0A-68D6-0373-24A9CD3B8513";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_D_1_anim_rotateZ";
	rename -uid "C7E67043-45EE-F78E-B717-E9BBD06DDBDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_D_2_anim_rotateX";
	rename -uid "4677DD67-48A7-571C-0DE4-94B514DC0F80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_D_2_anim_rotateY";
	rename -uid "B06845D3-4F88-1BD7-4D72-CE9C51E86086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_D_2_anim_rotateZ";
	rename -uid "D75B837B-4DD5-65EB-00CE-A68034C98C93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_E_1_anim_rotateX";
	rename -uid "64DCB0F5-4C52-94DB-A295-5688CAE83D64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_E_1_anim_rotateY";
	rename -uid "1DBA7F0C-4D55-7D13-0C43-BABFD18CAD2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_E_1_anim_rotateZ";
	rename -uid "D30A0A72-449D-8663-F0B6-50979DB880CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_E_2_anim_rotateX";
	rename -uid "481DA070-4B1E-58CE-C3C8-A5802B1A8D0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_E_2_anim_rotateY";
	rename -uid "68E5FECA-403E-906E-0FA4-13A5E9E1D29B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_E_2_anim_rotateZ";
	rename -uid "2EEA18F2-4009-E5CD-0CDD-6AAD4DD33763";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_F_anim_rotateX";
	rename -uid "7595762A-4BC7-A021-EA3A-58A0E750D1FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_F_anim_rotateY";
	rename -uid "0F0AFB70-4377-8E9D-8296-BAB6D77B49ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_F_anim_rotateZ";
	rename -uid "DDE0F0B1-423C-F60E-AC1B-2B94A1A15D77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_G_anim_rotateX";
	rename -uid "4F4075F6-45E0-8F58-2805-45B75594FC65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_G_anim_rotateY";
	rename -uid "69691C2A-4198-C99C-0E84-6299D8823726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_tuft_G_anim_rotateZ";
	rename -uid "3D59D19A-4466-2C6A-B4C7-38B920933C1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_upper_hair_tuft_anim_rotateX";
	rename -uid "BD14AB96-4C49-958D-2EB8-2AA03686C3F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_upper_hair_tuft_anim_rotateY";
	rename -uid "29E306C9-46B1-1A00-402A-DEB7CEF5275C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_upper_hair_tuft_anim_rotateZ";
	rename -uid "9F9E509F-41DD-22D4-5ADB-C1AE653B5A2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_1_FK_anim_rotateX";
	rename -uid "338CB358-46DA-C3F7-8F05-4CA25D8F1DC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -66.918678602976101;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_1_FK_anim_rotateY";
	rename -uid "E8A33D1F-42BB-6AEF-716B-BDB0B764349B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -68.738243370241179 32 -68.738243370241179
		 33 -68.738243370241179 57 74.250590044242074;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_1_FK_anim_rotateZ";
	rename -uid "FF2C4378-4378-E4AB-6E35-AA882132826C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 18.542415390373797;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_arm_1_FK_anim_stretch";
	rename -uid "F48C94D3-4425-A464-FFB6-079044B5682F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_arm_1_FK_anim_parent_to";
	rename -uid "AC2EBB49-428D-C18A-FD5A-35BDFABE2EAB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_2_FK_anim_rotateZ";
	rename -uid "F31D5CDD-44E4-78A0-8BB9-298C2AE60A3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_arm_2_FK_anim_stretch";
	rename -uid "4973C888-48B0-AE24-0441-D59CB518517B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_3_FK_anim_rotateX";
	rename -uid "9EB8E973-4ED5-09C6-7A98-F1B75B0B9141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_3_FK_anim_rotateY";
	rename -uid "205B00E9-4900-F0AC-B546-E78E37042EDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_3_FK_anim_rotateZ";
	rename -uid "291C140E-4748-6511-AB10-92A3541A400C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_IK_anim_rotateX";
	rename -uid "BADDE062-4021-F4F1-F21F-18B2C28B9A3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTA -n "left_arm_IK_anim_rotateY";
	rename -uid "9B41DEC3-4986-3BAE-457A-06B722E99A79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTA -n "left_arm_IK_anim_rotateZ";
	rename -uid "F86BE37E-4736-4807-FD05-05A31DDD8F99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_arm_IK_anim_stretch";
	rename -uid "325C7500-4763-133F-7C5C-06B8A1EBD308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_arm_IK_anim_soft_IK";
	rename -uid "385E941E-42BF-BD9F-799A-029C089858DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_arm_IK_anim_parent_to";
	rename -uid "130F7022-41BF-746C-C8D6-ACA0B331A56C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_arm_PV_anim_rotateX";
	rename -uid "30346BF6-4C60-BEAE-B901-B2BD29781E6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTA -n "left_arm_PV_anim_rotateY";
	rename -uid "C90CEA74-4E3B-DC2C-B498-77A66AB9158F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTA -n "left_arm_PV_anim_rotateZ";
	rename -uid "3FA45A35-47FA-C8A1-CA79-1AB7DEC05899";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_arm_PV_anim_pole_vector_lock";
	rename -uid "BDE08368-4629-01AA-EEED-D5B49E1D559A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_arm_PV_anim_FK_mode";
	rename -uid "750206EC-4E64-A827-EF7F-5FBD55464676";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_arm_PV_anim_parent_to";
	rename -uid "A886C159-454C-3170-2694-5ABE42BA2F5A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_bib_armor_anim_rotateX";
	rename -uid "EFD5453C-4BCB-B6B6-72B7-FE9D2CB1EFD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_bib_armor_anim_rotateY";
	rename -uid "54A4E0B3-4239-3B68-3ECB-788D7A51520E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_bib_armor_anim_rotateZ";
	rename -uid "1D10FCEC-45DA-22E0-CD79-929D945F90F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_bib_armor_anim_parent_to";
	rename -uid "594BB36C-4E04-9CB7-38D6-B294371B814A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_body_armor_anim_rotateZ";
	rename -uid "A8A97D54-4B59-20AE-07EC-4DAEAD5B29B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_1_anim_rotateX";
	rename -uid "2567D441-4052-BCF7-BFAD-949A6A848F43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_1_anim_rotateY";
	rename -uid "91E5A739-4CB0-4074-22C8-C4853D16688E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_1_anim_rotateZ";
	rename -uid "2420942C-454C-2D98-8594-7284F9204B01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_2_anim_rotateX";
	rename -uid "813478AB-4F55-BC5C-77DB-7AB4DE325AEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_2_anim_rotateY";
	rename -uid "1139FE26-48EF-0F45-C19E-A2B33CA8E4EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_2_anim_rotateZ";
	rename -uid "D3A947A7-4E53-C6BE-CFD0-0E80B409342A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_3_anim_rotateX";
	rename -uid "5B70F71D-421E-DEFE-9373-FEA07CB435C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_3_anim_rotateY";
	rename -uid "284D9B4C-47EF-56CE-02D8-9ABD9825D563";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_brow_3_anim_rotateZ";
	rename -uid "7633371E-4BA6-5A2C-827A-ED95B61BE78A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_cheek_1_anim_rotateX";
	rename -uid "9236C29B-4184-97E0-021B-BE8CCB0F24A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_cheek_1_anim_rotateY";
	rename -uid "09176458-412B-CDE1-54DE-20AF1550983E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_cheek_1_anim_rotateZ";
	rename -uid "39FA9FB7-4F8F-BCEE-EAD1-F6BFB1D7F80F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_cheek_2_anim_rotateX";
	rename -uid "B742BCA1-4DF6-549E-4D18-64B1EFC51E92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_cheek_2_anim_rotateY";
	rename -uid "AA993A72-48BE-0E74-B241-9BBACD87EE89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_cheek_2_anim_rotateZ";
	rename -uid "08D35D3D-428B-4388-32F2-1B8AE6307B8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_clavicle_anim_rotateX";
	rename -uid "AA176E9D-4A17-FC5E-69C5-D28E79AD18E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_clavicle_anim_rotateY";
	rename -uid "E3946CD4-449A-9499-C561-48A3ADA27066";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_clavicle_anim_rotateZ";
	rename -uid "32FB4E4E-468E-E3B3-F1D5-D6B2147BA121";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_clavicle_anim_stretch";
	rename -uid "5C70EFA4-4AE2-99BF-2BFA-6A9B51893565";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_ear_1_anim_rotateX";
	rename -uid "73A02575-4D77-3CF5-6D02-C295AAC40323";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_ear_1_anim_rotateY";
	rename -uid "39FA64FB-43AE-B927-4ACB-948A05C9D5A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_ear_1_anim_rotateZ";
	rename -uid "BD23ED6E-4F85-5E06-3356-37885B6D6BEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_ear_2_anim_rotateX";
	rename -uid "3DE4B4B4-4975-3895-8480-4BAB20A341BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_ear_2_anim_rotateY";
	rename -uid "7B32626D-4284-BC3F-5E25-0EA848BDA103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_ear_2_anim_rotateZ";
	rename -uid "9877E84C-4177-4667-9318-0F8447FAEEA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_elbow_armor_anim_rotateX";
	rename -uid "D8EEA43F-4296-7919-AC12-EBAE73048D9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_elbow_armor_anim_rotateY";
	rename -uid "7BF6FD47-4FAF-A0D5-E5CD-EAAD56530EC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_elbow_armor_anim_rotateZ";
	rename -uid "68A74046-4871-D1E4-A52D-D5BD167118C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_elbow_armor_anim_open_latch";
	rename -uid "D12E3AD8-4B6F-DC43-D6EA-D7855DDA5A67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_elbow_armor_anim_hide_arm_anims";
	rename -uid "42941CED-4748-7450-88C9-79AC76F5D31D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_elbow_armor_anim_display_latch_anim";
	rename -uid "5848E9FA-482E-8F39-991B-3896958A54F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_elbow_armor_anim_hide_geo";
	rename -uid "E801307B-491A-8A02-ED9F-0389794F6765";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_elbow_armor_anim_parent_to";
	rename -uid "246ED2D6-4355-3D8E-F620-24BF17F87833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_elbow_armor_latch_anim_rotateZ";
	rename -uid "377BB740-49AB-3BDB-6119-A7BE952B4435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_eyebrow_anim_rotateX";
	rename -uid "2C412193-49E9-E2FB-D231-5DB69FB27B07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_eyebrow_anim_rotateY";
	rename -uid "2187F657-426D-E1AC-6C5A-02A79613D064";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_eyebrow_anim_rotateZ";
	rename -uid "9549DD20-4970-17CF-5974-1F98D0E7B045";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_hair_tuft_anim_rotateX";
	rename -uid "1C5082E8-47DB-522E-19B8-E4ABC1E3A498";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_hair_tuft_anim_rotateY";
	rename -uid "7F861727-4E36-943A-8EF3-0193076DFF80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_hair_tuft_anim_rotateZ";
	rename -uid "5EA1770A-4FC6-E740-AB9B-94827DFCFAF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_helmet_piece_anim_rotateX";
	rename -uid "51E6EDD8-474C-39F0-74DF-FB843DC6A923";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_helmet_piece_anim_rotateY";
	rename -uid "C96E07D7-45CE-F800-E0F6-EA8B5B229251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_helmet_piece_anim_rotateZ";
	rename -uid "C1F02BAB-48A6-9127-39CD-B9BC04D6733B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_1_anim_rotateX";
	rename -uid "30A8FB22-484C-6E81-AFA6-F6B99BEC8661";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_1_anim_rotateY";
	rename -uid "08E1E5B0-40C1-0746-EB6A-45A6C75F66E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_1_anim_rotateZ";
	rename -uid "06CBEBCC-4C54-B5AB-7370-5AA60EC46265";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_2_anim_rotateX";
	rename -uid "FD5CF3B1-469A-FB37-6360-F0A1A826258F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_2_anim_rotateY";
	rename -uid "EC6AB32F-4288-76BD-3D7F-5CAF01CDF170";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_2_anim_rotateZ";
	rename -uid "BBC76D91-44A1-D892-D833-44AA8F15F8C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -25.566541701917565;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_3_anim_rotateX";
	rename -uid "81F4E78A-49CA-876B-6A71-B1BE08C15E5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_3_anim_rotateY";
	rename -uid "22FFCA21-406D-75F5-D85B-27B2B1F5054F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_3_anim_rotateZ";
	rename -uid "8666C3DE-4A06-3ED4-8D29-7C81098538F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_metacarpal_anim_rotateX";
	rename -uid "5775FA99-47FC-DF4D-16F2-D8838AA1C9C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_metacarpal_anim_rotateY";
	rename -uid "21DDD79F-4803-7867-97A6-038620CDBA22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_index_metacarpal_anim_rotateZ";
	rename -uid "B455699B-4ECC-1051-6442-1AB346736EDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_inner_eyelid_anim_rotateX";
	rename -uid "46C3DCFE-4227-CD25-3B55-5DB673E3BD2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_inner_eyelid_anim_rotateY";
	rename -uid "F27A3AF1-45F7-E977-F0A8-24825B858986";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_inner_eyelid_anim_rotateZ";
	rename -uid "968876D9-494C-DC11-8213-EBB70529CC27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_1_FK_anim_rotateX";
	rename -uid "ACD3F62C-4A99-C38D-423B-499119692F9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_1_FK_anim_rotateY";
	rename -uid "3D38B822-47DB-821C-C029-01A48D1E8747";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_1_FK_anim_rotateZ";
	rename -uid "B907DF86-4F6B-004E-BD14-D499415C7D76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_leg_1_FK_anim_stretch";
	rename -uid "F8A1F008-4AC0-2F34-7B01-B2923EA37457";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_leg_1_FK_anim_parent_to";
	rename -uid "D1F406B1-4656-DFFF-3043-B6B369D7C409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_2_FK_anim_rotateZ";
	rename -uid "D4D01C35-4A7E-2D66-DB8A-228365026C67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "left_leg_2_FK_anim_stretch";
	rename -uid "B790395A-4F44-FB88-48D9-5DAA1BD74AD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_3_FK_anim_rotateX";
	rename -uid "E20A4D04-4F2D-6602-4521-BDA4C7B6F1E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_3_FK_anim_rotateY";
	rename -uid "6E0B58A4-428E-3430-C2DB-87944567D460";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_3_FK_anim_rotateZ";
	rename -uid "D399AC3A-4938-0A02-3737-9FAB68427819";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_4_FK_anim_rotateX";
	rename -uid "C79DCE1C-42BF-413C-99EC-D3A725BD51B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_4_FK_anim_rotateY";
	rename -uid "6D34F7FD-425B-4DE9-4757-2D8AF8861DE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_4_FK_anim_rotateZ";
	rename -uid "2D7527DD-4B25-5043-9AA7-E09D4E48E615";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_5_FK_anim_rotateX";
	rename -uid "5F0A66C3-4E3A-00D7-71F0-2B8554903A72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_5_FK_anim_rotateY";
	rename -uid "9C9836AB-43A3-DC3B-2EF4-6DBFF7CF229F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_5_FK_anim_rotateZ";
	rename -uid "2B956F36-4EC0-5F9F-C03F-5481F6A0761C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_IK_anim_rotateX";
	rename -uid "C977D865-4D94-3E1D-7EBD-2386AEBBA4B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTA -n "left_leg_IK_anim_rotateY";
	rename -uid "5F1D72BD-4C03-7BAF-3353-7F9B525189DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTA -n "left_leg_IK_anim_rotateZ";
	rename -uid "CBDE1EEF-42F1-FD06-E40A-8AB09DE49521";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -23.601369679840065 32 -23.601369679840065
		 33 -23.601369679840065 57 -23.601369679840065;
createNode animCurveTU -n "left_leg_IK_anim_roll_anim_vis";
	rename -uid "D0957249-4EFF-19C1-28A7-1FAEB63CB492";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_heel_to_toe";
	rename -uid "4447CEEE-43BE-638D-58DB-4D864E78C5B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_balltoe_lift";
	rename -uid "C17BDEF4-4251-58B1-E855-57AA68B72FD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_toe_lift";
	rename -uid "0E16CD08-4A3B-ADB8-A895-2E98F0FD58B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_side_to_side";
	rename -uid "B04169C6-4F7E-C9AC-319B-3F89BE00063D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_heel_pivot";
	rename -uid "FD9B3E0A-4228-1DEC-B774-CBAEFA027A09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_toe_pivot";
	rename -uid "E8675D5D-408F-6AE7-217D-55BC9CCEDBBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_lean";
	rename -uid "6AA3CC18-4B67-E79F-F80D-F68C9F887D52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_stretch";
	rename -uid "39D17B5F-452F-0108-54B9-3B86B403418E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_soft_IK";
	rename -uid "921199A2-4839-7C32-E7FC-EF9D313C25AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_IK_anim_parent_to";
	rename -uid "AA2405DC-4CBD-C48A-AA54-ABA96AC0C120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_PV_anim_rotateX";
	rename -uid "B555901C-4E61-4076-2112-01944432F726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.4941781180737919 32 2.4941781180737919
		 33 2.4941781180737919 57 2.4941781180737919;
createNode animCurveTA -n "left_leg_PV_anim_rotateY";
	rename -uid "253EF778-4476-64D6-76EC-42AE66E75568";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.3057264853462336 32 -1.3057264853462336
		 33 -1.3057264853462336 57 -1.3057264853462336;
createNode animCurveTA -n "left_leg_PV_anim_rotateZ";
	rename -uid "67BCDE4D-4064-9AB1-433A-9DAC3838DC56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 23.406818471318811 32 23.406818471318811
		 33 23.406818471318811 57 23.406818471318811;
createNode animCurveTU -n "left_leg_PV_anim_pole_vector_lock";
	rename -uid "32DF4ED8-4DCB-D6CD-C3CC-A2A33402D7D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_PV_anim_FK_mode";
	rename -uid "4E283333-4BF5-0098-FC06-7F8E95C3226B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
createNode animCurveTU -n "left_leg_PV_anim_parent_to";
	rename -uid "616539CC-4DB7-5FE3-7265-C4AC7B4B7C78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_back_pivot_anim_rotateX";
	rename -uid "6FAE0402-45B4-F0E4-0201-1AA7F3BFC8A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_back_pivot_anim_rotateY";
	rename -uid "A1F1CB3B-4FBB-AEA4-DE8D-9595A06F1A68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_back_pivot_anim_rotateZ";
	rename -uid "837AC2D9-4A6C-5237-DE3E-518D3CC162BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_center_pivot_anim_rotateX";
	rename -uid "AABE03DB-47C1-4F04-D924-E0BF90504A44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_center_pivot_anim_rotateY";
	rename -uid "F3C98BD5-4D21-4265-6D24-5BAA51AA3A78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_center_pivot_anim_rotateZ";
	rename -uid "6B525BB5-4F98-8E21-841C-C4A8BE6E4E15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_digit_pivot_anim_rotateX";
	rename -uid "547220EF-4D1C-FF49-F79E-738CDC3358BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_digit_pivot_anim_rotateY";
	rename -uid "3986DFAC-48DF-6D9D-F19A-AB9E8D4CD421";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_digit_pivot_anim_rotateZ";
	rename -uid "CC360241-4407-7442-129A-5E9588F9208A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_front_pivot_anim_rotateX";
	rename -uid "7B7F795A-4751-A062-ACD1-7B9490424D63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_front_pivot_anim_rotateY";
	rename -uid "6917203D-4CB6-B818-3374-429527EFB29E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_front_pivot_anim_rotateZ";
	rename -uid "8EEBAC11-4846-9166-DE0E-A0AD4F173FA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_inner_pivot_anim_rotateX";
	rename -uid "2DBB63AB-41BB-9981-213C-01B708F964B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_outer_pivot_anim_rotateX";
	rename -uid "28D1C1E1-4BC3-DC09-A32A-11BD2452F68F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_quad_IK_anim_rotateX";
	rename -uid "122D86E8-48D2-AFEA-D2BC-5EBC19D99648";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_quad_IK_anim_rotateY";
	rename -uid "1BDBB785-410F-0070-305F-E8BBDCFAC2BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_leg_quad_IK_anim_rotateZ";
	rename -uid "9502AD7B-4701-AA07-A170-85A346459612";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_1_anim_rotateX";
	rename -uid "51074183-4DE9-C0F4-DF58-13A0EC665269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_1_anim_rotateY";
	rename -uid "18D261B7-4636-7416-0B6A-75A11D6516FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_1_anim_rotateZ";
	rename -uid "477B6B6A-4BAB-F5BB-E96A-E8B59AC20145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_2_anim_rotateX";
	rename -uid "98277BFA-4E7C-77C0-97ED-5A878C982BCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_2_anim_rotateY";
	rename -uid "079894B2-4475-3C8F-9A87-76B016DDEB8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_2_anim_rotateZ";
	rename -uid "82F8B09A-47F6-5A98-7818-D196C22086D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_3_anim_rotateX";
	rename -uid "04851EA2-4BD6-3737-18D2-C7A4342DD3B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_3_anim_rotateY";
	rename -uid "27163F5B-444D-0AAD-5061-24879EAEF633";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lower_eyelid_3_anim_rotateZ";
	rename -uid "6913FF42-41DC-5E84-A7A2-0F970D1C51BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lowercheek_tuft_anim_rotateX";
	rename -uid "DBAB91C5-4B7E-70DF-EFB1-AE9C8DC10514";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lowercheek_tuft_anim_rotateY";
	rename -uid "CC7D8278-4954-1C75-0E55-EBA4C203D67A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_lowercheek_tuft_anim_rotateZ";
	rename -uid "057C64BF-4331-98BC-0A5D-08A2850878D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_1_anim_rotateX";
	rename -uid "ADD419AA-4D44-A735-4018-339B393FFFA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_1_anim_rotateY";
	rename -uid "53A3CDFA-4158-56C0-4ED5-8FB151F0B84B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_1_anim_rotateZ";
	rename -uid "4058D565-49F5-F57B-46E4-8A81708F5673";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_2_anim_rotateX";
	rename -uid "F663BC3C-408D-4F08-F693-9A92538A0A22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 2.2898068833709786;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_2_anim_rotateY";
	rename -uid "D4E3E19C-4356-8B30-00EE-C1AE801C74B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -0.8427542062942891;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_2_anim_rotateZ";
	rename -uid "DFCF116B-4B2C-9AFB-A2C6-80814FE25953";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -21.799116771868572;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_3_anim_rotateX";
	rename -uid "D7F77848-4E5F-3224-FD87-2B89F59289AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_3_anim_rotateY";
	rename -uid "0CD2246F-427F-EF19-18E9-E4BE3690C26C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_3_anim_rotateZ";
	rename -uid "1F50C13B-44D7-F934-AD26-BBB65151C7A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_metacarpal_anim_rotateX";
	rename -uid "1F456821-4DD8-5FC2-8EBE-37B6E9BC5682";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_metacarpal_anim_rotateY";
	rename -uid "9EA4FFFD-420A-7235-0F40-16B173FDAC30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_middle_metacarpal_anim_rotateZ";
	rename -uid "75D132E0-48D3-C592-8783-19955AA55A75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_outer_eyelid_anim_rotateX";
	rename -uid "260C8DB4-4AB8-A25D-EC0A-DE837AE56204";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_outer_eyelid_anim_rotateY";
	rename -uid "EE8FD8D6-4B1D-5B94-2A6E-2F894528E3A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_outer_eyelid_anim_rotateZ";
	rename -uid "45EE08BD-4FAC-3622-A35E-96BE23399D77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_1_anim_rotateX";
	rename -uid "18A19270-485C-C735-7016-1380C26394FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_1_anim_rotateY";
	rename -uid "D5900BB2-4780-33EB-E9FF-E7B6539796C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_1_anim_rotateZ";
	rename -uid "C4A35EC1-4D15-1B26-B28E-0BA9A51C5535";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_2_anim_rotateX";
	rename -uid "FE6FC2F2-4746-788D-954A-57B61136E205";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_2_anim_rotateY";
	rename -uid "AEABBC54-4F7C-80BD-42CA-F99EAD8FAD5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_2_anim_rotateZ";
	rename -uid "D7EBDAAF-476A-B306-7E95-BF868B3E6C61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -21.328284378799474;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_3_anim_rotateX";
	rename -uid "AABB8884-46FF-1A96-0995-4B9A1EC14841";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_3_anim_rotateY";
	rename -uid "E61D2495-476C-DB3F-C4D6-EB997758B59B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_3_anim_rotateZ";
	rename -uid "594C6090-44B9-92FE-4944-909043873A82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_metacarpal_anim_rotateX";
	rename -uid "AC11BD29-4113-0E72-D5A8-6B88EABD029D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_metacarpal_anim_rotateY";
	rename -uid "4576C0DC-4B74-70B6-3685-7C9FFA56A1C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_pinky_metacarpal_anim_rotateZ";
	rename -uid "BF85B797-497D-E5AD-C4CB-F9A6095B5964";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_1_anim_rotateX";
	rename -uid "67A176F4-405E-48BD-ED23-12BA08327702";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_1_anim_rotateY";
	rename -uid "3AB00E9E-41B8-B30E-89A5-F4969459EFCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_1_anim_rotateZ";
	rename -uid "EBA30348-4527-B619-997C-28A8696880EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_2_anim_rotateX";
	rename -uid "F744A87F-42F3-1BBC-F268-C8B4B371E6B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_2_anim_rotateY";
	rename -uid "8B7856C6-4D0A-7A1F-8A7C-0FA950F257B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_2_anim_rotateZ";
	rename -uid "C584B5D5-4DAC-342F-1485-038D9637B8B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_3_anim_rotateX";
	rename -uid "6B5DF2AA-496C-F298-0004-AA90AFC5C89A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_3_anim_rotateY";
	rename -uid "29E09C09-40F2-4AD9-5446-A08C146A0DD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_thumb_3_anim_rotateZ";
	rename -uid "CA9F94C9-442E-D569-1672-4AA9459C186F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_1_anim_rotateX";
	rename -uid "72DC2E13-47E0-ECDE-E463-77A11B22EB6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_1_anim_rotateY";
	rename -uid "9AC4A1C0-408B-8F4F-B6C8-C28CCCF7E127";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_1_anim_rotateZ";
	rename -uid "10A3EE63-48EE-375C-A7EF-1597E209E708";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_2_anim_rotateX";
	rename -uid "D2A53578-4DC7-2581-9B0F-D9BA655DCE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_2_anim_rotateY";
	rename -uid "33F2891D-4DB3-B08A-90FB-06901AD10F4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_2_anim_rotateZ";
	rename -uid "99BC2B51-4757-240F-D28E-80A1E255D193";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_3_anim_rotateX";
	rename -uid "97596A76-477C-ED87-C4EC-9A91B6556456";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_3_anim_rotateY";
	rename -uid "54C1436F-4E0F-9BF3-E165-31A4B4BB5331";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_upper_eyelid_3_anim_rotateZ";
	rename -uid "B1D7E427-418A-3C6F-CACA-3C82B8E255B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_uppercheek_tuft_1_anim_rotateX";
	rename -uid "497A92DD-4F6C-F0DE-40F5-CF8B6F9D3380";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_uppercheek_tuft_1_anim_rotateY";
	rename -uid "5CDED24B-4093-5FD3-07F5-79924DD493C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_uppercheek_tuft_1_anim_rotateZ";
	rename -uid "BD1623E1-4714-A339-2E78-6E8D65824990";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_uppercheek_tuft_2_anim_rotateX";
	rename -uid "040E7E37-4331-91ED-E159-BE91419EC197";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_uppercheek_tuft_2_anim_rotateY";
	rename -uid "8A268630-47BF-6ECD-E7FC-EA9113C09A2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_uppercheek_tuft_2_anim_rotateZ";
	rename -uid "D0E25073-4541-4C43-4F25-9984AA068820";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_1_anim_rotateX";
	rename -uid "8BE583C3-4A05-4629-F8BE-F583C9140A4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_1_anim_rotateY";
	rename -uid "8950CB88-423A-28FA-1B4B-C29D3AD26F00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_1_anim_rotateZ";
	rename -uid "FDDEC367-478D-98B6-D6BF-94A579864FC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_2_anim_rotateX";
	rename -uid "3637F776-4E32-B94F-69A8-8BB439564AAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_2_anim_rotateY";
	rename -uid "2F9A7164-4870-92D8-D570-F7AD55F577BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_2_anim_rotateZ";
	rename -uid "F37082D4-4533-0509-B91A-23B82254CB97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_3_anim_rotateX";
	rename -uid "F77EC7E7-4965-015B-0556-D19681DF04FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_3_anim_rotateY";
	rename -uid "E43A4E20-4EB6-B5F0-9099-FFA02A9F11F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_3_anim_rotateZ";
	rename -uid "DD81DDC6-4DC0-56A2-BF54-6EA83DF11170";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_4_anim_rotateX";
	rename -uid "DF6F0A9E-43AF-9471-1123-8FAD75C08260";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_4_anim_rotateY";
	rename -uid "4684FC28-4AA6-74B8-25B8-9481EF182F8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_4_anim_rotateZ";
	rename -uid "FA80F61D-40BE-15A7-F9E1-A1B4A408A221";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_5_anim_rotateX";
	rename -uid "B978CDB5-4731-1F81-8156-E4BB08373253";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_5_anim_rotateY";
	rename -uid "BF335FDD-44BD-7996-88E2-5883DE774C85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "left_wing_flap_5_anim_rotateZ";
	rename -uid "17F519E0-4702-A31B-CA93-5986F1BD4378";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_1_FK_anim_rotateX";
	rename -uid "8BFBC208-4B7E-1861-D63F-2385F830B951";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -12.477050865262452;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_1_FK_anim_rotateY";
	rename -uid "68262BD0-4C58-004E-1195-54AC28A8DAC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -68.738243370241179 32 25.161821753108097
		 33 39.696015586099421 57 82.370767460609528;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_1_FK_anim_rotateZ";
	rename -uid "205775FA-4930-AEDA-1A5E-CE87CD01E937";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 78.557868520563176;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_1_FK_anim_stretch";
	rename -uid "E7688F55-42F9-75AE-8ACE-458F54EE3F89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_1_FK_anim_parent_to";
	rename -uid "39ABE796-4869-E610-3825-BC894596BCDE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_2_FK_anim_rotateZ";
	rename -uid "021B11BC-4A8C-C9C9-6916-7B95FEF9A1BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_2_FK_anim_stretch";
	rename -uid "253EEBB5-4C76-5011-D9EC-A99FC6180F85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_3_FK_anim_rotateX";
	rename -uid "2F025320-4ACC-9D8C-E9F0-5C8BD61E834C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_3_FK_anim_rotateY";
	rename -uid "90A40B17-47A5-0479-A5A0-C895DF2BE6C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_3_FK_anim_rotateZ";
	rename -uid "258D82DF-48FD-DB98-5368-D4B71F6261B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_IK_anim_rotateX";
	rename -uid "D67488EC-45AD-7F43-69A6-DD8A2FCC189D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_IK_anim_rotateY";
	rename -uid "E569A8D6-4B09-8BE9-FDB2-C6B233444795";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_IK_anim_rotateZ";
	rename -uid "22F74BF4-438C-0B9D-6DC3-748ACC834CDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_IK_anim_stretch";
	rename -uid "9D33F82F-4ABB-6E0F-A2E7-80B0FB28CC14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_IK_anim_soft_IK";
	rename -uid "CAC5A943-4CCC-23FF-5B2F-F48C4FF52ED6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_IK_anim_parent_to";
	rename -uid "E852A646-4AEC-05C3-B8DE-2282703F54EE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_PV_anim_rotateX";
	rename -uid "D99AC80A-4EFF-5727-B9C2-0A815C529FB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_PV_anim_rotateY";
	rename -uid "C4EE2574-4F35-0190-4F5F-6DB027240A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_arm_PV_anim_rotateZ";
	rename -uid "0D3316E7-4C4E-6967-A1DD-0987967E1F1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_PV_anim_pole_vector_lock";
	rename -uid "82ECBC15-4276-50D9-4CD2-CFB9702ECFF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_PV_anim_FK_mode";
	rename -uid "010B4589-423E-996F-04D3-B9833373C2BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_arm_PV_anim_parent_to";
	rename -uid "691BB16F-4321-A4CC-C8F5-EA98D64AFF62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_bib_armor_anim_rotateX";
	rename -uid "E38137B1-4CE0-0F40-5563-1BB843D9DDF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_bib_armor_anim_rotateY";
	rename -uid "EAB52BCF-4D90-E872-D731-82A4B1D74CBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_bib_armor_anim_rotateZ";
	rename -uid "22A8EA31-4542-7712-2CAF-908C6BB9B0BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_bib_armor_anim_parent_to";
	rename -uid "4E64065A-48CD-CC50-FA1C-9EA903A2D2CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_body_armor_anim_rotateZ";
	rename -uid "2D34C705-4589-656F-617A-D79645ADC63E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_1_anim_rotateX";
	rename -uid "3F7620F0-4100-FAD8-C9C2-E99EB2852A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_1_anim_rotateY";
	rename -uid "54AFFA7E-4D06-6C86-83A9-EDA8C5CC2EBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_1_anim_rotateZ";
	rename -uid "EB8D1D0F-46C1-FEF6-2086-7597EF0CE81A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_2_anim_rotateX";
	rename -uid "832FAD31-455B-ED43-2AEE-D5A6DB21CA0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_2_anim_rotateY";
	rename -uid "C703FFA0-47A0-642F-7083-ACBA427429F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_2_anim_rotateZ";
	rename -uid "8E06987E-4E9F-8BB5-D672-529E0BE2D635";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_3_anim_rotateX";
	rename -uid "AA05E4D1-472B-78FD-92D5-6DB1CECD9E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_3_anim_rotateY";
	rename -uid "21510B28-4005-A1DB-631D-7881DB427F9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_brow_3_anim_rotateZ";
	rename -uid "BED78798-41B3-9C93-2B52-2DBC0F6D01D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_cheek_1_anim_rotateX";
	rename -uid "C4865F68-4CE0-E644-062D-9A8EDA4436E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_cheek_1_anim_rotateY";
	rename -uid "4850AEE8-4D7B-B7E1-6FBF-E6B3C7D23B49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_cheek_1_anim_rotateZ";
	rename -uid "9455E62B-4754-2BB6-B56D-24ABD6700E44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_cheek_2_anim_rotateX";
	rename -uid "E8E8C0DA-4050-4205-93E3-7F8BA027178C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_cheek_2_anim_rotateY";
	rename -uid "44AA12E5-40F3-E869-306C-F78459410EFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_cheek_2_anim_rotateZ";
	rename -uid "0CE29293-4DC3-78C4-F31E-3C9470F74A38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_clavicle_anim_rotateX";
	rename -uid "C333B96E-4528-DD0E-A4A9-14B0647ABC93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_clavicle_anim_rotateY";
	rename -uid "D8FE8A4E-489F-E4B1-ADF2-07AB3C0476CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_clavicle_anim_rotateZ";
	rename -uid "180CC55A-4F36-4481-A331-5B81CA0EC133";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_clavicle_anim_stretch";
	rename -uid "462A83D8-4656-7980-65F0-02AAD152AC22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_ear_1_anim_rotateX";
	rename -uid "B45E9E2D-46CE-2334-93F5-FB95D7CA495E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_ear_1_anim_rotateY";
	rename -uid "153F4706-430A-8226-1441-F58FDD12075E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_ear_1_anim_rotateZ";
	rename -uid "DD71B41C-48EF-504D-347C-308579F2C202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_ear_2_anim_rotateX";
	rename -uid "3AC3E6E5-4237-D673-24B2-D98C6BC279E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_ear_2_anim_rotateY";
	rename -uid "4AAB61CD-48B3-DA6B-138B-4798DD8AC4BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_ear_2_anim_rotateZ";
	rename -uid "3B61B7C0-43D4-0D67-92E9-178AD840C050";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_elbow_armor_anim_rotateX";
	rename -uid "8E22BFAD-4EA1-5DBA-A803-E6B441387E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_elbow_armor_anim_rotateY";
	rename -uid "748BEF3C-4DC8-F42A-7701-DDBA57314792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_elbow_armor_anim_rotateZ";
	rename -uid "0C41952C-44C1-A896-49FA-529EFB6095D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_elbow_armor_anim_open_latch";
	rename -uid "E227189C-4A6D-62CF-9676-1D917A0FEBE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_elbow_armor_anim_hide_arm_anims";
	rename -uid "D0A3D85C-4186-71C3-137D-96A2E02AD6E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_elbow_armor_anim_display_latch_anim";
	rename -uid "3BBFAFB3-4750-FD85-B385-8AB4653E765A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_elbow_armor_anim_hide_geo";
	rename -uid "ACA15089-4220-7648-02D5-8ABA17D0DEEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_elbow_armor_anim_parent_to";
	rename -uid "E5F9C8AE-4BB5-7510-5C0F-279C952F183C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_elbow_armor_latch_anim_rotateZ";
	rename -uid "D06B2B34-4EFF-D6CB-4BD4-65AE59551EB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_eyebrow_anim_rotateX";
	rename -uid "E1260566-48AE-ACE5-80D3-0B8EAE72D5A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_eyebrow_anim_rotateY";
	rename -uid "E68A3483-4D31-6E06-E8D2-55AAD1696470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_eyebrow_anim_rotateZ";
	rename -uid "E12C8C44-4311-D397-46EE-F781C6383D15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_hair_tuft_1_anim_rotateX";
	rename -uid "D47958E9-4A9D-2E4D-2920-2291E22C3424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_hair_tuft_1_anim_rotateY";
	rename -uid "E332CBE4-4119-3E64-9E78-0FA39B1459C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_hair_tuft_1_anim_rotateZ";
	rename -uid "B6CB1828-4364-8412-C50D-DC9FD695BFE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_hair_tuft_2_anim_rotateX";
	rename -uid "92B1EF7F-4587-98B7-AC76-7C97C273ABD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_hair_tuft_2_anim_rotateY";
	rename -uid "3EE1BAA0-49C6-AC1F-A6EF-BD80B06BB7E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_hair_tuft_2_anim_rotateZ";
	rename -uid "DAB89F2C-414C-3196-6AAC-1897F6B297CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_helmet_piece_anim_rotateX";
	rename -uid "0084E63C-40F0-619D-D519-6A9F47BF01F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_helmet_piece_anim_rotateY";
	rename -uid "EAFB01CF-4420-D6C2-3E94-BE935A9B94EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_helmet_piece_anim_rotateZ";
	rename -uid "E201130A-4F30-406B-9E6F-3E9054A2E9EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_1_anim_rotateX";
	rename -uid "48A45D9A-423C-329B-239A-D5A28E2F4DCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_1_anim_rotateY";
	rename -uid "23B8FFB7-464B-2F50-5DB3-2CB2C6688C83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_1_anim_rotateZ";
	rename -uid "A27784E1-4C3B-CF10-83D8-0D84B89B1F2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_2_anim_rotateX";
	rename -uid "ACE03658-4D95-A23B-2D22-6185B5B8E5F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0.27657586314014482;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_2_anim_rotateY";
	rename -uid "DDE1EC68-435B-051F-D8EB-EAB81A8AFA8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -0.15648239142488432;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_2_anim_rotateZ";
	rename -uid "4963EB43-4A91-029E-0682-75B8779D837A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -29.573198286605837;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_3_anim_rotateX";
	rename -uid "835883CC-4CC4-98CC-5B8D-318A58C8988A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_3_anim_rotateY";
	rename -uid "7ED19767-4960-2FBA-1917-A1A085D656D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_3_anim_rotateZ";
	rename -uid "B831C532-4871-D777-ADC7-C199E321214B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_metacarpal_anim_rotateX";
	rename -uid "F1E08AC0-4E16-9E65-9689-2CBF87AD3B45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_metacarpal_anim_rotateY";
	rename -uid "D224D285-4CCD-0FE9-989A-24B0BF8033A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_index_metacarpal_anim_rotateZ";
	rename -uid "F734CEB7-49E7-C71C-92EB-D299622126A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_inner_eyelid_anim_rotateX";
	rename -uid "021FD2EF-4999-E6F3-5D1A-58930B86757A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_inner_eyelid_anim_rotateY";
	rename -uid "E86ADC9F-425E-FF4B-6043-83B1B4986B49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_inner_eyelid_anim_rotateZ";
	rename -uid "543AF6F8-4D90-91ED-5C60-E89DCA8BBB64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_1_FK_anim_rotateX";
	rename -uid "2B412C6F-44F6-23B6-DFCB-E48E70FF1F0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_1_FK_anim_rotateY";
	rename -uid "7C52CB3A-493E-B80A-FAE9-6AA5EA03E717";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_1_FK_anim_rotateZ";
	rename -uid "1F82A417-4148-B4BE-A2BF-5C9000A06B64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_1_FK_anim_stretch";
	rename -uid "08C5128B-4C12-3C8E-522B-349025A83805";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_1_FK_anim_parent_to";
	rename -uid "F9B37F01-4A4F-B6A6-2604-50AA832B4263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_2_FK_anim_rotateZ";
	rename -uid "2FAFD45E-4746-5F80-67E3-F6989309DA30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_2_FK_anim_stretch";
	rename -uid "DDC05D48-4934-E0AB-D3F0-7A8541A0450B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 32 1 33 1 57 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_3_FK_anim_rotateX";
	rename -uid "044ADFE0-4224-57A8-21B0-8E9A7F00B8C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_3_FK_anim_rotateY";
	rename -uid "8C25FB8A-4618-6B19-5563-50B662125AF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_3_FK_anim_rotateZ";
	rename -uid "E3AE0984-4A84-CA3D-526E-D39F9E6661E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_4_FK_anim_rotateX";
	rename -uid "CAE939BF-4577-0C1E-7997-8C81DF0566DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_4_FK_anim_rotateY";
	rename -uid "DB6786D6-49AD-CDD9-EB08-BEB0C95901D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_4_FK_anim_rotateZ";
	rename -uid "D2DAF21E-4B77-2EAC-C456-B587A1467BDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_5_FK_anim_rotateX";
	rename -uid "B4F67130-46B8-8990-7B56-9581CEB47928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_5_FK_anim_rotateY";
	rename -uid "608C0014-4820-4364-0D54-BB8BA837FEE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_5_FK_anim_rotateZ";
	rename -uid "58FBA2CD-4B9D-4280-0DF1-249F26DB9593";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_IK_anim_rotateX";
	rename -uid "2476A926-47E0-33FF-75A0-ABB821475979";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_IK_anim_rotateY";
	rename -uid "40FFCDFD-4555-473A-8C54-4EAE2D6F2001";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_IK_anim_rotateZ";
	rename -uid "151B019E-445D-F1CA-57CA-6E97E0FE4F75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -23.601369679840055 32 -23.601369679840055
		 33 -23.601369679840055 57 -23.601369679840055;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_roll_anim_vis";
	rename -uid "70901E9C-4080-DEDC-20C6-888BE45E1FE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_heel_to_toe";
	rename -uid "152E7C27-4D37-A2F1-85E6-1BB1D3EC2C74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_balltoe_lift";
	rename -uid "8CE780C8-47AE-55CC-9C68-B785BF6AF9AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_toe_lift";
	rename -uid "5813EC52-4F88-B739-03CB-2C84C04F4548";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_side_to_side";
	rename -uid "A347F6EC-453D-8711-C417-D4BF9EE7602D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_heel_pivot";
	rename -uid "6581C3A6-4363-BA3B-26CA-8AA445D811F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_toe_pivot";
	rename -uid "5DCC0F04-4B6A-F6F1-8CC9-CD90B021A271";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_lean";
	rename -uid "EF7A5E16-44A2-10AD-8B80-40BFF4680CCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_stretch";
	rename -uid "C4D860CD-4CE2-B563-1CC4-058E3EFDF239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_soft_IK";
	rename -uid "2CAC4287-4FC4-D070-25F4-4D875AB5BB75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_IK_anim_parent_to";
	rename -uid "DABD071A-49B3-00CF-1A69-E68F7FF8371F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_PV_anim_rotateX";
	rename -uid "340BEB71-450F-136F-3009-6DBBC0ACB785";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.4941781180738083 32 2.4941781180738083
		 33 2.4941781180738083 57 2.4941781180738083;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_PV_anim_rotateY";
	rename -uid "1ACC2BB5-4631-BF1C-3EE4-E6A252B60250";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.3057264853462511 32 -1.3057264853462511
		 33 -1.3057264853462511 57 -1.3057264853462511;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_PV_anim_rotateZ";
	rename -uid "5C9E221A-4F3D-D50F-A871-25B4D7912DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 23.406818471318822 32 23.406818471318822
		 33 23.406818471318822 57 23.406818471318822;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_PV_anim_pole_vector_lock";
	rename -uid "3BFFAA17-4CD6-570B-8820-D9946AB5423A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_PV_anim_FK_mode";
	rename -uid "3671F84E-4D36-AC33-E56B-5D81461B0A74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "right_leg_PV_anim_parent_to";
	rename -uid "AC843FFF-425F-DC9F-1F5A-789121FC940A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_back_pivot_anim_rotateX";
	rename -uid "0A10DD1F-4144-39EC-EB04-7A96789400DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_back_pivot_anim_rotateY";
	rename -uid "182DDC2E-4DB5-3463-E232-A5A3F127C290";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_back_pivot_anim_rotateZ";
	rename -uid "7A244513-429F-F28F-D1B5-2887BE8E9CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_center_pivot_anim_rotateX";
	rename -uid "AE8F3768-4B72-4A32-A43E-E793C38D549A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_center_pivot_anim_rotateY";
	rename -uid "20134285-41FD-A5BC-C2F1-A399C5BB1823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_center_pivot_anim_rotateZ";
	rename -uid "FECE3080-43E9-EBA1-B3C1-17B2228C48C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_digit_pivot_anim_rotateX";
	rename -uid "4AD66F92-497C-D307-D828-BF83DD946DA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_digit_pivot_anim_rotateY";
	rename -uid "4EF2604A-4F97-DB00-8AF3-7AB718DC1D89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_digit_pivot_anim_rotateZ";
	rename -uid "EFB6E9D8-4B2C-8959-E135-0A90951DCEAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_front_pivot_anim_rotateX";
	rename -uid "E4361D8C-4096-6AE5-A14C-858D40665E61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_front_pivot_anim_rotateY";
	rename -uid "6F188107-4C62-E40A-B05A-DFB1ACEBBC47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_front_pivot_anim_rotateZ";
	rename -uid "F1E99039-41C8-1D12-DCDD-8F8177B9C131";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_inner_pivot_anim_rotateX";
	rename -uid "CED76601-4B39-B6EE-541B-FEB996B85BF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_outer_pivot_anim_rotateX";
	rename -uid "80CAFBD9-44B1-6C91-2DE1-6581012A170C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_quad_IK_anim_rotateX";
	rename -uid "11E15A27-4DA4-9E1B-B08D-7B84D0F69C4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_quad_IK_anim_rotateY";
	rename -uid "D9A2EF1A-4DAC-9234-9EE5-6FAD6A386EB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_leg_quad_IK_anim_rotateZ";
	rename -uid "31584419-44DB-B971-AF39-D29F907257E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_1_anim_rotateX";
	rename -uid "396E45E4-4114-39ED-72DF-7DBAEAD4F1F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_1_anim_rotateY";
	rename -uid "0854BEC5-4844-4A08-098B-E0BDFD02062B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_1_anim_rotateZ";
	rename -uid "F1763E49-4B3A-11F0-AD4A-8591F1A679E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_2_anim_rotateX";
	rename -uid "893C7D36-480F-6D1F-F631-03A817B13753";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_2_anim_rotateY";
	rename -uid "1380E7F6-4EA1-B6D0-4317-09ADEF4A54D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_2_anim_rotateZ";
	rename -uid "E54A7A49-4F6F-662A-7A16-45AAD009154F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_3_anim_rotateX";
	rename -uid "E8B52109-4758-FB57-47D3-BCB7A208C122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_3_anim_rotateY";
	rename -uid "B851B638-4D15-A2E4-BE42-E2BBB503EE1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lower_eyelid_3_anim_rotateZ";
	rename -uid "99D65323-4B14-FD10-855B-E5A392CCA638";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lowercheek_tuft_anim_rotateX";
	rename -uid "CB88F7ED-4931-1BA0-4116-EAA9D064AD58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lowercheek_tuft_anim_rotateY";
	rename -uid "743F18AA-45F1-FBDC-8DC4-6EBD4A75A1C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_lowercheek_tuft_anim_rotateZ";
	rename -uid "1D3DBA75-449B-AC37-EBAE-768900FCC1D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_1_anim_rotateX";
	rename -uid "953020BB-4976-F36A-B7D8-F68744430405";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_1_anim_rotateY";
	rename -uid "67B85EE4-4C96-2DDA-9929-739524BCA59F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_1_anim_rotateZ";
	rename -uid "F73E0B2E-4B19-BC23-51FD-C9BA5D315A9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_2_anim_rotateX";
	rename -uid "10980CE9-4515-86E8-C1A1-D3814DE7098E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_2_anim_rotateY";
	rename -uid "D03EB06B-4A9B-C456-9096-159E4A154862";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_2_anim_rotateZ";
	rename -uid "2F2547F4-4BFF-6EC4-BEE8-C6BEBF2BB3CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -28.250229129672171;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_3_anim_rotateX";
	rename -uid "9F3D14A2-44F3-2C79-1827-72ABE52CFC6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_3_anim_rotateY";
	rename -uid "53404FE1-4C7A-DDFE-56AC-B0B6AB9EC0C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_3_anim_rotateZ";
	rename -uid "44A72E81-4BBB-7B92-1C19-19875B17B115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_metacarpal_anim_rotateX";
	rename -uid "80AB7C6A-4860-A791-904E-A5BEF78AEC89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_metacarpal_anim_rotateY";
	rename -uid "0FF984CA-4D11-86D4-1644-76B921D061FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_middle_metacarpal_anim_rotateZ";
	rename -uid "1A999A6C-4ED3-1E9E-918D-8283790FFDC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_outer_eyelid_anim_rotateX";
	rename -uid "869E797A-48F7-F181-A5AC-A79B0D716819";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_outer_eyelid_anim_rotateY";
	rename -uid "02339CFF-4BE8-B926-E39B-2E8461BAC74B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_outer_eyelid_anim_rotateZ";
	rename -uid "EEDEFE3B-49D3-2D76-A6B9-DEB55400536F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_1_anim_rotateX";
	rename -uid "A7CEC7A4-45C2-7E36-A864-F4A56B84058E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_1_anim_rotateY";
	rename -uid "8B823704-4D9A-4FE5-DAAF-C193F11440FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_1_anim_rotateZ";
	rename -uid "B9BF0D32-4DC7-C6B3-735D-E7BE05DC77AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_2_anim_rotateX";
	rename -uid "DE837C6E-4284-7289-09E0-7BB824E8B47A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_2_anim_rotateY";
	rename -uid "923B3A17-446D-15E3-5E73-2AA2217B0AA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_2_anim_rotateZ";
	rename -uid "A4AD9942-4EC7-8B2E-A36B-31AC286BBB0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 -27.155497126519879;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_3_anim_rotateX";
	rename -uid "9D53AA03-4299-6BB4-A341-66B98B2FFB1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_3_anim_rotateY";
	rename -uid "D8229E78-480B-76E9-5FB7-95A43EB276BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_3_anim_rotateZ";
	rename -uid "382986C9-4F2C-157A-1096-779F61CD8C2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_metacarpal_anim_rotateX";
	rename -uid "75C6FE27-4EC2-CECE-A50F-FD8D449E9C59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_metacarpal_anim_rotateY";
	rename -uid "EE5C8A61-463A-E789-A911-0FA4BA569B3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_pinky_metacarpal_anim_rotateZ";
	rename -uid "87BC1215-44AA-3EEC-AD3A-4AAE5C46CF6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_1_anim_rotateX";
	rename -uid "54B6BE4D-4291-6F87-FB56-F2BC7E747A7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_1_anim_rotateY";
	rename -uid "20E8AEB6-4081-3C86-BCD4-1980035523D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_1_anim_rotateZ";
	rename -uid "C6DFB5CA-42B6-3288-E15A-758E53C110DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_2_anim_rotateX";
	rename -uid "44377A8E-4292-5D6B-5BA1-3DB63D80CA7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_2_anim_rotateY";
	rename -uid "BD41C327-4A94-AB10-11B4-1DBACE117272";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_2_anim_rotateZ";
	rename -uid "B5A664D7-4730-0981-1B73-42BC47FD2C21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_3_anim_rotateX";
	rename -uid "4F62F87C-422A-3F95-61AB-178CB93E193C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_3_anim_rotateY";
	rename -uid "2648F96F-46C8-B626-1B0E-658C49A46396";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_thumb_3_anim_rotateZ";
	rename -uid "2FA95F09-412F-18D5-5A42-4C92B31C5EDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_1_anim_rotateX";
	rename -uid "89291337-47F2-E8B6-9F3B-19BA2DEDB7C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_1_anim_rotateY";
	rename -uid "D92D72AD-4E4D-ADDB-68CD-DE9C77EAB7E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_1_anim_rotateZ";
	rename -uid "8D3A69F6-49F3-E8FD-6AE9-5086632C1FF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_2_anim_rotateX";
	rename -uid "917BFAAA-4BB9-8F52-F9F1-BF91300877C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_2_anim_rotateY";
	rename -uid "A3B86690-4B2F-3CBB-4AC9-E3ABC499121A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_2_anim_rotateZ";
	rename -uid "6A59B8EF-416F-A2F5-3F95-7F91BBE6C50E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_3_anim_rotateX";
	rename -uid "B2396C49-48EA-A8AE-27F2-11966C646764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_3_anim_rotateY";
	rename -uid "F7061DE7-4825-70B9-6C06-AFB442F75BAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_upper_eyelid_3_anim_rotateZ";
	rename -uid "E7F0B421-4DB8-87DA-2C24-42B177324462";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_uppercheek_tuft_1_anim_rotateX";
	rename -uid "FC19BEC8-4BE4-38D9-16B3-53B45238BB5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_uppercheek_tuft_1_anim_rotateY";
	rename -uid "E551C661-4200-29EE-52CE-71A1A1375313";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_uppercheek_tuft_1_anim_rotateZ";
	rename -uid "CB74C267-47A1-391C-5876-B2907661BAEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_uppercheek_tuft_2_anim_rotateX";
	rename -uid "43D1E205-4358-CA67-C7FB-BB803CD85756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_uppercheek_tuft_2_anim_rotateY";
	rename -uid "C2AA8553-4829-1FA7-304D-1292EDC9ACDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_uppercheek_tuft_2_anim_rotateZ";
	rename -uid "44FF309B-441C-40AB-0EA0-44816232DFCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_1_anim_rotateX";
	rename -uid "D5A4C131-467C-F41F-78B0-CF985104E70F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_1_anim_rotateY";
	rename -uid "B2CCCE49-443A-B6AF-B147-1EBD31631623";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_1_anim_rotateZ";
	rename -uid "C8877B31-4FCF-B13C-B5C5-4EA38CD3B4EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_2_anim_rotateX";
	rename -uid "EDF2C8E8-4A4A-5BB7-0425-B9ACADDD6A6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_2_anim_rotateY";
	rename -uid "DE69DBEB-4CD1-66D3-1DD7-D8841FBBD06E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_2_anim_rotateZ";
	rename -uid "EB229C03-4E05-3DC4-9104-9585E0054492";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_3_anim_rotateX";
	rename -uid "81C58676-406D-C7EE-B3BF-3A925B457B50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_3_anim_rotateY";
	rename -uid "A27AE31D-4039-0090-44DD-02895378EA9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_3_anim_rotateZ";
	rename -uid "EF6D3102-43BF-A7AB-2A25-6E9A70DFC55C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_4_anim_rotateX";
	rename -uid "97226464-40EC-85C9-1F5E-7DADE7C94F1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_4_anim_rotateY";
	rename -uid "07D4FCBB-47DF-EB96-726C-4591FFCB7A78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_4_anim_rotateZ";
	rename -uid "F95897E8-4BE3-D947-89C9-849CB5222FA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_5_anim_rotateX";
	rename -uid "FD745D59-4ED0-CD97-48EA-AC80E12F2514";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_5_anim_rotateY";
	rename -uid "605560FD-4021-F315-4B07-15BE87235D8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "right_wing_flap_5_anim_rotateZ";
	rename -uid "A59E0849-436F-23EA-69B6-C2A57794E50E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 32 0 33 0 57 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "center_tail_1_IK_joint_locator_zero_null_rotateX";
	rename -uid "E59CE9B2-447D-CF45-41BB-23890D35D959";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "center_tail_1_IK_joint_locator_zero_null_rotateY";
	rename -uid "82564EF4-47E0-FB00-FE27-ABBC2D7EB6D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "center_tail_1_IK_joint_locator_zero_null_rotateZ";
	rename -uid "7258AC3B-49FA-296B-5563-16A3E65BEE32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "center_tail_1_IK_joint_locator_zero_null_visibility";
	rename -uid "522CBA97-4F2C-D761-28FE-9A93BFE27ED7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "center_tail_1_IK_joint_locator_zero_null_translateX";
	rename -uid "35E3FC33-4CAE-CAF7-CE1B-42AC3A95A201";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "center_tail_1_IK_joint_locator_zero_null_translateY";
	rename -uid "E32E6777-4291-A58B-DEE0-7A90D6ED2031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "center_tail_1_IK_joint_locator_zero_null_translateZ";
	rename -uid "BD6D3E3E-4393-E2C7-2785-1AB2CF4CE297";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "center_tail_1_IK_joint_locator_zero_null_scaleX";
	rename -uid "B2B01DA3-4E8C-4DE3-556F-A28CDCB06B51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "center_tail_1_IK_joint_locator_zero_null_scaleY";
	rename -uid "72FD1DB2-4883-EFCD-FDA2-17842085946C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "center_tail_1_IK_joint_locator_zero_null_scaleZ";
	rename -uid "166D249A-4BE6-1DA3-A4DB-638E36D3C1F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 1;
	setAttr ".kot[0]"  5;
select -ne :time1;
	setAttr ".o" 144;
	setAttr ".unw" 144;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 28 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 32 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 374 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 7 ".r";
select -ne :defaultTextureList1;
	setAttr -s 30 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 71 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "center_COG_anim_translateY.o" "nutmegRN.phl[1]";
connectAttr "center_COG_anim_translateZ.o" "nutmegRN.phl[2]";
connectAttr "center_COG_anim_translateX.o" "nutmegRN.phl[3]";
connectAttr "center_COG_anim_rotateZ.o" "nutmegRN.phl[4]";
connectAttr "center_COG_anim_rotateX.o" "nutmegRN.phl[5]";
connectAttr "center_COG_anim_rotateY.o" "nutmegRN.phl[6]";
connectAttr "center_COG_anim_tail_twitch_height.o" "nutmegRN.phl[7]";
connectAttr "center_COG_anim_tail_twitch_length.o" "nutmegRN.phl[8]";
connectAttr "center_COG_anim_tail_twitch_offset.o" "nutmegRN.phl[9]";
connectAttr "center_pelvis_anim_rotateX.o" "nutmegRN.phl[10]";
connectAttr "center_pelvis_anim_rotateY.o" "nutmegRN.phl[11]";
connectAttr "center_pelvis_anim_rotateZ.o" "nutmegRN.phl[12]";
connectAttr "center_tail_nurb_visibility.o" "nutmegRN.phl[13]";
connectAttr "rebuildSurface3.os" "nutmegRN.phl[14]";
connectAttr "center_tail_1_IK_joint_locator_zero_null_translateX.o" "nutmegRN.phl[15]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_translateY.o" "nutmegRN.phl[16]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_translateZ.o" "nutmegRN.phl[17]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_rotateX.o" "nutmegRN.phl[18]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_rotateY.o" "nutmegRN.phl[19]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_rotateZ.o" "nutmegRN.phl[20]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_scaleX.o" "nutmegRN.phl[21]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_scaleY.o" "nutmegRN.phl[22]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_scaleZ.o" "nutmegRN.phl[23]"
		;
connectAttr "center_tail_1_IK_joint_locator_zero_null_visibility.o" "nutmegRN.phl[24]"
		;
connectAttr "center_tail_1_FK_anim_translateX.o" "nutmegRN.phl[25]";
connectAttr "center_tail_1_FK_anim_translateY.o" "nutmegRN.phl[26]";
connectAttr "center_tail_1_FK_anim_translateZ.o" "nutmegRN.phl[27]";
connectAttr "center_tail_1_FK_anim_rotateZ.o" "nutmegRN.phl[28]";
connectAttr "center_tail_1_FK_anim_rotateX.o" "nutmegRN.phl[29]";
connectAttr "center_tail_1_FK_anim_rotateY.o" "nutmegRN.phl[30]";
connectAttr "center_tail_1_FK_anim_stretch.o" "nutmegRN.phl[31]";
connectAttr "center_tail_1_FK_anim_center_tail_twitch_influence.o" "nutmegRN.phl[32]"
		;
connectAttr "center_tail_2_FK_anim_rotateZ.o" "nutmegRN.phl[33]";
connectAttr "center_tail_2_FK_anim_rotateX.o" "nutmegRN.phl[34]";
connectAttr "center_tail_2_FK_anim_rotateY.o" "nutmegRN.phl[35]";
connectAttr "center_tail_2_FK_anim_stretch.o" "nutmegRN.phl[36]";
connectAttr "center_tail_2_FK_anim_center_tail_twitch_influence.o" "nutmegRN.phl[37]"
		;
connectAttr "center_tail_3_FK_anim_rotateZ.o" "nutmegRN.phl[38]";
connectAttr "center_tail_3_FK_anim_rotateX.o" "nutmegRN.phl[39]";
connectAttr "center_tail_3_FK_anim_rotateY.o" "nutmegRN.phl[40]";
connectAttr "center_tail_3_FK_anim_stretch.o" "nutmegRN.phl[41]";
connectAttr "center_tail_3_FK_anim_center_tail_twitch_influence.o" "nutmegRN.phl[42]"
		;
connectAttr "center_tail_4_FK_anim_rotateZ.o" "nutmegRN.phl[43]";
connectAttr "center_tail_4_FK_anim_rotateX.o" "nutmegRN.phl[44]";
connectAttr "center_tail_4_FK_anim_rotateY.o" "nutmegRN.phl[45]";
connectAttr "center_tail_4_FK_anim_stretch.o" "nutmegRN.phl[46]";
connectAttr "center_tail_4_FK_anim_center_tail_twitch_influence.o" "nutmegRN.phl[47]"
		;
connectAttr "center_tail_5_FK_anim_rotateZ.o" "nutmegRN.phl[48]";
connectAttr "center_tail_5_FK_anim_rotateX.o" "nutmegRN.phl[49]";
connectAttr "center_tail_5_FK_anim_rotateY.o" "nutmegRN.phl[50]";
connectAttr "center_tail_5_FK_anim_stretch.o" "nutmegRN.phl[51]";
connectAttr "center_tail_5_FK_anim_center_tail_twitch_influence.o" "nutmegRN.phl[52]"
		;
connectAttr "center_tail_6_FK_anim_rotateZ.o" "nutmegRN.phl[53]";
connectAttr "center_tail_6_FK_anim_rotateX.o" "nutmegRN.phl[54]";
connectAttr "center_tail_6_FK_anim_rotateY.o" "nutmegRN.phl[55]";
connectAttr "center_tail_6_FK_anim_stretch.o" "nutmegRN.phl[56]";
connectAttr "center_tail_6_FK_anim_center_tail_twitch_influence.o" "nutmegRN.phl[57]"
		;
connectAttr "center_tail_7_FK_anim_rotateZ.o" "nutmegRN.phl[58]";
connectAttr "center_tail_7_FK_anim_rotateX.o" "nutmegRN.phl[59]";
connectAttr "center_tail_7_FK_anim_rotateY.o" "nutmegRN.phl[60]";
connectAttr "center_tail_7_FK_anim_stretch.o" "nutmegRN.phl[61]";
connectAttr "center_tail_7_FK_anim_center_tail_twitch_influence.o" "nutmegRN.phl[62]"
		;
connectAttr "center_tail_1_IK_anim_translateX.o" "nutmegRN.phl[63]";
connectAttr "center_tail_1_IK_anim_translateY.o" "nutmegRN.phl[64]";
connectAttr "center_tail_1_IK_anim_translateZ.o" "nutmegRN.phl[65]";
connectAttr "center_tail_1_IK_anim_rotateX.o" "nutmegRN.phl[66]";
connectAttr "center_tail_1_IK_anim_rotateY.o" "nutmegRN.phl[67]";
connectAttr "center_tail_1_IK_anim_rotateZ.o" "nutmegRN.phl[68]";
connectAttr "center_tail_1_IK_anim_parent_to.o" "nutmegRN.phl[69]";
connectAttr "center_tail_2_IK_anim_translateX.o" "nutmegRN.phl[70]";
connectAttr "center_tail_2_IK_anim_translateY.o" "nutmegRN.phl[71]";
connectAttr "center_tail_2_IK_anim_translateZ.o" "nutmegRN.phl[72]";
connectAttr "center_tail_2_IK_anim_rotateX.o" "nutmegRN.phl[73]";
connectAttr "center_tail_2_IK_anim_rotateY.o" "nutmegRN.phl[74]";
connectAttr "center_tail_2_IK_anim_rotateZ.o" "nutmegRN.phl[75]";
connectAttr "center_tail_2_IK_anim_parent_to.o" "nutmegRN.phl[76]";
connectAttr "center_tail_3_IK_anim_translateX.o" "nutmegRN.phl[77]";
connectAttr "center_tail_3_IK_anim_translateY.o" "nutmegRN.phl[78]";
connectAttr "center_tail_3_IK_anim_translateZ.o" "nutmegRN.phl[79]";
connectAttr "center_tail_3_IK_anim_rotateX.o" "nutmegRN.phl[80]";
connectAttr "center_tail_3_IK_anim_rotateY.o" "nutmegRN.phl[81]";
connectAttr "center_tail_3_IK_anim_rotateZ.o" "nutmegRN.phl[82]";
connectAttr "center_tail_3_IK_anim_parent_to.o" "nutmegRN.phl[83]";
connectAttr "center_tail_4_IK_anim_translateX.o" "nutmegRN.phl[84]";
connectAttr "center_tail_4_IK_anim_translateY.o" "nutmegRN.phl[85]";
connectAttr "center_tail_4_IK_anim_translateZ.o" "nutmegRN.phl[86]";
connectAttr "center_tail_4_IK_anim_rotateX.o" "nutmegRN.phl[87]";
connectAttr "center_tail_4_IK_anim_rotateY.o" "nutmegRN.phl[88]";
connectAttr "center_tail_4_IK_anim_rotateZ.o" "nutmegRN.phl[89]";
connectAttr "center_tail_4_IK_anim_parent_to.o" "nutmegRN.phl[90]";
connectAttr "center_tail_5_IK_anim_translateX.o" "nutmegRN.phl[91]";
connectAttr "center_tail_5_IK_anim_translateY.o" "nutmegRN.phl[92]";
connectAttr "center_tail_5_IK_anim_translateZ.o" "nutmegRN.phl[93]";
connectAttr "center_tail_5_IK_anim_rotateX.o" "nutmegRN.phl[94]";
connectAttr "center_tail_5_IK_anim_rotateY.o" "nutmegRN.phl[95]";
connectAttr "center_tail_5_IK_anim_rotateZ.o" "nutmegRN.phl[96]";
connectAttr "center_tail_5_IK_anim_parent_to.o" "nutmegRN.phl[97]";
connectAttr "center_spine_1_anim_rotateX.o" "nutmegRN.phl[98]";
connectAttr "center_spine_1_anim_rotateY.o" "nutmegRN.phl[99]";
connectAttr "center_spine_1_anim_rotateZ.o" "nutmegRN.phl[100]";
connectAttr "center_spine_1_anim_parent_to.o" "nutmegRN.phl[101]";
connectAttr "center_spine_2_anim_rotateX.o" "nutmegRN.phl[102]";
connectAttr "center_spine_2_anim_rotateY.o" "nutmegRN.phl[103]";
connectAttr "center_spine_2_anim_rotateZ.o" "nutmegRN.phl[104]";
connectAttr "center_spine_2_anim_parent_to.o" "nutmegRN.phl[105]";
connectAttr "center_spine_3_anim_rotateX.o" "nutmegRN.phl[106]";
connectAttr "center_spine_3_anim_rotateY.o" "nutmegRN.phl[107]";
connectAttr "center_spine_3_anim_rotateZ.o" "nutmegRN.phl[108]";
connectAttr "center_spine_3_anim_parent_to.o" "nutmegRN.phl[109]";
connectAttr "center_neck_1_anim_rotateX.o" "nutmegRN.phl[110]";
connectAttr "center_neck_1_anim_rotateY.o" "nutmegRN.phl[111]";
connectAttr "center_neck_1_anim_rotateZ.o" "nutmegRN.phl[112]";
connectAttr "center_neck_1_anim_parent_to.o" "nutmegRN.phl[113]";
connectAttr "center_neck_2_anim_rotateX.o" "nutmegRN.phl[114]";
connectAttr "center_neck_2_anim_rotateY.o" "nutmegRN.phl[115]";
connectAttr "center_neck_2_anim_rotateZ.o" "nutmegRN.phl[116]";
connectAttr "center_head_anim_rotateX.o" "nutmegRN.phl[117]";
connectAttr "center_head_anim_rotateY.o" "nutmegRN.phl[118]";
connectAttr "center_head_anim_rotateZ.o" "nutmegRN.phl[119]";
connectAttr "center_head_anim_parent_to.o" "nutmegRN.phl[120]";
connectAttr "center_tail_tuft_A_anim_rotateX.o" "nutmegRN.phl[121]";
connectAttr "center_tail_tuft_A_anim_rotateY.o" "nutmegRN.phl[122]";
connectAttr "center_tail_tuft_A_anim_rotateZ.o" "nutmegRN.phl[123]";
connectAttr "center_tail_tuft_C_1_anim_rotateX.o" "nutmegRN.phl[124]";
connectAttr "center_tail_tuft_C_1_anim_rotateY.o" "nutmegRN.phl[125]";
connectAttr "center_tail_tuft_C_1_anim_rotateZ.o" "nutmegRN.phl[126]";
connectAttr "center_tail_tuft_C_2_anim_rotateX.o" "nutmegRN.phl[127]";
connectAttr "center_tail_tuft_C_2_anim_rotateY.o" "nutmegRN.phl[128]";
connectAttr "center_tail_tuft_C_2_anim_rotateZ.o" "nutmegRN.phl[129]";
connectAttr "center_tail_tuft_B_anim_rotateX.o" "nutmegRN.phl[130]";
connectAttr "center_tail_tuft_B_anim_rotateY.o" "nutmegRN.phl[131]";
connectAttr "center_tail_tuft_B_anim_rotateZ.o" "nutmegRN.phl[132]";
connectAttr "center_tail_tuft_E_1_anim_rotateX.o" "nutmegRN.phl[133]";
connectAttr "center_tail_tuft_E_1_anim_rotateY.o" "nutmegRN.phl[134]";
connectAttr "center_tail_tuft_E_1_anim_rotateZ.o" "nutmegRN.phl[135]";
connectAttr "center_tail_tuft_E_2_anim_rotateX.o" "nutmegRN.phl[136]";
connectAttr "center_tail_tuft_E_2_anim_rotateY.o" "nutmegRN.phl[137]";
connectAttr "center_tail_tuft_E_2_anim_rotateZ.o" "nutmegRN.phl[138]";
connectAttr "center_tail_tuft_D_1_anim_rotateX.o" "nutmegRN.phl[139]";
connectAttr "center_tail_tuft_D_1_anim_rotateY.o" "nutmegRN.phl[140]";
connectAttr "center_tail_tuft_D_1_anim_rotateZ.o" "nutmegRN.phl[141]";
connectAttr "center_tail_tuft_D_2_anim_rotateX.o" "nutmegRN.phl[142]";
connectAttr "center_tail_tuft_D_2_anim_rotateY.o" "nutmegRN.phl[143]";
connectAttr "center_tail_tuft_D_2_anim_rotateZ.o" "nutmegRN.phl[144]";
connectAttr "center_tail_tuft_G_anim_rotateX.o" "nutmegRN.phl[145]";
connectAttr "center_tail_tuft_G_anim_rotateY.o" "nutmegRN.phl[146]";
connectAttr "center_tail_tuft_G_anim_rotateZ.o" "nutmegRN.phl[147]";
connectAttr "center_tail_tuft_F_anim_rotateX.o" "nutmegRN.phl[148]";
connectAttr "center_tail_tuft_F_anim_rotateY.o" "nutmegRN.phl[149]";
connectAttr "center_tail_tuft_F_anim_rotateZ.o" "nutmegRN.phl[150]";
connectAttr "center_hair_tuft_1_anim_rotateX.o" "nutmegRN.phl[151]";
connectAttr "center_hair_tuft_1_anim_rotateY.o" "nutmegRN.phl[152]";
connectAttr "center_hair_tuft_1_anim_rotateZ.o" "nutmegRN.phl[153]";
connectAttr "center_hair_tuft_2_anim_rotateX.o" "nutmegRN.phl[154]";
connectAttr "center_hair_tuft_2_anim_rotateY.o" "nutmegRN.phl[155]";
connectAttr "center_hair_tuft_2_anim_rotateZ.o" "nutmegRN.phl[156]";
connectAttr "center_upper_hair_tuft_anim_rotateX.o" "nutmegRN.phl[157]";
connectAttr "center_upper_hair_tuft_anim_rotateY.o" "nutmegRN.phl[158]";
connectAttr "center_upper_hair_tuft_anim_rotateZ.o" "nutmegRN.phl[159]";
connectAttr "left_hair_tuft_anim_rotateX.o" "nutmegRN.phl[160]";
connectAttr "left_hair_tuft_anim_rotateY.o" "nutmegRN.phl[161]";
connectAttr "left_hair_tuft_anim_rotateZ.o" "nutmegRN.phl[162]";
connectAttr "right_hair_tuft_1_anim_rotateX.o" "nutmegRN.phl[163]";
connectAttr "right_hair_tuft_1_anim_rotateY.o" "nutmegRN.phl[164]";
connectAttr "right_hair_tuft_1_anim_rotateZ.o" "nutmegRN.phl[165]";
connectAttr "right_hair_tuft_2_anim_rotateX.o" "nutmegRN.phl[166]";
connectAttr "right_hair_tuft_2_anim_rotateY.o" "nutmegRN.phl[167]";
connectAttr "right_hair_tuft_2_anim_rotateZ.o" "nutmegRN.phl[168]";
connectAttr "left_clavicle_anim_rotateX.o" "nutmegRN.phl[169]";
connectAttr "left_clavicle_anim_rotateY.o" "nutmegRN.phl[170]";
connectAttr "left_clavicle_anim_rotateZ.o" "nutmegRN.phl[171]";
connectAttr "left_clavicle_anim_stretch.o" "nutmegRN.phl[172]";
connectAttr "left_arm_1_FK_anim_rotateY.o" "nutmegRN.phl[173]";
connectAttr "left_arm_1_FK_anim_rotateX.o" "nutmegRN.phl[174]";
connectAttr "left_arm_1_FK_anim_rotateZ.o" "nutmegRN.phl[175]";
connectAttr "left_arm_1_FK_anim_stretch.o" "nutmegRN.phl[176]";
connectAttr "left_arm_1_FK_anim_parent_to.o" "nutmegRN.phl[177]";
connectAttr "left_arm_2_FK_anim_rotateZ.o" "nutmegRN.phl[178]";
connectAttr "left_arm_2_FK_anim_stretch.o" "nutmegRN.phl[179]";
connectAttr "left_arm_3_FK_anim_rotateX.o" "nutmegRN.phl[180]";
connectAttr "left_arm_3_FK_anim_rotateY.o" "nutmegRN.phl[181]";
connectAttr "left_arm_3_FK_anim_rotateZ.o" "nutmegRN.phl[182]";
connectAttr "left_arm_IK_anim_rotateX.o" "nutmegRN.phl[183]";
connectAttr "left_arm_IK_anim_rotateY.o" "nutmegRN.phl[184]";
connectAttr "left_arm_IK_anim_rotateZ.o" "nutmegRN.phl[185]";
connectAttr "left_arm_IK_anim_translateX.o" "nutmegRN.phl[186]";
connectAttr "left_arm_IK_anim_translateY.o" "nutmegRN.phl[187]";
connectAttr "left_arm_IK_anim_translateZ.o" "nutmegRN.phl[188]";
connectAttr "left_arm_IK_anim_stretch.o" "nutmegRN.phl[189]";
connectAttr "left_arm_IK_anim_soft_IK.o" "nutmegRN.phl[190]";
connectAttr "left_arm_IK_anim_parent_to.o" "nutmegRN.phl[191]";
connectAttr "left_arm_PV_anim_FK_mode.o" "nutmegRN.phl[192]";
connectAttr "left_arm_PV_anim_translateX.o" "nutmegRN.phl[193]";
connectAttr "left_arm_PV_anim_translateY.o" "nutmegRN.phl[194]";
connectAttr "left_arm_PV_anim_translateZ.o" "nutmegRN.phl[195]";
connectAttr "left_arm_PV_anim_rotateX.o" "nutmegRN.phl[196]";
connectAttr "left_arm_PV_anim_rotateY.o" "nutmegRN.phl[197]";
connectAttr "left_arm_PV_anim_rotateZ.o" "nutmegRN.phl[198]";
connectAttr "left_arm_PV_anim_pole_vector_lock.o" "nutmegRN.phl[199]";
connectAttr "left_arm_PV_anim_parent_to.o" "nutmegRN.phl[200]";
connectAttr "left_leg_1_FK_anim_rotateX.o" "nutmegRN.phl[201]";
connectAttr "left_leg_1_FK_anim_rotateY.o" "nutmegRN.phl[202]";
connectAttr "left_leg_1_FK_anim_rotateZ.o" "nutmegRN.phl[203]";
connectAttr "left_leg_1_FK_anim_stretch.o" "nutmegRN.phl[204]";
connectAttr "left_leg_1_FK_anim_parent_to.o" "nutmegRN.phl[205]";
connectAttr "left_leg_2_FK_anim_rotateZ.o" "nutmegRN.phl[206]";
connectAttr "left_leg_2_FK_anim_stretch.o" "nutmegRN.phl[207]";
connectAttr "left_leg_3_FK_anim_rotateX.o" "nutmegRN.phl[208]";
connectAttr "left_leg_3_FK_anim_rotateY.o" "nutmegRN.phl[209]";
connectAttr "left_leg_3_FK_anim_rotateZ.o" "nutmegRN.phl[210]";
connectAttr "left_leg_4_FK_anim_rotateX.o" "nutmegRN.phl[211]";
connectAttr "left_leg_4_FK_anim_rotateY.o" "nutmegRN.phl[212]";
connectAttr "left_leg_4_FK_anim_rotateZ.o" "nutmegRN.phl[213]";
connectAttr "left_leg_5_FK_anim_rotateX.o" "nutmegRN.phl[214]";
connectAttr "left_leg_5_FK_anim_rotateY.o" "nutmegRN.phl[215]";
connectAttr "left_leg_5_FK_anim_rotateZ.o" "nutmegRN.phl[216]";
connectAttr "left_leg_IK_anim_translateX.o" "nutmegRN.phl[217]";
connectAttr "left_leg_IK_anim_translateY.o" "nutmegRN.phl[218]";
connectAttr "left_leg_IK_anim_translateZ.o" "nutmegRN.phl[219]";
connectAttr "left_leg_IK_anim_rotateZ.o" "nutmegRN.phl[220]";
connectAttr "left_leg_IK_anim_rotateX.o" "nutmegRN.phl[221]";
connectAttr "left_leg_IK_anim_rotateY.o" "nutmegRN.phl[222]";
connectAttr "left_leg_IK_anim_roll_anim_vis.o" "nutmegRN.phl[223]";
connectAttr "left_leg_IK_anim_heel_pivot.o" "nutmegRN.phl[224]";
connectAttr "left_leg_IK_anim_toe_pivot.o" "nutmegRN.phl[225]";
connectAttr "left_leg_IK_anim_lean.o" "nutmegRN.phl[226]";
connectAttr "left_leg_IK_anim_toe_lift.o" "nutmegRN.phl[227]";
connectAttr "left_leg_IK_anim_balltoe_lift.o" "nutmegRN.phl[228]";
connectAttr "left_leg_IK_anim_side_to_side.o" "nutmegRN.phl[229]";
connectAttr "left_leg_IK_anim_heel_to_toe.o" "nutmegRN.phl[230]";
connectAttr "left_leg_IK_anim_stretch.o" "nutmegRN.phl[231]";
connectAttr "left_leg_IK_anim_soft_IK.o" "nutmegRN.phl[232]";
connectAttr "left_leg_IK_anim_parent_to.o" "nutmegRN.phl[233]";
connectAttr "left_leg_quad_IK_anim_rotateX.o" "nutmegRN.phl[234]";
connectAttr "left_leg_quad_IK_anim_rotateY.o" "nutmegRN.phl[235]";
connectAttr "left_leg_quad_IK_anim_rotateZ.o" "nutmegRN.phl[236]";
connectAttr "left_leg_back_pivot_anim_rotateX.o" "nutmegRN.phl[237]";
connectAttr "left_leg_back_pivot_anim_rotateY.o" "nutmegRN.phl[238]";
connectAttr "left_leg_back_pivot_anim_rotateZ.o" "nutmegRN.phl[239]";
connectAttr "left_leg_inner_pivot_anim_rotateX.o" "nutmegRN.phl[240]";
connectAttr "left_leg_outer_pivot_anim_rotateX.o" "nutmegRN.phl[241]";
connectAttr "left_leg_front_pivot_anim_rotateX.o" "nutmegRN.phl[242]";
connectAttr "left_leg_front_pivot_anim_rotateY.o" "nutmegRN.phl[243]";
connectAttr "left_leg_front_pivot_anim_rotateZ.o" "nutmegRN.phl[244]";
connectAttr "left_leg_center_pivot_anim_rotateX.o" "nutmegRN.phl[245]";
connectAttr "left_leg_center_pivot_anim_rotateY.o" "nutmegRN.phl[246]";
connectAttr "left_leg_center_pivot_anim_rotateZ.o" "nutmegRN.phl[247]";
connectAttr "left_leg_digit_pivot_anim_rotateX.o" "nutmegRN.phl[248]";
connectAttr "left_leg_digit_pivot_anim_rotateY.o" "nutmegRN.phl[249]";
connectAttr "left_leg_digit_pivot_anim_rotateZ.o" "nutmegRN.phl[250]";
connectAttr "left_leg_PV_anim_FK_mode.o" "nutmegRN.phl[251]";
connectAttr "left_leg_PV_anim_translateX.o" "nutmegRN.phl[252]";
connectAttr "left_leg_PV_anim_translateY.o" "nutmegRN.phl[253]";
connectAttr "left_leg_PV_anim_translateZ.o" "nutmegRN.phl[254]";
connectAttr "left_leg_PV_anim_rotateZ.o" "nutmegRN.phl[255]";
connectAttr "left_leg_PV_anim_rotateX.o" "nutmegRN.phl[256]";
connectAttr "left_leg_PV_anim_rotateY.o" "nutmegRN.phl[257]";
connectAttr "left_leg_PV_anim_pole_vector_lock.o" "nutmegRN.phl[258]";
connectAttr "left_leg_PV_anim_parent_to.o" "nutmegRN.phl[259]";
connectAttr "left_wing_flap_1_anim_translateX.o" "nutmegRN.phl[260]";
connectAttr "left_wing_flap_1_anim_translateY.o" "nutmegRN.phl[261]";
connectAttr "left_wing_flap_1_anim_translateZ.o" "nutmegRN.phl[262]";
connectAttr "left_wing_flap_1_anim_rotateX.o" "nutmegRN.phl[263]";
connectAttr "left_wing_flap_1_anim_rotateY.o" "nutmegRN.phl[264]";
connectAttr "left_wing_flap_1_anim_rotateZ.o" "nutmegRN.phl[265]";
connectAttr "left_wing_flap_2_anim_translateX.o" "nutmegRN.phl[266]";
connectAttr "left_wing_flap_2_anim_translateY.o" "nutmegRN.phl[267]";
connectAttr "left_wing_flap_2_anim_translateZ.o" "nutmegRN.phl[268]";
connectAttr "left_wing_flap_2_anim_rotateX.o" "nutmegRN.phl[269]";
connectAttr "left_wing_flap_2_anim_rotateY.o" "nutmegRN.phl[270]";
connectAttr "left_wing_flap_2_anim_rotateZ.o" "nutmegRN.phl[271]";
connectAttr "left_wing_flap_3_anim_translateX.o" "nutmegRN.phl[272]";
connectAttr "left_wing_flap_3_anim_translateY.o" "nutmegRN.phl[273]";
connectAttr "left_wing_flap_3_anim_translateZ.o" "nutmegRN.phl[274]";
connectAttr "left_wing_flap_3_anim_rotateX.o" "nutmegRN.phl[275]";
connectAttr "left_wing_flap_3_anim_rotateY.o" "nutmegRN.phl[276]";
connectAttr "left_wing_flap_3_anim_rotateZ.o" "nutmegRN.phl[277]";
connectAttr "left_wing_flap_4_anim_translateX.o" "nutmegRN.phl[278]";
connectAttr "left_wing_flap_4_anim_translateY.o" "nutmegRN.phl[279]";
connectAttr "left_wing_flap_4_anim_translateZ.o" "nutmegRN.phl[280]";
connectAttr "left_wing_flap_4_anim_rotateX.o" "nutmegRN.phl[281]";
connectAttr "left_wing_flap_4_anim_rotateY.o" "nutmegRN.phl[282]";
connectAttr "left_wing_flap_4_anim_rotateZ.o" "nutmegRN.phl[283]";
connectAttr "left_wing_flap_5_anim_translateX.o" "nutmegRN.phl[284]";
connectAttr "left_wing_flap_5_anim_translateY.o" "nutmegRN.phl[285]";
connectAttr "left_wing_flap_5_anim_translateZ.o" "nutmegRN.phl[286]";
connectAttr "left_wing_flap_5_anim_rotateX.o" "nutmegRN.phl[287]";
connectAttr "left_wing_flap_5_anim_rotateY.o" "nutmegRN.phl[288]";
connectAttr "left_wing_flap_5_anim_rotateZ.o" "nutmegRN.phl[289]";
connectAttr "left_index_metacarpal_anim_rotateX.o" "nutmegRN.phl[290]";
connectAttr "left_index_metacarpal_anim_rotateY.o" "nutmegRN.phl[291]";
connectAttr "left_index_metacarpal_anim_rotateZ.o" "nutmegRN.phl[292]";
connectAttr "left_index_1_anim_rotateX.o" "nutmegRN.phl[293]";
connectAttr "left_index_1_anim_rotateY.o" "nutmegRN.phl[294]";
connectAttr "left_index_1_anim_rotateZ.o" "nutmegRN.phl[295]";
connectAttr "left_index_2_anim_rotateX.o" "nutmegRN.phl[296]";
connectAttr "left_index_2_anim_rotateY.o" "nutmegRN.phl[297]";
connectAttr "left_index_2_anim_rotateZ.o" "nutmegRN.phl[298]";
connectAttr "left_index_3_anim_rotateX.o" "nutmegRN.phl[299]";
connectAttr "left_index_3_anim_rotateY.o" "nutmegRN.phl[300]";
connectAttr "left_index_3_anim_rotateZ.o" "nutmegRN.phl[301]";
connectAttr "left_middle_metacarpal_anim_rotateX.o" "nutmegRN.phl[302]";
connectAttr "left_middle_metacarpal_anim_rotateY.o" "nutmegRN.phl[303]";
connectAttr "left_middle_metacarpal_anim_rotateZ.o" "nutmegRN.phl[304]";
connectAttr "left_middle_1_anim_rotateX.o" "nutmegRN.phl[305]";
connectAttr "left_middle_1_anim_rotateY.o" "nutmegRN.phl[306]";
connectAttr "left_middle_1_anim_rotateZ.o" "nutmegRN.phl[307]";
connectAttr "left_middle_2_anim_rotateX.o" "nutmegRN.phl[308]";
connectAttr "left_middle_2_anim_rotateY.o" "nutmegRN.phl[309]";
connectAttr "left_middle_2_anim_rotateZ.o" "nutmegRN.phl[310]";
connectAttr "left_middle_3_anim_rotateX.o" "nutmegRN.phl[311]";
connectAttr "left_middle_3_anim_rotateY.o" "nutmegRN.phl[312]";
connectAttr "left_middle_3_anim_rotateZ.o" "nutmegRN.phl[313]";
connectAttr "left_pinky_metacarpal_anim_rotateX.o" "nutmegRN.phl[314]";
connectAttr "left_pinky_metacarpal_anim_rotateY.o" "nutmegRN.phl[315]";
connectAttr "left_pinky_metacarpal_anim_rotateZ.o" "nutmegRN.phl[316]";
connectAttr "left_pinky_1_anim_rotateX.o" "nutmegRN.phl[317]";
connectAttr "left_pinky_1_anim_rotateY.o" "nutmegRN.phl[318]";
connectAttr "left_pinky_1_anim_rotateZ.o" "nutmegRN.phl[319]";
connectAttr "left_pinky_2_anim_rotateX.o" "nutmegRN.phl[320]";
connectAttr "left_pinky_2_anim_rotateY.o" "nutmegRN.phl[321]";
connectAttr "left_pinky_2_anim_rotateZ.o" "nutmegRN.phl[322]";
connectAttr "left_pinky_3_anim_rotateX.o" "nutmegRN.phl[323]";
connectAttr "left_pinky_3_anim_rotateY.o" "nutmegRN.phl[324]";
connectAttr "left_pinky_3_anim_rotateZ.o" "nutmegRN.phl[325]";
connectAttr "left_thumb_1_anim_rotateX.o" "nutmegRN.phl[326]";
connectAttr "left_thumb_1_anim_rotateY.o" "nutmegRN.phl[327]";
connectAttr "left_thumb_1_anim_rotateZ.o" "nutmegRN.phl[328]";
connectAttr "left_thumb_2_anim_rotateX.o" "nutmegRN.phl[329]";
connectAttr "left_thumb_2_anim_rotateY.o" "nutmegRN.phl[330]";
connectAttr "left_thumb_2_anim_rotateZ.o" "nutmegRN.phl[331]";
connectAttr "left_thumb_3_anim_rotateX.o" "nutmegRN.phl[332]";
connectAttr "left_thumb_3_anim_rotateY.o" "nutmegRN.phl[333]";
connectAttr "left_thumb_3_anim_rotateZ.o" "nutmegRN.phl[334]";
connectAttr "left_uppercheek_tuft_1_anim_rotateX.o" "nutmegRN.phl[335]";
connectAttr "left_uppercheek_tuft_1_anim_rotateY.o" "nutmegRN.phl[336]";
connectAttr "left_uppercheek_tuft_1_anim_rotateZ.o" "nutmegRN.phl[337]";
connectAttr "left_uppercheek_tuft_2_anim_rotateX.o" "nutmegRN.phl[338]";
connectAttr "left_uppercheek_tuft_2_anim_rotateY.o" "nutmegRN.phl[339]";
connectAttr "left_uppercheek_tuft_2_anim_rotateZ.o" "nutmegRN.phl[340]";
connectAttr "left_lowercheek_tuft_anim_rotateX.o" "nutmegRN.phl[341]";
connectAttr "left_lowercheek_tuft_anim_rotateY.o" "nutmegRN.phl[342]";
connectAttr "left_lowercheek_tuft_anim_rotateZ.o" "nutmegRN.phl[343]";
connectAttr "right_clavicle_anim_rotateX.o" "nutmegRN.phl[344]";
connectAttr "right_clavicle_anim_rotateY.o" "nutmegRN.phl[345]";
connectAttr "right_clavicle_anim_rotateZ.o" "nutmegRN.phl[346]";
connectAttr "right_clavicle_anim_stretch.o" "nutmegRN.phl[347]";
connectAttr "right_arm_1_FK_anim_rotateY.o" "nutmegRN.phl[348]";
connectAttr "right_arm_1_FK_anim_rotateX.o" "nutmegRN.phl[349]";
connectAttr "right_arm_1_FK_anim_rotateZ.o" "nutmegRN.phl[350]";
connectAttr "right_arm_1_FK_anim_stretch.o" "nutmegRN.phl[351]";
connectAttr "right_arm_1_FK_anim_parent_to.o" "nutmegRN.phl[352]";
connectAttr "right_arm_2_FK_anim_rotateZ.o" "nutmegRN.phl[353]";
connectAttr "right_arm_2_FK_anim_stretch.o" "nutmegRN.phl[354]";
connectAttr "right_arm_3_FK_anim_rotateX.o" "nutmegRN.phl[355]";
connectAttr "right_arm_3_FK_anim_rotateY.o" "nutmegRN.phl[356]";
connectAttr "right_arm_3_FK_anim_rotateZ.o" "nutmegRN.phl[357]";
connectAttr "right_arm_IK_anim_rotateX.o" "nutmegRN.phl[358]";
connectAttr "right_arm_IK_anim_rotateY.o" "nutmegRN.phl[359]";
connectAttr "right_arm_IK_anim_rotateZ.o" "nutmegRN.phl[360]";
connectAttr "right_arm_IK_anim_translateX.o" "nutmegRN.phl[361]";
connectAttr "right_arm_IK_anim_translateY.o" "nutmegRN.phl[362]";
connectAttr "right_arm_IK_anim_translateZ.o" "nutmegRN.phl[363]";
connectAttr "right_arm_IK_anim_stretch.o" "nutmegRN.phl[364]";
connectAttr "right_arm_IK_anim_soft_IK.o" "nutmegRN.phl[365]";
connectAttr "right_arm_IK_anim_parent_to.o" "nutmegRN.phl[366]";
connectAttr "right_arm_PV_anim_FK_mode.o" "nutmegRN.phl[367]";
connectAttr "right_arm_PV_anim_translateX.o" "nutmegRN.phl[368]";
connectAttr "right_arm_PV_anim_translateY.o" "nutmegRN.phl[369]";
connectAttr "right_arm_PV_anim_translateZ.o" "nutmegRN.phl[370]";
connectAttr "right_arm_PV_anim_rotateX.o" "nutmegRN.phl[371]";
connectAttr "right_arm_PV_anim_rotateY.o" "nutmegRN.phl[372]";
connectAttr "right_arm_PV_anim_rotateZ.o" "nutmegRN.phl[373]";
connectAttr "right_arm_PV_anim_pole_vector_lock.o" "nutmegRN.phl[374]";
connectAttr "right_arm_PV_anim_parent_to.o" "nutmegRN.phl[375]";
connectAttr "right_leg_1_FK_anim_rotateX.o" "nutmegRN.phl[376]";
connectAttr "right_leg_1_FK_anim_rotateY.o" "nutmegRN.phl[377]";
connectAttr "right_leg_1_FK_anim_rotateZ.o" "nutmegRN.phl[378]";
connectAttr "right_leg_1_FK_anim_stretch.o" "nutmegRN.phl[379]";
connectAttr "right_leg_1_FK_anim_parent_to.o" "nutmegRN.phl[380]";
connectAttr "right_leg_2_FK_anim_rotateZ.o" "nutmegRN.phl[381]";
connectAttr "right_leg_2_FK_anim_stretch.o" "nutmegRN.phl[382]";
connectAttr "right_leg_3_FK_anim_rotateX.o" "nutmegRN.phl[383]";
connectAttr "right_leg_3_FK_anim_rotateY.o" "nutmegRN.phl[384]";
connectAttr "right_leg_3_FK_anim_rotateZ.o" "nutmegRN.phl[385]";
connectAttr "right_leg_4_FK_anim_rotateX.o" "nutmegRN.phl[386]";
connectAttr "right_leg_4_FK_anim_rotateY.o" "nutmegRN.phl[387]";
connectAttr "right_leg_4_FK_anim_rotateZ.o" "nutmegRN.phl[388]";
connectAttr "right_leg_5_FK_anim_rotateX.o" "nutmegRN.phl[389]";
connectAttr "right_leg_5_FK_anim_rotateY.o" "nutmegRN.phl[390]";
connectAttr "right_leg_5_FK_anim_rotateZ.o" "nutmegRN.phl[391]";
connectAttr "right_leg_IK_anim_translateX.o" "nutmegRN.phl[392]";
connectAttr "right_leg_IK_anim_translateY.o" "nutmegRN.phl[393]";
connectAttr "right_leg_IK_anim_translateZ.o" "nutmegRN.phl[394]";
connectAttr "right_leg_IK_anim_rotateZ.o" "nutmegRN.phl[395]";
connectAttr "right_leg_IK_anim_rotateX.o" "nutmegRN.phl[396]";
connectAttr "right_leg_IK_anim_rotateY.o" "nutmegRN.phl[397]";
connectAttr "right_leg_IK_anim_roll_anim_vis.o" "nutmegRN.phl[398]";
connectAttr "right_leg_IK_anim_heel_pivot.o" "nutmegRN.phl[399]";
connectAttr "right_leg_IK_anim_toe_pivot.o" "nutmegRN.phl[400]";
connectAttr "right_leg_IK_anim_lean.o" "nutmegRN.phl[401]";
connectAttr "right_leg_IK_anim_toe_lift.o" "nutmegRN.phl[402]";
connectAttr "right_leg_IK_anim_balltoe_lift.o" "nutmegRN.phl[403]";
connectAttr "right_leg_IK_anim_side_to_side.o" "nutmegRN.phl[404]";
connectAttr "right_leg_IK_anim_heel_to_toe.o" "nutmegRN.phl[405]";
connectAttr "right_leg_IK_anim_stretch.o" "nutmegRN.phl[406]";
connectAttr "right_leg_IK_anim_soft_IK.o" "nutmegRN.phl[407]";
connectAttr "right_leg_IK_anim_parent_to.o" "nutmegRN.phl[408]";
connectAttr "right_leg_quad_IK_anim_rotateX.o" "nutmegRN.phl[409]";
connectAttr "right_leg_quad_IK_anim_rotateY.o" "nutmegRN.phl[410]";
connectAttr "right_leg_quad_IK_anim_rotateZ.o" "nutmegRN.phl[411]";
connectAttr "right_leg_back_pivot_anim_rotateX.o" "nutmegRN.phl[412]";
connectAttr "right_leg_back_pivot_anim_rotateY.o" "nutmegRN.phl[413]";
connectAttr "right_leg_back_pivot_anim_rotateZ.o" "nutmegRN.phl[414]";
connectAttr "right_leg_inner_pivot_anim_rotateX.o" "nutmegRN.phl[415]";
connectAttr "right_leg_outer_pivot_anim_rotateX.o" "nutmegRN.phl[416]";
connectAttr "right_leg_front_pivot_anim_rotateX.o" "nutmegRN.phl[417]";
connectAttr "right_leg_front_pivot_anim_rotateY.o" "nutmegRN.phl[418]";
connectAttr "right_leg_front_pivot_anim_rotateZ.o" "nutmegRN.phl[419]";
connectAttr "right_leg_center_pivot_anim_rotateX.o" "nutmegRN.phl[420]";
connectAttr "right_leg_center_pivot_anim_rotateY.o" "nutmegRN.phl[421]";
connectAttr "right_leg_center_pivot_anim_rotateZ.o" "nutmegRN.phl[422]";
connectAttr "right_leg_digit_pivot_anim_rotateX.o" "nutmegRN.phl[423]";
connectAttr "right_leg_digit_pivot_anim_rotateY.o" "nutmegRN.phl[424]";
connectAttr "right_leg_digit_pivot_anim_rotateZ.o" "nutmegRN.phl[425]";
connectAttr "right_leg_PV_anim_FK_mode.o" "nutmegRN.phl[426]";
connectAttr "right_leg_PV_anim_translateX.o" "nutmegRN.phl[427]";
connectAttr "right_leg_PV_anim_translateY.o" "nutmegRN.phl[428]";
connectAttr "right_leg_PV_anim_translateZ.o" "nutmegRN.phl[429]";
connectAttr "right_leg_PV_anim_rotateZ.o" "nutmegRN.phl[430]";
connectAttr "right_leg_PV_anim_rotateX.o" "nutmegRN.phl[431]";
connectAttr "right_leg_PV_anim_rotateY.o" "nutmegRN.phl[432]";
connectAttr "right_leg_PV_anim_pole_vector_lock.o" "nutmegRN.phl[433]";
connectAttr "right_leg_PV_anim_parent_to.o" "nutmegRN.phl[434]";
connectAttr "right_wing_flap_1_anim_translateX.o" "nutmegRN.phl[435]";
connectAttr "right_wing_flap_1_anim_translateY.o" "nutmegRN.phl[436]";
connectAttr "right_wing_flap_1_anim_translateZ.o" "nutmegRN.phl[437]";
connectAttr "right_wing_flap_1_anim_rotateX.o" "nutmegRN.phl[438]";
connectAttr "right_wing_flap_1_anim_rotateY.o" "nutmegRN.phl[439]";
connectAttr "right_wing_flap_1_anim_rotateZ.o" "nutmegRN.phl[440]";
connectAttr "right_wing_flap_2_anim_translateX.o" "nutmegRN.phl[441]";
connectAttr "right_wing_flap_2_anim_translateY.o" "nutmegRN.phl[442]";
connectAttr "right_wing_flap_2_anim_translateZ.o" "nutmegRN.phl[443]";
connectAttr "right_wing_flap_2_anim_rotateX.o" "nutmegRN.phl[444]";
connectAttr "right_wing_flap_2_anim_rotateY.o" "nutmegRN.phl[445]";
connectAttr "right_wing_flap_2_anim_rotateZ.o" "nutmegRN.phl[446]";
connectAttr "right_wing_flap_3_anim_translateX.o" "nutmegRN.phl[447]";
connectAttr "right_wing_flap_3_anim_translateY.o" "nutmegRN.phl[448]";
connectAttr "right_wing_flap_3_anim_translateZ.o" "nutmegRN.phl[449]";
connectAttr "right_wing_flap_3_anim_rotateX.o" "nutmegRN.phl[450]";
connectAttr "right_wing_flap_3_anim_rotateY.o" "nutmegRN.phl[451]";
connectAttr "right_wing_flap_3_anim_rotateZ.o" "nutmegRN.phl[452]";
connectAttr "right_wing_flap_4_anim_translateX.o" "nutmegRN.phl[453]";
connectAttr "right_wing_flap_4_anim_translateY.o" "nutmegRN.phl[454]";
connectAttr "right_wing_flap_4_anim_translateZ.o" "nutmegRN.phl[455]";
connectAttr "right_wing_flap_4_anim_rotateX.o" "nutmegRN.phl[456]";
connectAttr "right_wing_flap_4_anim_rotateY.o" "nutmegRN.phl[457]";
connectAttr "right_wing_flap_4_anim_rotateZ.o" "nutmegRN.phl[458]";
connectAttr "right_wing_flap_5_anim_translateX.o" "nutmegRN.phl[459]";
connectAttr "right_wing_flap_5_anim_translateY.o" "nutmegRN.phl[460]";
connectAttr "right_wing_flap_5_anim_translateZ.o" "nutmegRN.phl[461]";
connectAttr "right_wing_flap_5_anim_rotateX.o" "nutmegRN.phl[462]";
connectAttr "right_wing_flap_5_anim_rotateY.o" "nutmegRN.phl[463]";
connectAttr "right_wing_flap_5_anim_rotateZ.o" "nutmegRN.phl[464]";
connectAttr "right_index_metacarpal_anim_rotateX.o" "nutmegRN.phl[465]";
connectAttr "right_index_metacarpal_anim_rotateY.o" "nutmegRN.phl[466]";
connectAttr "right_index_metacarpal_anim_rotateZ.o" "nutmegRN.phl[467]";
connectAttr "right_index_1_anim_rotateX.o" "nutmegRN.phl[468]";
connectAttr "right_index_1_anim_rotateY.o" "nutmegRN.phl[469]";
connectAttr "right_index_1_anim_rotateZ.o" "nutmegRN.phl[470]";
connectAttr "right_index_2_anim_rotateX.o" "nutmegRN.phl[471]";
connectAttr "right_index_2_anim_rotateY.o" "nutmegRN.phl[472]";
connectAttr "right_index_2_anim_rotateZ.o" "nutmegRN.phl[473]";
connectAttr "right_index_3_anim_rotateX.o" "nutmegRN.phl[474]";
connectAttr "right_index_3_anim_rotateY.o" "nutmegRN.phl[475]";
connectAttr "right_index_3_anim_rotateZ.o" "nutmegRN.phl[476]";
connectAttr "right_middle_metacarpal_anim_rotateX.o" "nutmegRN.phl[477]";
connectAttr "right_middle_metacarpal_anim_rotateY.o" "nutmegRN.phl[478]";
connectAttr "right_middle_metacarpal_anim_rotateZ.o" "nutmegRN.phl[479]";
connectAttr "right_middle_1_anim_rotateX.o" "nutmegRN.phl[480]";
connectAttr "right_middle_1_anim_rotateY.o" "nutmegRN.phl[481]";
connectAttr "right_middle_1_anim_rotateZ.o" "nutmegRN.phl[482]";
connectAttr "right_middle_2_anim_rotateX.o" "nutmegRN.phl[483]";
connectAttr "right_middle_2_anim_rotateY.o" "nutmegRN.phl[484]";
connectAttr "right_middle_2_anim_rotateZ.o" "nutmegRN.phl[485]";
connectAttr "right_middle_3_anim_rotateX.o" "nutmegRN.phl[486]";
connectAttr "right_middle_3_anim_rotateY.o" "nutmegRN.phl[487]";
connectAttr "right_middle_3_anim_rotateZ.o" "nutmegRN.phl[488]";
connectAttr "right_pinky_metacarpal_anim_rotateX.o" "nutmegRN.phl[489]";
connectAttr "right_pinky_metacarpal_anim_rotateY.o" "nutmegRN.phl[490]";
connectAttr "right_pinky_metacarpal_anim_rotateZ.o" "nutmegRN.phl[491]";
connectAttr "right_pinky_1_anim_rotateX.o" "nutmegRN.phl[492]";
connectAttr "right_pinky_1_anim_rotateY.o" "nutmegRN.phl[493]";
connectAttr "right_pinky_1_anim_rotateZ.o" "nutmegRN.phl[494]";
connectAttr "right_pinky_2_anim_rotateX.o" "nutmegRN.phl[495]";
connectAttr "right_pinky_2_anim_rotateY.o" "nutmegRN.phl[496]";
connectAttr "right_pinky_2_anim_rotateZ.o" "nutmegRN.phl[497]";
connectAttr "right_pinky_3_anim_rotateX.o" "nutmegRN.phl[498]";
connectAttr "right_pinky_3_anim_rotateY.o" "nutmegRN.phl[499]";
connectAttr "right_pinky_3_anim_rotateZ.o" "nutmegRN.phl[500]";
connectAttr "right_thumb_1_anim_rotateX.o" "nutmegRN.phl[501]";
connectAttr "right_thumb_1_anim_rotateY.o" "nutmegRN.phl[502]";
connectAttr "right_thumb_1_anim_rotateZ.o" "nutmegRN.phl[503]";
connectAttr "right_thumb_2_anim_rotateX.o" "nutmegRN.phl[504]";
connectAttr "right_thumb_2_anim_rotateY.o" "nutmegRN.phl[505]";
connectAttr "right_thumb_2_anim_rotateZ.o" "nutmegRN.phl[506]";
connectAttr "right_thumb_3_anim_rotateX.o" "nutmegRN.phl[507]";
connectAttr "right_thumb_3_anim_rotateY.o" "nutmegRN.phl[508]";
connectAttr "right_thumb_3_anim_rotateZ.o" "nutmegRN.phl[509]";
connectAttr "right_uppercheek_tuft_1_anim_rotateX.o" "nutmegRN.phl[510]";
connectAttr "right_uppercheek_tuft_1_anim_rotateY.o" "nutmegRN.phl[511]";
connectAttr "right_uppercheek_tuft_1_anim_rotateZ.o" "nutmegRN.phl[512]";
connectAttr "right_uppercheek_tuft_2_anim_rotateX.o" "nutmegRN.phl[513]";
connectAttr "right_uppercheek_tuft_2_anim_rotateY.o" "nutmegRN.phl[514]";
connectAttr "right_uppercheek_tuft_2_anim_rotateZ.o" "nutmegRN.phl[515]";
connectAttr "right_lowercheek_tuft_anim_rotateX.o" "nutmegRN.phl[516]";
connectAttr "right_lowercheek_tuft_anim_rotateY.o" "nutmegRN.phl[517]";
connectAttr "right_lowercheek_tuft_anim_rotateZ.o" "nutmegRN.phl[518]";
connectAttr "left_ear_1_anim_rotateX.o" "nutmegRN.phl[519]";
connectAttr "left_ear_1_anim_rotateY.o" "nutmegRN.phl[520]";
connectAttr "left_ear_1_anim_rotateZ.o" "nutmegRN.phl[521]";
connectAttr "left_ear_2_anim_rotateX.o" "nutmegRN.phl[522]";
connectAttr "left_ear_2_anim_rotateY.o" "nutmegRN.phl[523]";
connectAttr "left_ear_2_anim_rotateZ.o" "nutmegRN.phl[524]";
connectAttr "right_ear_1_anim_rotateX.o" "nutmegRN.phl[525]";
connectAttr "right_ear_1_anim_rotateY.o" "nutmegRN.phl[526]";
connectAttr "right_ear_1_anim_rotateZ.o" "nutmegRN.phl[527]";
connectAttr "right_ear_2_anim_rotateX.o" "nutmegRN.phl[528]";
connectAttr "right_ear_2_anim_rotateY.o" "nutmegRN.phl[529]";
connectAttr "right_ear_2_anim_rotateZ.o" "nutmegRN.phl[530]";
connectAttr "center_brow_anim_translateX.o" "nutmegRN.phl[531]";
connectAttr "center_brow_anim_translateY.o" "nutmegRN.phl[532]";
connectAttr "center_brow_anim_translateZ.o" "nutmegRN.phl[533]";
connectAttr "center_brow_anim_rotateX.o" "nutmegRN.phl[534]";
connectAttr "center_brow_anim_rotateY.o" "nutmegRN.phl[535]";
connectAttr "center_brow_anim_rotateZ.o" "nutmegRN.phl[536]";
connectAttr "center_nose_anim_rotateX.o" "nutmegRN.phl[537]";
connectAttr "center_nose_anim_rotateY.o" "nutmegRN.phl[538]";
connectAttr "center_nose_anim_rotateZ.o" "nutmegRN.phl[539]";
connectAttr "center_jaw_anim_rotateX.o" "nutmegRN.phl[540]";
connectAttr "center_jaw_anim_rotateY.o" "nutmegRN.phl[541]";
connectAttr "center_jaw_anim_rotateZ.o" "nutmegRN.phl[542]";
connectAttr "center_mouth_upper_lip_nurb_visibility.o" "nutmegRN.phl[543]";
connectAttr "rebuildSurface2.os" "nutmegRN.phl[544]";
connectAttr "center_mouth_lower_lip_nurb_visibility.o" "nutmegRN.phl[545]";
connectAttr "rebuildSurface1.os" "nutmegRN.phl[546]";
connectAttr "center_mouth_upper_right_corner_anim_translateX.o" "nutmegRN.phl[547]"
		;
connectAttr "center_mouth_upper_right_corner_anim_translateY.o" "nutmegRN.phl[548]"
		;
connectAttr "center_mouth_upper_right_corner_anim_translateZ.o" "nutmegRN.phl[549]"
		;
connectAttr "center_mouth_upper_right_corner_anim_rotateX.o" "nutmegRN.phl[550]"
		;
connectAttr "center_mouth_upper_right_corner_anim_rotateY.o" "nutmegRN.phl[551]"
		;
connectAttr "center_mouth_upper_right_corner_anim_rotateZ.o" "nutmegRN.phl[552]"
		;
connectAttr "center_mouth_upper_right_anim_translateX.o" "nutmegRN.phl[553]";
connectAttr "center_mouth_upper_right_anim_translateY.o" "nutmegRN.phl[554]";
connectAttr "center_mouth_upper_right_anim_translateZ.o" "nutmegRN.phl[555]";
connectAttr "center_mouth_upper_right_anim_rotateX.o" "nutmegRN.phl[556]";
connectAttr "center_mouth_upper_right_anim_rotateY.o" "nutmegRN.phl[557]";
connectAttr "center_mouth_upper_right_anim_rotateZ.o" "nutmegRN.phl[558]";
connectAttr "center_mouth_upper_middle_anim_translateX.o" "nutmegRN.phl[559]";
connectAttr "center_mouth_upper_middle_anim_translateY.o" "nutmegRN.phl[560]";
connectAttr "center_mouth_upper_middle_anim_translateZ.o" "nutmegRN.phl[561]";
connectAttr "center_mouth_upper_middle_anim_rotateX.o" "nutmegRN.phl[562]";
connectAttr "center_mouth_upper_middle_anim_rotateY.o" "nutmegRN.phl[563]";
connectAttr "center_mouth_upper_middle_anim_rotateZ.o" "nutmegRN.phl[564]";
connectAttr "center_mouth_upper_left_anim_translateX.o" "nutmegRN.phl[565]";
connectAttr "center_mouth_upper_left_anim_translateY.o" "nutmegRN.phl[566]";
connectAttr "center_mouth_upper_left_anim_translateZ.o" "nutmegRN.phl[567]";
connectAttr "center_mouth_upper_left_anim_rotateX.o" "nutmegRN.phl[568]";
connectAttr "center_mouth_upper_left_anim_rotateY.o" "nutmegRN.phl[569]";
connectAttr "center_mouth_upper_left_anim_rotateZ.o" "nutmegRN.phl[570]";
connectAttr "center_mouth_upper_left_corner_anim_translateX.o" "nutmegRN.phl[571]"
		;
connectAttr "center_mouth_upper_left_corner_anim_translateY.o" "nutmegRN.phl[572]"
		;
connectAttr "center_mouth_upper_left_corner_anim_translateZ.o" "nutmegRN.phl[573]"
		;
connectAttr "center_mouth_upper_left_corner_anim_rotateX.o" "nutmegRN.phl[574]";
connectAttr "center_mouth_upper_left_corner_anim_rotateY.o" "nutmegRN.phl[575]";
connectAttr "center_mouth_upper_left_corner_anim_rotateZ.o" "nutmegRN.phl[576]";
connectAttr "center_mouth_right_anim_translateX.o" "nutmegRN.phl[577]";
connectAttr "center_mouth_right_anim_translateY.o" "nutmegRN.phl[578]";
connectAttr "center_mouth_right_anim_translateZ.o" "nutmegRN.phl[579]";
connectAttr "center_mouth_right_anim_rotateX.o" "nutmegRN.phl[580]";
connectAttr "center_mouth_right_anim_rotateY.o" "nutmegRN.phl[581]";
connectAttr "center_mouth_right_anim_rotateZ.o" "nutmegRN.phl[582]";
connectAttr "center_mouth_left_anim_translateX.o" "nutmegRN.phl[583]";
connectAttr "center_mouth_left_anim_translateY.o" "nutmegRN.phl[584]";
connectAttr "center_mouth_left_anim_translateZ.o" "nutmegRN.phl[585]";
connectAttr "center_mouth_left_anim_rotateX.o" "nutmegRN.phl[586]";
connectAttr "center_mouth_left_anim_rotateY.o" "nutmegRN.phl[587]";
connectAttr "center_mouth_left_anim_rotateZ.o" "nutmegRN.phl[588]";
connectAttr "center_mouth_lower_right_corner_anim_translateX.o" "nutmegRN.phl[589]"
		;
connectAttr "center_mouth_lower_right_corner_anim_translateY.o" "nutmegRN.phl[590]"
		;
connectAttr "center_mouth_lower_right_corner_anim_translateZ.o" "nutmegRN.phl[591]"
		;
connectAttr "center_mouth_lower_right_corner_anim_rotateX.o" "nutmegRN.phl[592]"
		;
connectAttr "center_mouth_lower_right_corner_anim_rotateY.o" "nutmegRN.phl[593]"
		;
connectAttr "center_mouth_lower_right_corner_anim_rotateZ.o" "nutmegRN.phl[594]"
		;
connectAttr "center_mouth_lower_right_anim_translateX.o" "nutmegRN.phl[595]";
connectAttr "center_mouth_lower_right_anim_translateY.o" "nutmegRN.phl[596]";
connectAttr "center_mouth_lower_right_anim_translateZ.o" "nutmegRN.phl[597]";
connectAttr "center_mouth_lower_right_anim_rotateX.o" "nutmegRN.phl[598]";
connectAttr "center_mouth_lower_right_anim_rotateY.o" "nutmegRN.phl[599]";
connectAttr "center_mouth_lower_right_anim_rotateZ.o" "nutmegRN.phl[600]";
connectAttr "center_mouth_lower_middle_anim_translateX.o" "nutmegRN.phl[601]";
connectAttr "center_mouth_lower_middle_anim_translateY.o" "nutmegRN.phl[602]";
connectAttr "center_mouth_lower_middle_anim_translateZ.o" "nutmegRN.phl[603]";
connectAttr "center_mouth_lower_middle_anim_rotateX.o" "nutmegRN.phl[604]";
connectAttr "center_mouth_lower_middle_anim_rotateY.o" "nutmegRN.phl[605]";
connectAttr "center_mouth_lower_middle_anim_rotateZ.o" "nutmegRN.phl[606]";
connectAttr "center_mouth_lower_left_anim_translateX.o" "nutmegRN.phl[607]";
connectAttr "center_mouth_lower_left_anim_translateY.o" "nutmegRN.phl[608]";
connectAttr "center_mouth_lower_left_anim_translateZ.o" "nutmegRN.phl[609]";
connectAttr "center_mouth_lower_left_anim_rotateX.o" "nutmegRN.phl[610]";
connectAttr "center_mouth_lower_left_anim_rotateY.o" "nutmegRN.phl[611]";
connectAttr "center_mouth_lower_left_anim_rotateZ.o" "nutmegRN.phl[612]";
connectAttr "center_mouth_lower_left_corner_anim_translateX.o" "nutmegRN.phl[613]"
		;
connectAttr "center_mouth_lower_left_corner_anim_translateY.o" "nutmegRN.phl[614]"
		;
connectAttr "center_mouth_lower_left_corner_anim_translateZ.o" "nutmegRN.phl[615]"
		;
connectAttr "center_mouth_lower_left_corner_anim_rotateX.o" "nutmegRN.phl[616]";
connectAttr "center_mouth_lower_left_corner_anim_rotateY.o" "nutmegRN.phl[617]";
connectAttr "center_mouth_lower_left_corner_anim_rotateZ.o" "nutmegRN.phl[618]";
connectAttr "left_eyebrow_anim_translateX.o" "nutmegRN.phl[619]";
connectAttr "left_eyebrow_anim_translateY.o" "nutmegRN.phl[620]";
connectAttr "left_eyebrow_anim_translateZ.o" "nutmegRN.phl[621]";
connectAttr "left_eyebrow_anim_rotateX.o" "nutmegRN.phl[622]";
connectAttr "left_eyebrow_anim_rotateY.o" "nutmegRN.phl[623]";
connectAttr "left_eyebrow_anim_rotateZ.o" "nutmegRN.phl[624]";
connectAttr "left_brow_1_anim_translateX.o" "nutmegRN.phl[625]";
connectAttr "left_brow_1_anim_translateY.o" "nutmegRN.phl[626]";
connectAttr "left_brow_1_anim_translateZ.o" "nutmegRN.phl[627]";
connectAttr "left_brow_1_anim_rotateX.o" "nutmegRN.phl[628]";
connectAttr "left_brow_1_anim_rotateY.o" "nutmegRN.phl[629]";
connectAttr "left_brow_1_anim_rotateZ.o" "nutmegRN.phl[630]";
connectAttr "left_brow_2_anim_translateX.o" "nutmegRN.phl[631]";
connectAttr "left_brow_2_anim_translateY.o" "nutmegRN.phl[632]";
connectAttr "left_brow_2_anim_translateZ.o" "nutmegRN.phl[633]";
connectAttr "left_brow_2_anim_rotateX.o" "nutmegRN.phl[634]";
connectAttr "left_brow_2_anim_rotateY.o" "nutmegRN.phl[635]";
connectAttr "left_brow_2_anim_rotateZ.o" "nutmegRN.phl[636]";
connectAttr "left_brow_3_anim_translateX.o" "nutmegRN.phl[637]";
connectAttr "left_brow_3_anim_translateY.o" "nutmegRN.phl[638]";
connectAttr "left_brow_3_anim_translateZ.o" "nutmegRN.phl[639]";
connectAttr "left_brow_3_anim_rotateX.o" "nutmegRN.phl[640]";
connectAttr "left_brow_3_anim_rotateY.o" "nutmegRN.phl[641]";
connectAttr "left_brow_3_anim_rotateZ.o" "nutmegRN.phl[642]";
connectAttr "left_upper_eyelid_1_anim_translateX.o" "nutmegRN.phl[643]";
connectAttr "left_upper_eyelid_1_anim_translateY.o" "nutmegRN.phl[644]";
connectAttr "left_upper_eyelid_1_anim_translateZ.o" "nutmegRN.phl[645]";
connectAttr "left_upper_eyelid_1_anim_rotateX.o" "nutmegRN.phl[646]";
connectAttr "left_upper_eyelid_1_anim_rotateY.o" "nutmegRN.phl[647]";
connectAttr "left_upper_eyelid_1_anim_rotateZ.o" "nutmegRN.phl[648]";
connectAttr "left_upper_eyelid_2_anim_translateX.o" "nutmegRN.phl[649]";
connectAttr "left_upper_eyelid_2_anim_translateY.o" "nutmegRN.phl[650]";
connectAttr "left_upper_eyelid_2_anim_translateZ.o" "nutmegRN.phl[651]";
connectAttr "left_upper_eyelid_2_anim_rotateX.o" "nutmegRN.phl[652]";
connectAttr "left_upper_eyelid_2_anim_rotateY.o" "nutmegRN.phl[653]";
connectAttr "left_upper_eyelid_2_anim_rotateZ.o" "nutmegRN.phl[654]";
connectAttr "left_upper_eyelid_3_anim_translateX.o" "nutmegRN.phl[655]";
connectAttr "left_upper_eyelid_3_anim_translateY.o" "nutmegRN.phl[656]";
connectAttr "left_upper_eyelid_3_anim_translateZ.o" "nutmegRN.phl[657]";
connectAttr "left_upper_eyelid_3_anim_rotateX.o" "nutmegRN.phl[658]";
connectAttr "left_upper_eyelid_3_anim_rotateY.o" "nutmegRN.phl[659]";
connectAttr "left_upper_eyelid_3_anim_rotateZ.o" "nutmegRN.phl[660]";
connectAttr "left_lower_eyelid_1_anim_translateX.o" "nutmegRN.phl[661]";
connectAttr "left_lower_eyelid_1_anim_translateY.o" "nutmegRN.phl[662]";
connectAttr "left_lower_eyelid_1_anim_translateZ.o" "nutmegRN.phl[663]";
connectAttr "left_lower_eyelid_1_anim_rotateX.o" "nutmegRN.phl[664]";
connectAttr "left_lower_eyelid_1_anim_rotateY.o" "nutmegRN.phl[665]";
connectAttr "left_lower_eyelid_1_anim_rotateZ.o" "nutmegRN.phl[666]";
connectAttr "left_lower_eyelid_2_anim_translateX.o" "nutmegRN.phl[667]";
connectAttr "left_lower_eyelid_2_anim_translateY.o" "nutmegRN.phl[668]";
connectAttr "left_lower_eyelid_2_anim_translateZ.o" "nutmegRN.phl[669]";
connectAttr "left_lower_eyelid_2_anim_rotateX.o" "nutmegRN.phl[670]";
connectAttr "left_lower_eyelid_2_anim_rotateY.o" "nutmegRN.phl[671]";
connectAttr "left_lower_eyelid_2_anim_rotateZ.o" "nutmegRN.phl[672]";
connectAttr "left_lower_eyelid_3_anim_translateX.o" "nutmegRN.phl[673]";
connectAttr "left_lower_eyelid_3_anim_translateY.o" "nutmegRN.phl[674]";
connectAttr "left_lower_eyelid_3_anim_translateZ.o" "nutmegRN.phl[675]";
connectAttr "left_lower_eyelid_3_anim_rotateX.o" "nutmegRN.phl[676]";
connectAttr "left_lower_eyelid_3_anim_rotateY.o" "nutmegRN.phl[677]";
connectAttr "left_lower_eyelid_3_anim_rotateZ.o" "nutmegRN.phl[678]";
connectAttr "left_inner_eyelid_anim_translateX.o" "nutmegRN.phl[679]";
connectAttr "left_inner_eyelid_anim_translateY.o" "nutmegRN.phl[680]";
connectAttr "left_inner_eyelid_anim_translateZ.o" "nutmegRN.phl[681]";
connectAttr "left_inner_eyelid_anim_rotateX.o" "nutmegRN.phl[682]";
connectAttr "left_inner_eyelid_anim_rotateY.o" "nutmegRN.phl[683]";
connectAttr "left_inner_eyelid_anim_rotateZ.o" "nutmegRN.phl[684]";
connectAttr "left_outer_eyelid_anim_translateX.o" "nutmegRN.phl[685]";
connectAttr "left_outer_eyelid_anim_translateY.o" "nutmegRN.phl[686]";
connectAttr "left_outer_eyelid_anim_translateZ.o" "nutmegRN.phl[687]";
connectAttr "left_outer_eyelid_anim_rotateX.o" "nutmegRN.phl[688]";
connectAttr "left_outer_eyelid_anim_rotateY.o" "nutmegRN.phl[689]";
connectAttr "left_outer_eyelid_anim_rotateZ.o" "nutmegRN.phl[690]";
connectAttr "left_cheek_1_anim_translateX.o" "nutmegRN.phl[691]";
connectAttr "left_cheek_1_anim_translateY.o" "nutmegRN.phl[692]";
connectAttr "left_cheek_1_anim_translateZ.o" "nutmegRN.phl[693]";
connectAttr "left_cheek_1_anim_rotateX.o" "nutmegRN.phl[694]";
connectAttr "left_cheek_1_anim_rotateY.o" "nutmegRN.phl[695]";
connectAttr "left_cheek_1_anim_rotateZ.o" "nutmegRN.phl[696]";
connectAttr "left_cheek_2_anim_translateX.o" "nutmegRN.phl[697]";
connectAttr "left_cheek_2_anim_translateY.o" "nutmegRN.phl[698]";
connectAttr "left_cheek_2_anim_translateZ.o" "nutmegRN.phl[699]";
connectAttr "left_cheek_2_anim_rotateX.o" "nutmegRN.phl[700]";
connectAttr "left_cheek_2_anim_rotateY.o" "nutmegRN.phl[701]";
connectAttr "left_cheek_2_anim_rotateZ.o" "nutmegRN.phl[702]";
connectAttr "right_eyebrow_anim_translateX.o" "nutmegRN.phl[703]";
connectAttr "right_eyebrow_anim_translateY.o" "nutmegRN.phl[704]";
connectAttr "right_eyebrow_anim_translateZ.o" "nutmegRN.phl[705]";
connectAttr "right_eyebrow_anim_rotateX.o" "nutmegRN.phl[706]";
connectAttr "right_eyebrow_anim_rotateY.o" "nutmegRN.phl[707]";
connectAttr "right_eyebrow_anim_rotateZ.o" "nutmegRN.phl[708]";
connectAttr "right_brow_1_anim_translateX.o" "nutmegRN.phl[709]";
connectAttr "right_brow_1_anim_translateY.o" "nutmegRN.phl[710]";
connectAttr "right_brow_1_anim_translateZ.o" "nutmegRN.phl[711]";
connectAttr "right_brow_1_anim_rotateX.o" "nutmegRN.phl[712]";
connectAttr "right_brow_1_anim_rotateY.o" "nutmegRN.phl[713]";
connectAttr "right_brow_1_anim_rotateZ.o" "nutmegRN.phl[714]";
connectAttr "right_brow_2_anim_translateX.o" "nutmegRN.phl[715]";
connectAttr "right_brow_2_anim_translateY.o" "nutmegRN.phl[716]";
connectAttr "right_brow_2_anim_translateZ.o" "nutmegRN.phl[717]";
connectAttr "right_brow_2_anim_rotateX.o" "nutmegRN.phl[718]";
connectAttr "right_brow_2_anim_rotateY.o" "nutmegRN.phl[719]";
connectAttr "right_brow_2_anim_rotateZ.o" "nutmegRN.phl[720]";
connectAttr "right_brow_3_anim_translateX.o" "nutmegRN.phl[721]";
connectAttr "right_brow_3_anim_translateY.o" "nutmegRN.phl[722]";
connectAttr "right_brow_3_anim_translateZ.o" "nutmegRN.phl[723]";
connectAttr "right_brow_3_anim_rotateX.o" "nutmegRN.phl[724]";
connectAttr "right_brow_3_anim_rotateY.o" "nutmegRN.phl[725]";
connectAttr "right_brow_3_anim_rotateZ.o" "nutmegRN.phl[726]";
connectAttr "right_upper_eyelid_1_anim_translateX.o" "nutmegRN.phl[727]";
connectAttr "right_upper_eyelid_1_anim_translateY.o" "nutmegRN.phl[728]";
connectAttr "right_upper_eyelid_1_anim_translateZ.o" "nutmegRN.phl[729]";
connectAttr "right_upper_eyelid_1_anim_rotateX.o" "nutmegRN.phl[730]";
connectAttr "right_upper_eyelid_1_anim_rotateY.o" "nutmegRN.phl[731]";
connectAttr "right_upper_eyelid_1_anim_rotateZ.o" "nutmegRN.phl[732]";
connectAttr "right_upper_eyelid_2_anim_translateX.o" "nutmegRN.phl[733]";
connectAttr "right_upper_eyelid_2_anim_translateY.o" "nutmegRN.phl[734]";
connectAttr "right_upper_eyelid_2_anim_translateZ.o" "nutmegRN.phl[735]";
connectAttr "right_upper_eyelid_2_anim_rotateX.o" "nutmegRN.phl[736]";
connectAttr "right_upper_eyelid_2_anim_rotateY.o" "nutmegRN.phl[737]";
connectAttr "right_upper_eyelid_2_anim_rotateZ.o" "nutmegRN.phl[738]";
connectAttr "right_upper_eyelid_3_anim_translateX.o" "nutmegRN.phl[739]";
connectAttr "right_upper_eyelid_3_anim_translateY.o" "nutmegRN.phl[740]";
connectAttr "right_upper_eyelid_3_anim_translateZ.o" "nutmegRN.phl[741]";
connectAttr "right_upper_eyelid_3_anim_rotateX.o" "nutmegRN.phl[742]";
connectAttr "right_upper_eyelid_3_anim_rotateY.o" "nutmegRN.phl[743]";
connectAttr "right_upper_eyelid_3_anim_rotateZ.o" "nutmegRN.phl[744]";
connectAttr "right_lower_eyelid_1_anim_translateX.o" "nutmegRN.phl[745]";
connectAttr "right_lower_eyelid_1_anim_translateY.o" "nutmegRN.phl[746]";
connectAttr "right_lower_eyelid_1_anim_translateZ.o" "nutmegRN.phl[747]";
connectAttr "right_lower_eyelid_1_anim_rotateX.o" "nutmegRN.phl[748]";
connectAttr "right_lower_eyelid_1_anim_rotateY.o" "nutmegRN.phl[749]";
connectAttr "right_lower_eyelid_1_anim_rotateZ.o" "nutmegRN.phl[750]";
connectAttr "right_lower_eyelid_2_anim_translateX.o" "nutmegRN.phl[751]";
connectAttr "right_lower_eyelid_2_anim_translateY.o" "nutmegRN.phl[752]";
connectAttr "right_lower_eyelid_2_anim_translateZ.o" "nutmegRN.phl[753]";
connectAttr "right_lower_eyelid_2_anim_rotateX.o" "nutmegRN.phl[754]";
connectAttr "right_lower_eyelid_2_anim_rotateY.o" "nutmegRN.phl[755]";
connectAttr "right_lower_eyelid_2_anim_rotateZ.o" "nutmegRN.phl[756]";
connectAttr "right_lower_eyelid_3_anim_translateX.o" "nutmegRN.phl[757]";
connectAttr "right_lower_eyelid_3_anim_translateY.o" "nutmegRN.phl[758]";
connectAttr "right_lower_eyelid_3_anim_translateZ.o" "nutmegRN.phl[759]";
connectAttr "right_lower_eyelid_3_anim_rotateX.o" "nutmegRN.phl[760]";
connectAttr "right_lower_eyelid_3_anim_rotateY.o" "nutmegRN.phl[761]";
connectAttr "right_lower_eyelid_3_anim_rotateZ.o" "nutmegRN.phl[762]";
connectAttr "right_inner_eyelid_anim_translateX.o" "nutmegRN.phl[763]";
connectAttr "right_inner_eyelid_anim_translateY.o" "nutmegRN.phl[764]";
connectAttr "right_inner_eyelid_anim_translateZ.o" "nutmegRN.phl[765]";
connectAttr "right_inner_eyelid_anim_rotateX.o" "nutmegRN.phl[766]";
connectAttr "right_inner_eyelid_anim_rotateY.o" "nutmegRN.phl[767]";
connectAttr "right_inner_eyelid_anim_rotateZ.o" "nutmegRN.phl[768]";
connectAttr "right_outer_eyelid_anim_translateX.o" "nutmegRN.phl[769]";
connectAttr "right_outer_eyelid_anim_translateY.o" "nutmegRN.phl[770]";
connectAttr "right_outer_eyelid_anim_translateZ.o" "nutmegRN.phl[771]";
connectAttr "right_outer_eyelid_anim_rotateX.o" "nutmegRN.phl[772]";
connectAttr "right_outer_eyelid_anim_rotateY.o" "nutmegRN.phl[773]";
connectAttr "right_outer_eyelid_anim_rotateZ.o" "nutmegRN.phl[774]";
connectAttr "right_cheek_1_anim_translateX.o" "nutmegRN.phl[775]";
connectAttr "right_cheek_1_anim_translateY.o" "nutmegRN.phl[776]";
connectAttr "right_cheek_1_anim_translateZ.o" "nutmegRN.phl[777]";
connectAttr "right_cheek_1_anim_rotateX.o" "nutmegRN.phl[778]";
connectAttr "right_cheek_1_anim_rotateY.o" "nutmegRN.phl[779]";
connectAttr "right_cheek_1_anim_rotateZ.o" "nutmegRN.phl[780]";
connectAttr "right_cheek_2_anim_translateX.o" "nutmegRN.phl[781]";
connectAttr "right_cheek_2_anim_translateY.o" "nutmegRN.phl[782]";
connectAttr "right_cheek_2_anim_translateZ.o" "nutmegRN.phl[783]";
connectAttr "right_cheek_2_anim_rotateX.o" "nutmegRN.phl[784]";
connectAttr "right_cheek_2_anim_rotateY.o" "nutmegRN.phl[785]";
connectAttr "right_cheek_2_anim_rotateZ.o" "nutmegRN.phl[786]";
connectAttr "center_body_armor_anim_translateX.o" "nutmegRN.phl[787]";
connectAttr "center_body_armor_anim_translateY.o" "nutmegRN.phl[788]";
connectAttr "center_body_armor_anim_translateZ.o" "nutmegRN.phl[789]";
connectAttr "center_body_armor_anim_rotateX.o" "nutmegRN.phl[790]";
connectAttr "center_body_armor_anim_rotateY.o" "nutmegRN.phl[791]";
connectAttr "center_body_armor_anim_rotateZ.o" "nutmegRN.phl[792]";
connectAttr "center_body_armor_anim_display_side_anims.o" "nutmegRN.phl[793]";
connectAttr "center_body_armor_anim_hide_spine_anims.o" "nutmegRN.phl[794]";
connectAttr "center_body_armor_anim_hide_geo.o" "nutmegRN.phl[795]";
connectAttr "center_body_armor_anim_parent_to.o" "nutmegRN.phl[796]";
connectAttr "center_body_armor_anim_open_left_side.o" "nutmegRN.phl[797]";
connectAttr "center_body_armor_anim_open_right_side.o" "nutmegRN.phl[798]";
connectAttr "center_body_armor_anim_display_normal_body.o" "nutmegRN.phl[799]";
connectAttr "center_body_armor_anim_basket_mode.o" "nutmegRN.phl[800]";
connectAttr "center_helmet_anim_split_helmet.o" "nutmegRN.phl[801]";
connectAttr "center_helmet_anim_translateX.o" "nutmegRN.phl[802]";
connectAttr "center_helmet_anim_translateY.o" "nutmegRN.phl[803]";
connectAttr "center_helmet_anim_translateZ.o" "nutmegRN.phl[804]";
connectAttr "center_helmet_anim_rotateX.o" "nutmegRN.phl[805]";
connectAttr "center_helmet_anim_rotateY.o" "nutmegRN.phl[806]";
connectAttr "center_helmet_anim_rotateZ.o" "nutmegRN.phl[807]";
connectAttr "center_helmet_anim_hide_head_anims.o" "nutmegRN.phl[808]";
connectAttr "center_helmet_anim_hide_geo.o" "nutmegRN.phl[809]";
connectAttr "center_helmet_anim_parent_to.o" "nutmegRN.phl[810]";
connectAttr "center_helmet_anim_tuck_left_ear.o" "nutmegRN.phl[811]";
connectAttr "center_helmet_anim_tuck_right_ear.o" "nutmegRN.phl[812]";
connectAttr "center_helmet_anim_hair_tuck.o" "nutmegRN.phl[813]";
connectAttr "left_helmet_piece_anim_translateX.o" "nutmegRN.phl[814]";
connectAttr "left_helmet_piece_anim_translateY.o" "nutmegRN.phl[815]";
connectAttr "left_helmet_piece_anim_translateZ.o" "nutmegRN.phl[816]";
connectAttr "left_helmet_piece_anim_rotateX.o" "nutmegRN.phl[817]";
connectAttr "left_helmet_piece_anim_rotateY.o" "nutmegRN.phl[818]";
connectAttr "left_helmet_piece_anim_rotateZ.o" "nutmegRN.phl[819]";
connectAttr "left_body_armor_anim_rotateZ.o" "nutmegRN.phl[820]";
connectAttr "left_bib_armor_anim_translateX.o" "nutmegRN.phl[821]";
connectAttr "left_bib_armor_anim_translateY.o" "nutmegRN.phl[822]";
connectAttr "left_bib_armor_anim_translateZ.o" "nutmegRN.phl[823]";
connectAttr "left_bib_armor_anim_rotateX.o" "nutmegRN.phl[824]";
connectAttr "left_bib_armor_anim_rotateY.o" "nutmegRN.phl[825]";
connectAttr "left_bib_armor_anim_rotateZ.o" "nutmegRN.phl[826]";
connectAttr "left_bib_armor_anim_parent_to.o" "nutmegRN.phl[827]";
connectAttr "left_elbow_armor_anim_translateX.o" "nutmegRN.phl[828]";
connectAttr "left_elbow_armor_anim_translateY.o" "nutmegRN.phl[829]";
connectAttr "left_elbow_armor_anim_translateZ.o" "nutmegRN.phl[830]";
connectAttr "left_elbow_armor_anim_rotateX.o" "nutmegRN.phl[831]";
connectAttr "left_elbow_armor_anim_rotateY.o" "nutmegRN.phl[832]";
connectAttr "left_elbow_armor_anim_rotateZ.o" "nutmegRN.phl[833]";
connectAttr "left_elbow_armor_anim_display_latch_anim.o" "nutmegRN.phl[834]";
connectAttr "left_elbow_armor_anim_hide_arm_anims.o" "nutmegRN.phl[835]";
connectAttr "left_elbow_armor_anim_hide_geo.o" "nutmegRN.phl[836]";
connectAttr "left_elbow_armor_anim_parent_to.o" "nutmegRN.phl[837]";
connectAttr "left_elbow_armor_anim_open_latch.o" "nutmegRN.phl[838]";
connectAttr "left_elbow_armor_latch_anim_rotateZ.o" "nutmegRN.phl[839]";
connectAttr "right_helmet_piece_anim_translateX.o" "nutmegRN.phl[840]";
connectAttr "right_helmet_piece_anim_translateY.o" "nutmegRN.phl[841]";
connectAttr "right_helmet_piece_anim_translateZ.o" "nutmegRN.phl[842]";
connectAttr "right_helmet_piece_anim_rotateX.o" "nutmegRN.phl[843]";
connectAttr "right_helmet_piece_anim_rotateY.o" "nutmegRN.phl[844]";
connectAttr "right_helmet_piece_anim_rotateZ.o" "nutmegRN.phl[845]";
connectAttr "right_body_armor_anim_rotateZ.o" "nutmegRN.phl[846]";
connectAttr "right_bib_armor_anim_translateX.o" "nutmegRN.phl[847]";
connectAttr "right_bib_armor_anim_translateY.o" "nutmegRN.phl[848]";
connectAttr "right_bib_armor_anim_translateZ.o" "nutmegRN.phl[849]";
connectAttr "right_bib_armor_anim_rotateX.o" "nutmegRN.phl[850]";
connectAttr "right_bib_armor_anim_rotateY.o" "nutmegRN.phl[851]";
connectAttr "right_bib_armor_anim_rotateZ.o" "nutmegRN.phl[852]";
connectAttr "right_bib_armor_anim_parent_to.o" "nutmegRN.phl[853]";
connectAttr "right_elbow_armor_anim_translateX.o" "nutmegRN.phl[854]";
connectAttr "right_elbow_armor_anim_translateY.o" "nutmegRN.phl[855]";
connectAttr "right_elbow_armor_anim_translateZ.o" "nutmegRN.phl[856]";
connectAttr "right_elbow_armor_anim_rotateX.o" "nutmegRN.phl[857]";
connectAttr "right_elbow_armor_anim_rotateY.o" "nutmegRN.phl[858]";
connectAttr "right_elbow_armor_anim_rotateZ.o" "nutmegRN.phl[859]";
connectAttr "right_elbow_armor_anim_display_latch_anim.o" "nutmegRN.phl[860]";
connectAttr "right_elbow_armor_anim_hide_arm_anims.o" "nutmegRN.phl[861]";
connectAttr "right_elbow_armor_anim_hide_geo.o" "nutmegRN.phl[862]";
connectAttr "right_elbow_armor_anim_parent_to.o" "nutmegRN.phl[863]";
connectAttr "right_elbow_armor_anim_open_latch.o" "nutmegRN.phl[864]";
connectAttr "right_elbow_armor_latch_anim_rotateZ.o" "nutmegRN.phl[865]";
connectAttr "nutmegRN.phl[866]" "rebuildSurface3.is";
connectAttr "nutmegRN.phl[867]" "rebuildSurface2.is";
connectAttr "nutmegRN.phl[868]" "rebuildSurface1.is";
connectAttr "cannonRN.phl[1]" "imagePlaneShape2.ltc";
connectAttr "imagePlaneShape1.msg" ":perspShape.ip" -na;
connectAttr "imagePlaneShape2.msg" ":perspShape.ip" -na;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr "expression1.out[0]" "imagePlaneShape1.fe";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr "expression2.out[0]" "imagePlaneShape2.fe";
connectAttr "render_cam_translateX.o" "render_cam.tx";
connectAttr "render_cam_translateY.o" "render_cam.ty";
connectAttr "render_cam_translateZ.o" "render_cam.tz";
connectAttr "render_cam_visibility.o" "render_cam.v";
connectAttr "render_cam_rotateX.o" "render_cam.rx";
connectAttr "render_cam_rotateY.o" "render_cam.ry";
connectAttr "render_cam_rotateZ.o" "render_cam.rz";
connectAttr "render_cam_scaleX.o" "render_cam.sx";
connectAttr "render_cam_scaleY.o" "render_cam.sy";
connectAttr "render_cam_scaleZ.o" "render_cam.sz";
connectAttr "imagePlaneShape3.msg" "render_camShape.ip" -na;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape3.ws";
connectAttr "expression3.out[0]" "imagePlaneShape3.fe";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":time1.o" "expression1.tim";
connectAttr ":time1.o" "expression2.tim";
connectAttr ":time1.o" "expression3.tim";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of nutmeg_cannon_overwatch.ma
