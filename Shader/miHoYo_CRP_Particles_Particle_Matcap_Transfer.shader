//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_Matcap_Transfer" {
Properties {
_MainColor ("Main Color", Color) = (1,1,1,1)
_MainTex ("Main Texture", 2D) = "white" { }
_MatCapTex1 ("MatCap Texture 01", 2D) = "white" { }
_MatcapScale1 ("MatCap Scale 01", Float) = 1
_MatCapTex2 ("Matcap Texture 02", 2D) = "white" { }
_MatcapScale2 ("MatCap Scale 02", Float) = 1
_MatCapLerp ("Matcap Lerp", Range(0, 1)) = 0
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  GpuProgramID 48966
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
}