//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Enviroment/GpuParticleOccluderFront" {
Properties {
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+999" "RenderType" = "Overlay" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+999" "RenderType" = "Overlay" }
  ColorMask 0 0
  Stencil {
   Ref 1
   ReadMask 1
   Comp Equal
   Pass Zero
   Fail Keep
   ZFail DecrSat
  }
  GpuProgramID 36886
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