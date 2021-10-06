//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/CharacterNPCFace" {
Properties {
[MHYHelpBox(Info, Vertex Color B (outline width))] [MHYHeaderBox(OPTIONS)] [Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Float) = 2
_PolygonOffsetFactor ("Polygon Offset Factor", Float) = 0
_PolygonOffsetUnits ("Polygon Offset Units", Float) = 0
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
[MHYHeaderBox(MAPS)] [MHYHeader(Main Maps)] [MHYSingleLineTextureNoScaleOffset(_Color)] _MainTex ("Albedo", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
_EnvColor ("Env Color", Color) = (1,1,1,1)
_VertexShadowColor ("Vertex Shadow Color", Color) = (1,1,1,1)
[MHYMaterialIDFold] _CustomColor ("Custom", Range(0, 1)) = 0
[MHYMaterialIDProperty(_CustomColor)] _CustomSkinColor ("Custom Skin Color (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomSkinLightColor ("Custom Skin Color (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomSkinDarkColor ("Custom Skin Color (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomEyeBallColor ("Custom Eye Color (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomEyeBaseColor ("Custom EyeBall Color (ID = 0)", Color) = (1,1,1,1)
[MHYHeaderBox(Expression)] _NoseLineColor ("Nose Line Color", Color) = (1,1,1,1)
_NoseLinePower ("Nose Line Power", Range(0, 8)) = 1
_EyeEffectColor ("Eye Effect Color", Color) = (1,1,1,1)
_EyeEffectProcs ("Eye Effect Process", Range(0, 1)) = 0
[MHYHeaderBox(EMISSION)] _EmissionThreshold ("Emission Threshold", Range(0, 1)) = 1
_EmissionIntensity ("Emission Intensity", Float) = 0
[MHYHeaderBox(SPECULAR)] _SpecularColor ("Specular Color", Color) = (1,1,1,1)
_SpecularPow ("Specular Pow", Float) = 1
_SpecularIntensity ("Specular Intensity", Float) = 1
_SpecularThreshold ("Specular Threshold", Range(0, 1)) = 1
[MHYTextureScaleOffset] _MainMaps_ST ("Main Maps ST", Vector) = (1,1,0,0)
[MHYHeaderBox(DIFFUSE)] _ShadowColor ("Shadow Color", Color) = (0.5,0.5,0.5,1)
_EyeShadowColor ("Eye Shadow Color", Color) = (1,1,1,1)
_ShadowThreshold ("Shadow Threshold", Range(0, 1)) = 0.5
_ShadowFeather ("Shadow Feather", Range(0.0001, 0.05)) = 0.0001
_BackShadowRange ("Back Shadow Range", Range(0, 1)) = 0
_BrightDiffuseColor ("ShadowDiffuseColor", Color) = (1,1,1,1)
_ShadowDiffuseColor ("ShadowDiffuseColor", Color) = (1,1,1,1)
[MHYHeaderBox(ADDLIGHT)] _AddLightOffset ("Add Light Offset", Range(0, 1)) = 0.5
_AddLightStrengthen ("Add Light Strengthen", Range(0, 3)) = 0.3
_AddLightFeather ("Add Light Feather", Range(0, 0.1)) = 0.03
[MHYHeaderBox(RIMSHADOW)] _RimShadowColor ("Rim Shadow Color", Color) = (1,1,1,1)
_RimShadowWidth ("Rim Shadow Width", Float) = 1
_RimShadowCt ("Rim Shadow Ct", Float) = 1
_RimShadowFeather ("Rim Shadow Feather", Range(0.01, 0.99)) = 0.01
_RimShadowIntensity ("Rim Shadow Intensity", Float) = 1
_RimShadowOffset ("Rim Shadow Offset", Vector) = (0,0,0,0)
[MHYHeaderBox(RIMCOLOR)] _FresnelColor ("FresnelColor", Color) = (0,0,0,0)
_FresnelBSI ("Fresnel BSI", Vector) = (1,1,1,0)
_FresnelColorStrength ("FresnelColorStrength", Float) = 1
[MHYHeaderBox(OUTLINE)] _OutlineColor ("Outline Color", Color) = (0,0,0,1)
_OutlineWidth ("Outline Width", Range(0, 1)) = 0.1
[KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 0
_Opaqueness ("Opaqueness", Range(0, 1)) = 1
_HairBlendSilhouette ("Hair Blend Silhouette", Range(0, 1)) = 0.5
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
[MHYHeaderBox(BLOOM)] _mBloomIntensity ("Bloom Intensity", Float) = 0
[MHYHeaderBox(EXPRESSION)] _ExCheekColor ("Expression Cheek Color", Color) = (1,1,1,1)
_ExMapThreshold ("Expression Map Threshold", Range(0, 1)) = 0.5
_ExSpecularIntensity ("Expression Specular Intensity", Range(0, 7)) = 0
_ExCheekIntensity ("Expression Cheek Intensity", Range(0, 1)) = 0
[Space(10)] _ExShyColor ("Expression Shy Color", Color) = (1,1,1,1)
_ExShyIntensity ("Expression Shy Intensity", Range(0, 1)) = 0
[Space(10)] _ExShadowColor ("Expression Shadow Color", Color) = (1,1,1,1)
_ExEyeColor ("Expression Eye Color", Color) = (1,1,1,1)
_ExShadowIntensity ("Expression Shadow Intensity", Range(0, 1)) = 0
[MHYHeaderBox(SHADOW)] [Toggle(_RECEIVE_SHADOWS)] _ReceiveShadows ("Receive Shadows", Float) = 1
_StencilEye ("Stencil Eye", Float) = 17
_StencilFace ("Stencil Face", Float) = 31
}
SubShader {
 Tags { "OutlineType" = "Complex" "QUEUE" = "Geometry+10" "RenderType" = "Opaque" }
 Pass {
  Name "FaceColor"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "OutlineType" = "Complex" "QUEUE" = "Geometry+10" "RenderType" = "Opaque" }
  Blend 0 One One, One One
  ColorMask 0 0
  ColorMask 0 1
  ColorMask 0 2
  Cull Off
  Stencil {
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 7965
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FACE_EXPRESSION" "_LIPLINEFIX" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "BuildGBuffer"
  Tags { "LIGHTMODE" = "BuildGBuffer" "OutlineType" = "Complex" "QUEUE" = "Geometry+10" "RenderType" = "Opaque" }
  Stencil {
   Ref 16
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 130754
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "OpaqueOutlineSimple"
  Tags { "LIGHTMODE" = "RPGOutline" "OutlineType" = "Complex" "QUEUE" = "Geometry+10" "RenderType" = "Opaque" }
  Cull Front
  GpuProgramID 175336
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Character/Shared/OpaqueOutlineSimple"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTORSCENEMRT"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTOROUTLINEDUALFACE"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTOROUTLINEDUALFACESCENEMRT"
 UsePass "Hidden/miHoYo/Character/Shared/CUSTOMREFLECTIONOPAQUE"
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.CharacterNPCFaceShaderGUI"
}