//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/miHoYo/Scene/Shared" {
Properties {
}
SubShader {
 UsePass "Hidden/miHoYo/Common/Shared/OverdueShader"
 Pass {
  Name "MotionVectorSceneMRT"
  Tags { "LIGHTMODE" = "MOTIONVECTORS" }
  ColorMask 0 0
  ColorMask GB 1
  ColorMask B 2
  ZWrite Off
  GpuProgramID 52873
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_MOTION_USE_MASK" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_MOTION_USE_MASK" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}