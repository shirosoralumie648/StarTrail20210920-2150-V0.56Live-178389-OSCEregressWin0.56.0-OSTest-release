//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/Stripe" {
Properties {
_PolygonOffsetFactor ("Polygon Offset Factor", Float) = 0
_PolygonOffsetUnits ("Polygon Offset Units", Float) = 0
[MHYHeaderBox(STRIPE)] _StripeTex ("Stripe Texture(r:outline g:fade pattern)", 2D) = "white" { }
[MHYTextureScaleOffset] _MainMaps_ST ("Stripe Maps ST", Vector) = (1,1,0,0)
_StripeUV ("Strip UV", Range(1, 2)) = 1
_StripeMethod ("Strip Method(1:left to right 2:center to edge)", Range(1, 2)) = 1
_StripeBlockTiling ("Block Tiling", Float) = 1
_StripeColor ("Stripe Color", Color) = (1,1,1,1)
_StripeIntensity ("Stripe Intensity", Float) = 1
_StripeAppear ("Stripe Appear", Range(0, 1)) = 0
_StripeDelay ("Stripe Delay", Range(0, 1)) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Name "STRIPE"
  Tags { "LIGHTMODE" = "CustomRPBase" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  GpuProgramID 57003
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
  Tags { "LIGHTMODE" = "RPGOutline" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Cull Front
  GpuProgramID 84434
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
}
}