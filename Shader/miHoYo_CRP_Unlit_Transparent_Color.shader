//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Unlit/Transparent_Color" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
}
SubShader {
 Tags { "QUEUE" = "Geometry+15" "RenderType" = "Transparent" }
 Pass {
  Tags { "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Geometry+15" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  GpuProgramID 12899
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