//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Unlit/Color" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_Intensity ("Intensity", Float) = 1
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "LIGHTMODE" = "CustomRPBase" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  ZTest Off
  GpuProgramID 14981
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