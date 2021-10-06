//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/CharacterBase" {
Properties {
[MHYHelpBox(Info, Vertex Color B (outline width))] [MHYHeaderBox(OPTIONS)] [Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Float) = 2
[Toggle(_IS_DUALFACE)] _EnableDualFace ("Enable Dual Face Rendering", Float) = 0
[Toggle(_ALPHATEST_ON)] _EnableAlphaCutoff ("Enable Alpha Cutoff", Float) = 0
[MHYKeywordFilter(_ALPHATEST_ON On)] _AlphaCutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_PolygonOffsetFactor ("Polygon Offset Factor", Float) = 0
_PolygonOffsetUnits ("Polygon Offset Units", Float) = 0
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
[MHYHeaderBox(MAPS)] [MHYHeader(Main Maps)] [MHYSingleLineTextureNoScaleOffset(_Color)] _MainTex ("Albedo |RGB(base color) A (alpha)", 2D) = "white" { }
[MHYSingleLineTextureNoScaleOffset(_BackColor)] _BackMainTex ("Back Albedo", 2D) = "white" { }
_VertexShadowColor ("Vertex Shadow Color", Color) = (1,1,1,1)
_Color ("Color", Color) = (1,1,1,1)
_BackColor ("BackColor", Color) = (1,1,1,1)
_EnvColor ("Env Color", Color) = (1,1,1,1)
_AddColor ("Add Color", Color) = (0,0,0,0)
[MHYSingleLineTextureNoScaleOffset] _LightMap ("Light Map |R (sepcular intensity) G (diffuse threshold) B (specular threshold) A (material id)", 2D) = "grey" { }
[MHYTextureScaleOffset] _MainMaps_ST ("Main Maps ST", Vector) = (1,1,0,0)
[MHYHeaderBox(Emission)] _EmissionThreshold ("Emission Threshold", Range(0, 1)) = 1
_EmissionIntensity ("Emission Intensity", Float) = 0
[MHYHeaderBox(DIFFUSE)] [MHYColorGradient] _DiffuseRampMultiTex ("Shadow Multiple Ramp", 2D) = "white" { }
_ShadowRamp ("Shadow Ramp", Range(0.01, 1)) = 1
[MHYHeaderBox(SPECULAR)] [MHYMaterialIDFold] _SpecularColor ("Specular Color", Range(0, 1)) = 0
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor0 ("Specular Color (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor1 ("Specular Color (ID = 31)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor2 ("Specular Color (ID = 63)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor3 ("Specular Color (ID = 95)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor4 ("Specular Color (ID = 127)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor5 ("Specular Color (ID = 159)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor6 ("Specular Color (ID = 192)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_SpecularColor)] _SpecularColor7 ("Specular Color (ID = 223)", Color) = (1,1,1,1)
_SpecularShininess ("Specular Shininess", Range(0.1, 500)) = 10
_SpecularRoughness ("Specular Roughness", Range(0, 1)) = 0
_SpecularIntensity ("Specular Intensity", Range(0, 50)) = 1
[MHYHeaderBox(OUTLINE)] [MHYMaterialIDFold] _Outline ("Outline", Range(0, 1)) = 0
[MHYMaterialIDProperty(_Outline)] _OutlineColor0 ("Outline Color 0 (ID = 0)", Color) = (0,0,0,1)
[MHYMaterialIDProperty(_Outline)] _OutlineColor1 ("Outline Color 1 (ID = 31)", Color) = (0,0,0,1)
[MHYMaterialIDProperty(_Outline)] _OutlineColor2 ("Outline Color 2 (ID = 63)", Color) = (0,0,0,1)
[MHYMaterialIDProperty(_Outline)] _OutlineColor3 ("Outline Color 3 (ID = 95)", Color) = (0,0,0,1)
[MHYMaterialIDProperty(_Outline)] _OutlineColor4 ("Outline Color 4 (ID = 127)", Color) = (0,0,0,1)
[MHYMaterialIDProperty(_Outline)] _OutlineColor5 ("Outline Color 5 (ID = 159)", Color) = (0,0,0,1)
[MHYMaterialIDProperty(_Outline)] _OutlineColor6 ("Outline Color 6 (ID = 192)", Color) = (0,0,0,1)
[MHYMaterialIDProperty(_Outline)] _OutlineColor7 ("Outline Color 7 (ID = 223)", Color) = (0,0,0,1)
_OutlineWidth ("Outline Width", Range(0, 1)) = 0.1
[KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 0
[MHYHeaderBox(RIMLIGHT)] _RimMode ("0:don't use lightmap.r, 1:use", Range(0, 1)) = 0
[MHYMaterialIDFold] _RimLight ("Rim Light", Range(0, 1)) = 0
[MHYMaterialIDProperty(_RimLight)] _RimWidth0 ("RimWidth 0 (ID = 0)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor0 ("RimColor 0 (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimLight)] _RimWidth1 ("RimWidth 1 (ID = 31)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor1 ("RimColor 1 (ID = 31)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimLight)] _RimWidth2 ("RimWidth 2 (ID = 63)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor2 ("RimColor 2 (ID = 63)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimLight)] _RimWidth3 ("RimWidth 3 (ID = 95)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor3 ("RimColor 3 (ID = 95)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimLight)] _RimWidth4 ("RimWidth 4 (ID = 127)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor4 ("RimColor 4 (ID = 127)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimLight)] _RimWidth5 ("RimWidth 5 (ID = 159)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor5 ("RimColor 5 (ID = 159)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimLight)] _RimWidth6 ("RimWidth 6 (ID = 192)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor6 ("RimColor 6 (ID = 192)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimLight)] _RimWidth7 ("RimWidth 7 (ID = 223)", Float) = 1
[MHYMaterialIDProperty(_RimLight)] _RimColor7 ("RimColor 7 (ID = 223)", Color) = (1,1,1,1)
_RimCt ("RimCt", Float) = 5
_Rimintensity ("Rim Intensity", Float) = 1
_RimWeight ("Rim Weight", Float) = 1
_RimFeatherWidth ("Rim Feather Width", Float) = 0.01
_RimIntensityTexIntensity ("RimIntensityTexIntensity", Range(1, -1)) = 0
_RimWidth ("RimWidth", Float) = 1
_RimOffset ("Rim Offset", Vector) = (0,0,0,0)
_FresnelColor ("FresnelColor", Color) = (0,0,0,0)
_FresnelBSI ("Fresnel BSI", Vector) = (1,1,1,0)
_FresnelColorStrength ("FresnelColorStrength", Float) = 1
[Toggle(_RIM_BACKLIGHT_ON)] _EnableBackRimLight ("Enable Back Rim Light", Float) = 1
_RimShadowCt ("Rim Shadow Ct", Float) = 1
_RimShadowIntensity ("Rim Shadow Intensity", Float) = 1
[MHYHeaderBox(RIMSHADOW)] [MHYMaterialIDFold] _RimShadow ("Rim Shadow", Range(0, 1)) = 0
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor0 ("Rim Shadow Color 0 (ID = 0)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth0 ("Rim Shadow Width 0 (ID = 0)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather0 ("Rim Shadow Feather 0 (ID = 0)", Range(0.01, 0.99)) = 0.01
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor1 ("Rim Shadow Color 1 (ID = 1)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth1 ("Rim Shadow Width 1 (ID = 1)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather1 ("Rim Shadow Feather 1 (ID = 1)", Range(0.01, 0.99)) = 0.01
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor2 ("Rim Shadow Color 2 (ID = 2)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth2 ("Rim Shadow Width 2 (ID = 2)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather2 ("Rim Shadow Feather 2 (ID = 2)", Range(0.01, 0.99)) = 0.01
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor3 ("Rim Shadow Color 3 (ID = 3)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth3 ("Rim Shadow Width 3 (ID = 3)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather3 ("Rim Shadow Feather 3 (ID = 3)", Range(0.01, 0.99)) = 0.01
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor4 ("Rim Shadow Color 4 (ID = 4)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth4 ("Rim Shadow Width 4 (ID = 4)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather4 ("Rim Shadow Feather 4 (ID = 4)", Range(0.01, 0.99)) = 0.01
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor5 ("Rim Shadow Color 5 (ID = 5)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth5 ("Rim Shadow Width 5 (ID = 5)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather5 ("Rim Shadow Feather 5 (ID = 5)", Range(0.01, 0.99)) = 0.01
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor6 ("Rim Shadow Color 6 (ID = 6)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth6 ("Rim Shadow Width 6 (ID = 6)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather6 ("Rim Shadow Feather 6 (ID = 6)", Range(0.01, 0.99)) = 0.01
[MHYMaterialIDProperty(_RimShadow)] _RimShadowColor7 ("Rim Shadow Color 7 (ID = 7)", Color) = (1,1,1,1)
[MHYMaterialIDProperty(_RimShadow)] _RimShadowWidth7 ("Rim Shadow Width 7 (ID = 7)", Float) = 1
[MHYMaterialIDProperty(_RimShadow)] _RimShadowFeather7 ("Rim Shadow Feather 7 (ID = 7)", Range(0.01, 0.99)) = 0.01
_RimShadowOffset ("Rim Shadow Offset", Vector) = (0,0,0,0)
[MHYHeaderBox(_USE_FUR)] [MHYSingleLineTextureKeywordDrawer(_FUR_ON)] _FurTex ("FurTex", 2D) = "white" { }
[MHYKeywordFilter(_FUR_ON On)] _FurTexSmooth ("FurTexSmooth", Float) = 0.95
[MHYKeywordFilter(_FUR_ON On)] _FurColor ("FurColor", Color) = (0,0,0,0)
[MHYKeywordFilter(_FUR_ON On)] _FurTile ("Fur Tile", Float) = 10
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
[MHYHeaderBox(STATTYSKY)] [Toggle(_STATTYSKY)] _StarrySky ("With StarrySky", Float) = 0
[MHYKeywordFilter(_STATTYSKY On)] _SkyTex ("StarrySky Base Texture", 2D) = "black" { }
[MHYKeywordFilter(_STATTYSKY On)] _SkyMask ("StarrySky Mask Texture", 2D) = "black" { }
[MHYKeywordFilter(_STATTYSKY On)] _SkyRange ("StarrySky Range", Range(-1, 1)) = 0
[MHYKeywordFilter(_STATTYSKY On)] _SkyStarColor ("StarrySky Star Color", Color) = (1,1,1,1)
[MHYKeywordFilter(_STATTYSKY On)] _SkyStarTex ("StarrySky Star Texture", 2D) = "black" { }
[MHYKeywordFilter(_STATTYSKY On)] _SkyStarTexScale ("StarrySky Star Texture Scale", Float) = 1
[MHYKeywordFilter(_STATTYSKY On)] _SkyStarSpeed ("StarrySky Star Speed(XY)", Vector) = (0,0,0,0)
[MHYKeywordFilter(_STATTYSKY On)] _SkyStarDepthScale ("StarrySky Star DepthScale", Float) = 1
[MHYKeywordFilter(_STATTYSKY On)] _SkyStarMaskTex ("StarrySky Star Mask Texture", 2D) = "whilte" { }
[MHYKeywordFilter(_STATTYSKY On)] _SkyStarMaskTexScale ("StarrySky Star Mask Texture Scale", Float) = 1
[MHYKeywordFilter(_STATTYSKY On)] _SkyStarMaskTexSpeed ("StarrySky Star flicker frequency", Range(0, 20)) = 0
[MHYKeywordFilter(_STATTYSKY On)] _SkyFresnelColor ("StarrySky FresnelColor", Color) = (0,0,0,1)
[MHYKeywordFilter(_STATTYSKY On)] _SkyFresnelBaise ("StarrySky FresnelBaise", Float) = 0
[MHYKeywordFilter(_STATTYSKY On)] _SkyFresnelScale ("StarrySky FresnelScale", Float) = 0
[MHYKeywordFilter(_STATTYSKY On)] _SkyFresnelSmooth ("StarrySky FresnelSmooth", Range(0, 0.5)) = 0
[MHYHeaderBox(_FLAMECRYSTALEFFECT)] [Toggle(_FLAMECRYSTALEFFECT)] _FlameCrystal ("With FlameCrystal", Float) = 0
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _TangentDirTex ("Tangent Direction Texture", 2D) = "bump" { }
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameTex ("Fmale Texture", 2D) = "black" { }
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _CrystalTex ("Crystal Texture", 2D) = "black" { }
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectID ("Material ID for Crystal", Float) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameID ("Material ID for Flame", Float) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameColorOut ("OutSide Flame Color", Color) = (1,1,1,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameColorIn ("Inside Flame Color", Color) = (1,1,1,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameHeight ("Flame Height", Range(0, 1)) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameWidth ("Flame Width", Range(0, 1)) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameSpeed ("Flame Waving Speed", Float) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameSwirilTexScale ("Flame Swiril Texture Scale", Float) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameSwirilSpeed ("Flame Swiril Speed", Float) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _FlameSwirilScale ("Flame Swiril Scale", Float) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _CrystalScale ("Crystal Texture Scale", Float) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _CrystalTransparency ("Crystal Transparency", Range(0, 1)) = 0.35
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _CrystalRange1 ("Effect Progress in", Range(0, 1)) = 0
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _CrystalRange2 ("Effect Progress out", Range(0, 1)) = 1
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectColor0 ("Effect Color 0 (ID = 0)", Color) = (0,0,0,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectColor1 ("Effect Color 1 (ID = 31)", Color) = (0,0,0,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectColor2 ("Effect Color 2 (ID = 63)", Color) = (0,0,0,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectColor3 ("Effect Color 3 (ID = 95)", Color) = (0,0,0,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectColor4 ("Effect Color 4 (ID = 127)", Color) = (0,0,0,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectColor5 ("Effect Color 5 (ID = 159)", Color) = (0,0,0,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectColor6 ("Effect Color 6 (ID = 192)", Color) = (0,0,0,1)
[MHYKeywordFilter(_FLAMECRYSTALEFFECT On)] _EffectColor7 ("Effect Color 7 (ID = 223)", Color) = (0,0,0,1)
[MHYHeaderBox(Dissolve)] [Toggle(_DISSOLVE)] _DissoveON ("Enable Dissolve", Float) = 0
_DissolveRate ("Dissolve Rate", Range(0, 1)) = 0
_DissolveMap ("Dissolve Map", 2D) = "white" { }
_DissolveST ("Dissolve ST", Vector) = (1,1,0,0)
_DistortionST ("Distortion ST", Vector) = (1,1,0,0)
_DissolveDistortionIntensity ("", Float) = 0.01
_DissolveOutlineSize1 ("", Float) = 0.05
_DissolveOutlineSize2 ("", Float) = 0
_DissolveOutlineOffset ("", Float) = 0
_DissolveOutlineColor1 ("", Color) = (1,1,1,1)
_DissolveOutlineColor2 ("", Color) = (0,0,0,0)
_DissoveDirecMask ("", Float) = 2
_DissolveOutlineSmoothStep ("", Vector) = (0,0,0,0)
_DissolveUV ("", Range(0, 1)) = 0
_DissolveUVSpeed ("", Vector) = (0,0,0,0)
[MHYHeaderBox(ADDLIGHT)] _AddLightOffset ("Add Light Offset", Range(0, 1)) = 0.5
_AddLightStrengthen ("Add Light Strengthen", Range(0, 3)) = 0.3
_AddLightFeather ("Add Light Feather", Range(0, 0.1)) = 0.03
_Tst ("test", Range(0, 0.1)) = 0.03
[MHYHeaderBox(BLOOM INSTENSITY)] [MHYMaterialIDFold] _BloomIntensity ("Bloom Intensity", Range(0, 1)) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity0 ("Bloom Intensity 0 (ID = 0)", Float) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity1 ("Bloom Intensity 1 (ID = 31)", Float) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity2 ("Bloom Intensity 2 (ID = 63)", Float) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity3 ("Bloom Intensity 3 (ID = 95)", Float) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity4 ("Bloom Intensity 4 (ID = 127)", Float) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity5 ("Bloom Intensity 5 (ID = 159)", Float) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity6 ("Bloom Intensity 6 (ID = 192)", Float) = 0
[MHYMaterialIDProperty(_BloomIntensity)] _mBloomIntensity7 ("Bloom Intensity 7 (ID = 223)", Float) = 0
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
 Tags { "QUEUE" = "Geometry+40" "RenderType" = "Opaque" }
 Pass {
  Name "BuildGBuffer"
  Tags { "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry+40" "RenderType" = "Opaque" }
  Cull Off
  Stencil {
   Ref 30
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 16082
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_DISSOLVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_DISSOLVE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "CustomForward"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry+40" "RenderType" = "Opaque" }
  Blend 0 Zero Zero, Zero Zero
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
  GpuProgramID 80829
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" }
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
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_AlphaClip" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_FLAMECRYSTALEFFECT" "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_STATTYSKY" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "CustomReflectionTransparent"
  Tags { "LIGHTMODE" = "CustomReflection" "QUEUE" = "Geometry+40" "RenderType" = "Opaque" }
  Cull Off
  GpuProgramID 190328
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
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
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
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
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
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
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
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
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
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
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
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
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
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
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
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ES_LEVEL_ADJUST_ON" "_FORWARD_WITH_MOTION_VECTOR" }
Local Keywords { "_IS_DUALFACE" "_OUTLINENORMALFROM_TANGENT" "_WITHSTOCKINGS" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "OpaqueOutline"
  Tags { "LIGHTMODE" = "RPGOutline" "QUEUE" = "Geometry+40" "RenderType" = "Opaque" }
  Cull Front
  Stencil {
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 199696
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_DISSOLVE" "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_DISSOLVE" "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_ALPHATEST_ON" "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthStencilOnly"
  Tags { "LIGHTMODE" = "DepthStencilOnly" "QUEUE" = "Geometry+40" "RenderType" = "Opaque" }
  ColorMask 0 0
  Cull Off
  Stencil {
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 300284
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
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
CustomEditor "RPG.Editor.CharacterBaseShaderGUI"
}