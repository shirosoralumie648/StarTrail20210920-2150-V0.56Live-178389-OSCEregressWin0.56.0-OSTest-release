//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Enviroment/GpuParticleOccluderBack" {
Properties {
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+997" "RenderType" = "Overlay" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+997" "RenderType" = "Overlay" }
  ColorMask 0 0
  Cull Front
  Stencil {
   Ref 255
   Comp Always
   Pass Replace
   Fail Keep
   ZFail IncrSat
  }
  GpuProgramID 25575
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