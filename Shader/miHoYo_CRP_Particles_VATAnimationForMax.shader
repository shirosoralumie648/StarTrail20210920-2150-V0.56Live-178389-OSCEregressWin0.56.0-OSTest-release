//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/VATAnimationForMax" {
Properties {
[MHYHelpURL(VATANIMATIONFORMAX)] _MainTex ("Texture", 2D) = "white" { }
_PositionTex ("Position Texture", 2D) = "white" { }
_Frame ("Frame", Float) = 101
_VertexCount ("VertexCount", Float) = 10
_TextureWidth ("TextureWidth", Float) = 32
_TimeLocal ("Time", Range(0, 1)) = 0
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "RenderType" = "Opaque" }
  Cull Off
  GpuProgramID 59778
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