//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Skybox/Sun Layer" {
Properties {
}
SubShader {
 Tags { "QUEUE" = "Transparent-21" "RenderType" = "Transparent" }
 Pass {
  Tags { "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent-21" "RenderType" = "Transparent" }
  Blend One One, One One
  ZClip Off
  ZWrite Off
  Cull Front
  GpuProgramID 17321
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