//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Internal/Transition" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_TransferInTime ("In Time", Range(0, 1)) = 0
_TransferOutTime ("Out Time", Range(0, 1)) = 0
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  GpuProgramID 10052
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_BLACK_IN" "_BLACK_OUT" "_CLOCK_IN" "_CLOCK_OUT" "_WHITE_IN" "_WHITE_OUT" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}