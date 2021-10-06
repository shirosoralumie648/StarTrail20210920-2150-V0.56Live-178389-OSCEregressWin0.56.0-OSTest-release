//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom RP/Default UnLit" {
Properties {
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Tags { "LIGHTMODE" = "CustomRPBase" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  GpuProgramID 41602
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
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLYCULLOFF"
}
}