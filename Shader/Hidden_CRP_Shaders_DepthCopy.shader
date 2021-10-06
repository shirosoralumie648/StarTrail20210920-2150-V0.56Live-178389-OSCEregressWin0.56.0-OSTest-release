//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/CRP/Shaders/DepthCopy" {
Properties {
_MatIDStencilRef ("Material ID Stencil Ref", Float) = 0
_MatIDRef ("Material ID Ref", Float) = 0
}
SubShader {
 Pass {
  Name "DepthCopy"
  ColorMask 0 0
  ZTest Always
  Cull Off
  GpuProgramID 52780
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
  Name "DepthDownSample"
  ColorMask RGB 0
  ZTest Always
  Cull Off
  GpuProgramID 109711
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
  Name "DepthStencil"
  ColorMask 0 0
  ZTest Always
  ZWrite Off
  Cull Off
  Stencil {
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 156898
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