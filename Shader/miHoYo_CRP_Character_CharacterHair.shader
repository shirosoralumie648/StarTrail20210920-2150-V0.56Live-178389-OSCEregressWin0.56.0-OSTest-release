//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/CharacterHair" {
Properties {
[MHYHelpBox(Info, Vertex Color B (outline width))] [MHYHeaderBox(OPTIONS)] [Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Float) = 2
[Toggle(_ALPHATEST_ON)] _EnableAlphaCutoff ("Enable Alpha Cutoff", Float) = 0
[MHYKeywordFilter(_ALPHATEST_ON On)] _AlphaCutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_PolygonOffsetFactor ("Polygon Offset Factor", Float) = 0
_PolygonOffsetUnits ("Polygon Offset Units", Float) = 0
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
[MHYHeaderBox(MAPS)] [MHYHeader(Main Maps)] [MHYSingleLineTextureNoScaleOffset(_Color)] _MainTex ("Albedo |RGB(base color) A (alpha)", 2D) = "white" { }
_VertexShadowColor ("Vertex Shadow Color", Color) = (1,1,1,1)
[MHYSingleLineTextureNoScaleOffset] _LightMap ("Light Map |R (sepcular intensity) G (diffuse threshold) B (specular threshold) A (material id)", 2D) = "grey" { }
[MHYTextureScaleOffset] _MainMaps_ST ("Main Maps ST", Vector) = (1,1,0,0)
_Color ("Color", Color) = (1,1,1,1)
_BackColor ("Back Color", Color) = (1,1,1,1)
_EnvColor ("Env Color", Color) = (1,1,1,1)
[MHYHeaderBox(Emission)] _EmissionThreshold ("Emission Threshold", Range(0, 1)) = 1
_EmissionIntensity ("Emission Intensity", Range(0, 32)) = 0
[MHYHeaderBox(DIFFUSE)] [MHYColorGradient] _DiffuseRampMultiTex ("Diffuse Multiple Ramp", 2D) = "white" { }
_ShadowRamp ("Shadow Ramp", Range(0.01, 1)) = 1
_HairBlendWeight ("Hair Blend Weight", Range(0, 1)) = 1
_HairBlendOffset ("Hair Blend Offset", Range(-1, 0.1)) = 0
[MHYHeaderBox(SPECULAR)] [MHYMaterialIDFold] _SpecularColor ("Specular Color", Range(0, 1)) = 0
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor0 ("Specular Color (ID = 0)", Color) = (1,1,1,1)
[Toggle(_ANISOTROPIC_ON)] _UsingAniso ("Enable Anisptropic", Float) = 0
[MHYMaterialIDFold] _AnisoT ("Anisptropic by Sphere Tangent", Range(0, 1)) = 0
[Toggle(_ANISOTROPICHAIR1_ON)] _UsingTagnetShfit ("Enable Anisptropic", Float) = 0
[MHYMaterialIDFold] _AnisoN ("Anisptropic by Texture", Range(0, 1)) = 0
[Toggle(_ANISOTROPICHAIR2_ON)] _UsingTextureShfit ("Enable Anisptropic", Float) = 0
[MHYMaterialIDProperty(_AnisoN)] _TangentShifterTex ("Tangent Shifter Texture", 2D) = "black" { }
[MHYMaterialIDProperty(_AnisoN)] _Dirfix ("Anisotropic Direction", Vector) = (0,0,0,0)
[MHYMaterialIDProperty(_AnisoN)] _Fix ("Anisotropic Shifting Amount", Vector) = (0,0,0,0)
[MHYMaterialIDProperty(_AnisoN)] _Dist ("Dist", Range(-2, 2)) = 1
[MHYMaterialIDProperty(_AnisoN)] _fix ("fix", Range(-2, 2)) = 1
_SpecularShininess ("Specular Shininess", Range(0.1, 500)) = 10
_SpecularRoughness ("Specular Roughness", Range(0, 1)) = 0
_SpecularIntensity ("Specular Intensity", Range(0, 50)) = 1
_SpecularShadowOffset ("Specular Shadow Offset", Range(0, 1)) = 0.78
_SpecularShadowIntensity ("Specular Shadow Intensity", Range(0, 1)) = 0
[MHYHeaderBox(OUTLINE)] [MHYMaterialIDFold] _Outline ("Outline", Range(0, 1)) = 0
[MHYMaterialIDProperty(_Outline)] _OutlineColor0 ("Outline Color 0 (ID = 0)", Color) = (0,0,0,1)
_OutlineColor0 ("Outline Color 0 (ID = 0)", Color) = (0,0,0,1)
_OutlineColor1 ("Outline Color 1 (ID = 1)", Color) = (0,0,0,1)
_OutlineColor2 ("Outline Color 2 (ID = 2)", Color) = (0,0,0,1)
_OutlineColor3 ("Outline Color 3 (ID = 3)", Color) = (0,0,0,1)
_OutlineColor4 ("Outline Color 4 (ID = 4)", Color) = (0,0,0,1)
_OutlineColor5 ("Outline Color 5 (ID = 5)", Color) = (0,0,0,1)
_OutlineColor6 ("Outline Color 6 (ID = 6)", Color) = (0,0,0,1)
_OutlineColor7 ("Outline Color 7 (ID = 7)", Color) = (0,0,0,1)
_OutlineWidth ("Outline Width", Range(0, 1)) = 0.1
_OutlineBlendWeight ("Outline Blend Weight", Range(0, 4)) = 1
_OutlineBlendOffset ("Outline Blend Offset", Range(-1, 0.1)) = 0
[KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 0
[MHYHeaderBox(RIMLIGHT)] _RimMode ("0:don't use lightmap.r, 1:use", Range(0, 1)) = 0
[MHYMaterialIDFold] _RimLight ("Rim Light", Range(0, 1)) = 0
[MHYMaterialIDProperty(_RimLight)] _RimWidth0 ("RimWidth 0 (ID = 0)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor0 ("RimColor 0 (ID = 0)", Color) = (1,1,1,1)
_Rimintensity ("Rim Intensity", Float) = 3
_RimWeight ("Rim Weight", Float) = 1
_RimWidth ("RimWidth", Float) = 1
_RimOffset ("Rim Offset", Vector) = (0,0,0,0)
_FresnelColor ("FresnelColor", Color) = (0,0,0,0)
_FresnelBSI ("Fresnel BSI", Vector) = (1,1,1,0)
_FresnelColorStrength ("FresnelColorStrength", Float) = 1
_RimShadowCt ("Rim Shadow Ct", Float) = 1
_RimShadowIntensity ("Rim Shadow Intensity", Float) = 1
[MHYHeaderBox(RIMSHADOW)] [MHYMaterialIDFold] _RimShadow ("Rim Shadow", Range(0, 1)) = 0
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor0 ("Rim Shadow Color 0 (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth0 ("Rim Shadow Width 0 (ID = 0)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather0 ("Rim Shadow Feather 0 (ID = 0)", Range(0.01, 0.99)) = 0.01
_RimShadowOffset ("Rim Shadow Offset", Vector) = (0,0,0,0)
[MHYHeaderBox(ADDLIGHT)] _AddLightOffset ("Add Light Offset", Range(0, 1)) = 0.5
_AddLightStrengthen ("Add Light Strengthen", Range(0, 5)) = 0.3
_AddLightFeather ("Add Light Feather", Range(0, 0.1)) = 0.03
[MHYHeaderBox(BLOOM INSTENSITY)] [MHYMaterialIDFold] _BloomIntensity ("Bloom Intensity", Range(0, 1)) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity0 ("Bloom Intensity 0 (ID = 0)", Float) = 0
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
[Toggle(_RECEIVE_SHADOWS)] _ReceiveShadows ("Receive Shadows", Float) = 0
_StencilEye ("stencil", Float) = 17
}
SubShader {
 Tags { "QUEUE" = "Geometry+20" "RenderType" = "Opaque" }
 Pass {
  Name "BaseColor"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry+20" "RenderType" = "Opaque" }
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
  GpuProgramID 12594
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
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
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "BuildGBuffer"
  Tags { "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry+20" "RenderType" = "Opaque" }
  Cull Off
  Stencil {
   WriteMask 192
   Comp NotEqual
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 68292
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RIM_BACKLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RIM_BACKLIGHT_ON" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RIM_BACKLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RIM_BACKLIGHT_ON" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "BuildGBuffer1"
  Tags { "LIGHTMODE" = "BuildGBuffer1" "QUEUE" = "Geometry+20" "RenderType" = "Opaque" }
  ColorMask 0 0
  GpuProgramID 192150
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RIM_BACKLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RIM_BACKLIGHT_ON" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RIM_BACKLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RIM_BACKLIGHT_ON" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Character/Shared/OpaqueHairOutline"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTORSCENEMRT"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTOROUTLINEDUALFACE"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTOROUTLINEDUALFACESCENEMRT"
 UsePass "Hidden/miHoYo/Character/Shared/CUSTOMREFLECTIONOPAQUE"
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.CharacterHairGUI"
}