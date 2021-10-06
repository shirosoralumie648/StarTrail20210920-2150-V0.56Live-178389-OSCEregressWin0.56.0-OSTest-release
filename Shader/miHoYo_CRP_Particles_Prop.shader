//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Prop" {
Properties {
[Header(Render Options)] [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 0
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
[MHYHeaderBox(OUTLINE)] [KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 0
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
_OutlineWidth ("Outline Width", Range(0, 1)) = 0.1
_OutlineColor ("Outline Color", Color) = (0,0,0,1)
[MHYHeaderBox(MAPS)] [MHYSingleLineTextureNoScaleOffset(_Color)] _MainTex ("Albedo |RGB(base color) A (alpha)", 2D) = "white" { }
[Toggle(_SCREEN_SPACE_ON)] _ScreenSpaceOn ("Use Screen Space", Range(0, 1)) = 0
[MHYKeywordFilter(_SCREEN_SPACE_ON Off)] _LightMap ("Light Map |R (sepcular intensity) G (diffuse threshold) B (specular threshold)", 2D) = "white" { }
_DiffuseThreshold ("Diffuse Threshold", Range(0.01, 1)) = 0.337
_DiffuseFeather ("Diffuse Feather", Range(0.01, 1)) = 0.337
_BrightColor ("Bright Color", Color) = (1,1,1,1)
_ShadowColor ("Shadow Color", Color) = (0,0,0,1)
[MHYHeaderBox(SPECULAR)] _SpecularColor ("Specular Color", Color) = (1,1,1,1)
_SpecularShininess ("Specular Shininess", Range(0.1, 500)) = 10
_SpecularIntensity ("Specular Intensity", Range(0, 50)) = 1
[MHYHeaderBox(RIMLIGHT)] _RimColor ("RimColor", Color) = (1,1,1,0)
_RimWidth ("RimWidth", Float) = 1
_RimCt ("RimCt", Float) = 5
_RimIntensity ("Rim Intensity", Float) = 1
_RimFeatherWidth ("Rim Feather Width", Float) = 0.01
[MHYHeaderBox(BLOOM INSTENSITY)] _BloomIntensity ("Bloom Intensity", Float) = 0
[MHYHeaderBox(ADDLIGHT)] _AddLightOffset ("Add Light Offset", Range(0, 1)) = 0.5
_AddLightStrengthen ("Add Light Strengthen", Range(0, 3)) = 0.3
_AddLightFeather ("Add Light Feather", Range(0, 0.1)) = 0.03
[MHYHeaderBox(DISSOLVE)] [MHYSingleLineTextureKeywordDrawer(_DISTEX_ON)] _DisTex ("Dissolve Texture", 2D) = "white" { }
[MHYKeywordFilter(_DISTEX_ON On)] _SmoothStep ("SmoothXYZ  w=Midedge", Vector) = (0,0,0,0)
[Toggle] _UseParticleSystem ("Use Particle System Value", Range(0, 1)) = 0
[MHYKeywordFilter(_DISTEX_ON On)] _CustomData1 ("Custom Data 1(x:dissolve y:dissolve edge z:UV flip)", Vector) = (1,1,1,1)
[MHYKeywordFilter(_DISTEX_ON On)] _CustomData2 ("Custom Data 2", Color) = (1,1,1,1)
[MHYHeaderBox(STRIPE)] [MHYSingleLineTextureKeywordDrawer(_STRIPE_ON)] _StripeTex ("Stripe Texture(r:outline g:fade pattern)", 2D) = "white" { }
[MHYKeywordFilter(_STRIPE_ON On)] _StripeUV ("Strip UV", Range(1, 2)) = 1
[MHYKeywordFilter(_STRIPE_ON On)] _StripeMethod ("Strip Method(1:left to right 2:center to edge)", Range(1, 2)) = 1
[MHYKeywordFilter(_STRIPE_ON On)] _StripeBlockTiling ("Block Tiling", Float) = 1
[MHYKeywordFilter(_STRIPE_ON On)] _StripeColor ("Stripe Color", Color) = (1,1,1,1)
[MHYKeywordFilter(_STRIPE_ON On)] _StripeIntensity ("Stripe Intensity", Float) = 1
[MHYKeywordFilter(_STRIPE_ON On)] _StripeAppear ("Stripe Appear", Range(0, 1)) = 0
[MHYKeywordFilter(_STRIPE_ON On)] _StripeDelay ("Stripe Delay", Range(0, 1)) = 0
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Name "ForwardOnly"
  Tags { "LIGHTMODE" = "CustomRPBase" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 11202
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
 Pass {
  Name "OpaqueOutline"
  Tags { "LIGHTMODE" = "CustomRPBase2" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Front
  GpuProgramID 85840
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.BaseParticleShaderGUI"
}