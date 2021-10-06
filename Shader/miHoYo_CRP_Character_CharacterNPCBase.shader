//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/CharacterNPCBase" {
Properties {
[MHYHelpBox(Info, Vertex Color B(outline width))] [MHYHeaderBox(OPTIONS)] [Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Float) = 2
[Toggle(_IS_DUALFACE)] _EnableDualFace ("Enable Dual Face Rendering", Float) = 0
[Toggle(_ALPHATEST_ON)] _EnableAlphaCutoff ("Enable Alpha Cutoff", Float) = 0
[MHYKeywordFilter(_ALPHATEST_ON On)] _AlphaCutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_PolygonOffsetFactor ("Polygon Offset Factor", Float) = 0
_PolygonOffsetUnits ("Polygon Offset Units", Float) = 0
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
_ShowPartID ("Show Part ID", Float) = 0
[MHYHeaderBox(MAPS)] [MHYHeader(Main Maps)] [MHYSingleLineTextureNoScaleOffset(_Color)] _MainTex ("Albedo |RGB(base color) A (alpha)", 2D) = "white" { }
_ReplacedPartsTex ("Raplaced Parts Color |RGB(Parts Color) A (Parts Range)", 2D) = "white" { }
[MHYTextureScaleOffset] _ReplacedPartsPos ("Raplaced Parts ST", Vector) = (1,1,0,0)
_VertexShadowColor ("Vertex Shadow Color", Color) = (1,1,1,1)
_Color ("Color", Color) = (1,1,1,1)
_BackColor ("BackColor", Color) = (1,1,1,1)
_EnvColor ("Env Color", Color) = (1,1,1,1)
_AddColor ("Add Color", Color) = (0,0,0,0)
[MHYTextureScaleOffset] _MainMaps_ST ("Main Maps ST", Vector) = (1,1,0,0)
[MHYHeaderBox(Emission)] _EmissionThreshold ("Emission Threshold", Range(0, 1)) = 1
_EmissionIntensity ("Emission Intensity", Float) = 0
[MHYHeaderBox(DIFFUSE)] _ShadowThreshold ("Shadow Threshold", Range(0.01, 1)) = 0.55
_ShadowFeather ("Shadow Feather", Range(0.01, 1)) = 0.05
_CustomSkinLightColor ("Bright Skin Color", Color) = (1,1,1,1)
_CustomSkinDarkColor ("Shadow Skin Color", Color) = (1,1,1,1)
_BrightDiffuseColor ("BrightDiffuseColor", Color) = (1,1,1,1)
_ShadowDiffuseColor ("ShadowDiffuseColor", Color) = (1,1,1,1)
[MHYHeaderBox(SPECULAR)] [MHYMaterialIDFold] _SpecularColor ("Specular Color", Range(0, 1)) = 0
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor0 ("Specular Color (ID = 0)", Color) = (1,1,1,1)
_SpecularShininess ("Specular Shininess", Range(0.1, 128)) = 10
_SpecularIntensity ("Specular Intensity", Range(0, 5)) = 1
_SpecularThreshold ("Specular Threshold", Range(0, 1)) = 1
[MHYHeaderBox(OUTLINE)] [MHYMaterialIDFold] _Outline ("Outline", Range(0, 1)) = 0
[MHYMaterialIDProperty(_Outline)] _OutlineColor0 ("Outline Color 0 (ID = 0)", Color) = (0,0,0,1)
_OutlineWidth ("Outline Width", Range(0, 1)) = 0.1
[KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 0
[MHYHeaderBox(RIMLIGHT)] _RimMode ("0:don't use lightmap.r, 1:use", Range(0, 1)) = 0
[MHYMaterialIDFold] _RimLight ("Rim Light", Range(0, 1)) = 0
_RimWidth0 ("RimWidth 0 (ID = 0)", Range(0, 1)) = 1
_RimColor0 ("RimColor 0 (ID = 0)", Color) = (1,1,1,1)
_RimCt ("RimCt", Float) = 5
_RimIntensity ("Rim Intensity", Range(0, 5)) = 1
_RimIntensityDark ("Rim Intensity Dark", Range(0, 1)) = 0.5
_RimWeight ("Rim Weight", Float) = 1
_RimFeatherWidth ("Rim Feather Width", Range(0, 1)) = 0.01
_RimIntensityTexIntensity ("RimIntensityTexIntensity", Range(1, -1)) = 0
_RimOffset ("Rim Offset", Vector) = (0,0,0,0)
_FresnelColor ("FresnelColor", Color) = (0,0,0,0)
_FresnelBSI ("Fresnel BSI", Vector) = (1,1,1,0)
_FresnelColorStrength ("FresnelColorStrength", Float) = 1
[Toggle(_RIM_BACKLIGHT_ON)] _EnableBackRimLight ("Enable Back Rim Light", Float) = 1
_RimShadowCt ("Rim Shadow Ct", Float) = 1
_RimShadowIntensity ("Rim Shadow Intensity", Float) = 1
[MHYHeaderBox(CUSTOMCOLOR)] [MHYMaterialIDFold] _CustomColor ("Custom", Range(0, 1)) = 0
[MHYMaterialIDProperty(_CustomColor)] _CustomSkinColor ("Custom Skin Color (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor0 ("Custom Color 1 (ID = 31)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor1 ("Custom Color 1 (ID = 31)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor2 ("Custom Color 2 (ID = 63)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor3 ("Custom Color 2 (ID = 63)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor4 ("Custom Color 3 (ID = 95)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor5 ("Custom Color 3 (ID = 95)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor6 ("Custom Color 4 (ID = 127)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor7 ("Custom Color 4 (ID = 127)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor8 ("Custom Color 5 (ID = 159)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor9 ("Custom Color 5 (ID = 159)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor10 ("Custom Color 6 (ID = 192)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor11 ("Custom Color 6 (ID = 192)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor12 ("Custom Color 7 (ID = 223)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_CustomColor)] _CustomColor13 ("Custom Color 7 (ID = 223)", Color) = (1,1,1,1)
[MHYHeaderBox(SHOWPARTSBYID)] [MHYMaterialIDFold] _ShowPartID ("Show Parts", Float) = 0
[MHYMaterialIDProperty(_ShowPartID)] _ShowID0 ("Show Part 1 (ID = 0)", Float) = 0
[MHYMaterialIDProperty(_ShowPartID)] _ShowID1 ("Show Part 2 (ID = 1)", Float) = 0
[MHYMaterialIDProperty(_ShowPartID)] _ShowID2 ("Show Part 3 (ID = 2)", Float) = 0
[MHYMaterialIDProperty(_ShowPartID)] _ShowID3 ("Show Part 4 (ID = 3)", Float) = 0
[MHYMaterialIDProperty(_ShowPartID)] _ShowID4 ("Show Part 5 (ID = 4)", Float) = 0
[MHYMaterialIDProperty(_ShowPartID)] _ShowID5 ("Show Part 6 (ID = 5)", Float) = 0
[MHYMaterialIDProperty(_ShowPartID)] _ShowID6 ("Show Part 7 (ID = 6)", Float) = 0
[MHYMaterialIDProperty(_ShowPartID)] _ShowID7 ("Show Part 6 (ID = 7)", Float) = 0
[MHYHeaderBox(STOCKINGS)] [Toggle(_WITHSTOCKINGS)] _EnableStocking ("With Stockings", Float) = 0
[MHYKeywordFilter(_WITHSTOCKINGS On)] _StockRangeTex ("Stocking Range Texutre", 2D) = "black" { }
[MHYKeywordFilter(_WITHSTOCKINGS On)] _Stockcolor ("Stockings Color", Color) = (1,1,1,1)
[MHYKeywordFilter(_WITHSTOCKINGS On)] _StockDarkcolor ("Stockings Darkend Color", Color) = (1,1,1,1)
[MHYKeywordFilter(_WITHSTOCKINGS On)] _StockTransparency ("Stockings Transparency", Range(0, 1)) = 0
[MHYKeywordFilter(_WITHSTOCKINGS On)] _StockDarkWidth ("Stockings Rim Width", Range(0, 0.96)) = 0.5
[MHYKeywordFilter(_WITHSTOCKINGS On)] _Stockpower ("Stockings Power", Range(0.04, 1)) = 1
[MHYKeywordFilter(_WITHSTOCKINGS On)] _Stockpower1 ("Stockings Lighted Width", Range(1, 32)) = 1
[MHYKeywordFilter(_WITHSTOCKINGS On)] _StockSP ("Stockings Lighted Intensity", Range(0, 1)) = 0.25
[MHYKeywordFilter(_WITHSTOCKINGS On)] _StockRoughness ("Stockings Texture Intensity", Range(0, 1)) = 1
[MHYKeywordFilter(_WITHSTOCKINGS On)] _Stockthickness ("Stockings Thickness", Range(0, 1)) = 0
[MHYHeaderBox(BLOOM INSTENSITY)] [MHYMaterialIDFold] _BloomIntensity ("Bloom Intensity", Range(0, 1)) = 0
_Opaqueness ("Opaqueness", Range(0, 1)) = 1
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
[Toggle(_RECEIVE_SHADOWS)] _ReceiveShadows ("Receive Shadows", Float) = 1
_StencilRef ("Stencil Ref", Float) = 16
_StencilOP ("Stencil OP", Float) = 2
_StencilComp ("Stencil Comp", Float) = 8
_RenderingMode ("Rendering Mode", Float) = 0
_ZWrite ("ZWrite", Float) = 1
_SrcBlend ("Src Blend", Float) = 1
_DstBlend ("Src Blend", Float) = 0
_CullMode ("Src Blend", Float) = 0
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Name "BuildGBuffer"
  Tags { "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Cull Off
  Stencil {
   Ref 30
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 55138
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "CustomForward"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
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
  GpuProgramID 130618
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
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
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
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
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
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
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
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "OpaqueOutline"
  Tags { "LIGHTMODE" = "RPGOutline" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Cull Front
  Stencil {
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 156209
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
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
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
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
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
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
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
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_HIDEPARTS" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTORDUALFACESCENEMRT"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTOROUTLINEDUALFACE"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTOROUTLINEDUALFACESCENEMRT"
 UsePass "Hidden/miHoYo/Character/Shared/CUSTOMREFLECTIONOPAQUE"
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLYCULLOFF"
}
CustomEditor "RPG.Editor.CharacterNPCBaseShaderGUI"
}