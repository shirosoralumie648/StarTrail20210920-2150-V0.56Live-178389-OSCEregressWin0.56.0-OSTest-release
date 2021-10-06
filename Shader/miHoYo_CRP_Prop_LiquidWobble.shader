//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Prop/LiquidWobble" {
Properties {
_FillAmount ("Fill Amount", Range(-10, 10)) = 0
_WobbleX ("WobbleX", Range(-1, 1)) = 0
_WobbleZ ("WobbleZ", Range(-1, 1)) = 0
_MainTex ("Texture", 2D) = "white" { }
_MainTexSpeed ("Main Texture Flow Speed", Vector) = (0,0,0,0)
_BrightColor ("Liquid Color Bright", Color) = (1,1,1,1)
_DarkColor ("Liquid Dark Bright", Color) = (1,1,1,1)
_SurfaceColor ("Liquid Surface Color", Color) = (1,1,1,1)
_SurfaceLighted ("Liquid Surface Intensty", Range(0, 10)) = 3
_Rim ("Foam Line Width", Range(0, 0.1)) = 0
_RimColor ("Rim Color", Color) = (1,1,1,1)
_RimPower ("Rim Power", Range(0, 10)) = 0
[Enum(AlphaBlend, 0, Opaque, 1)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
}
SubShader {
 Tags { "DisableBatching" = "true" "QUEUE" = "Geometry" }
 Pass {
  Tags { "DisableBatching" = "true" "QUEUE" = "Geometry" }
  Blend Zero Zero, Zero Zero
  AlphaToMask On
  Cull Off
  GpuProgramID 28523
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
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
}