//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_Stencil_Down_Mask" {
Properties {
[MHYHelpURL(STENCILDOWN)] _MainColor ("MainColor", Color) = (0,0,0,0)
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Geometry+50" "RenderType" = "Opaque" }
 Pass {
  Name "BuildGBuffer"
  LOD 100
  Tags { "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry+50" "RenderType" = "Opaque" }
  Stencil {
   Ref 97
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 22554
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
  Name "BuildGBuffer"
  LOD 100
  Tags { "LIGHTMODE" = "BuildGBuffer1" "QUEUE" = "Geometry+50" "RenderType" = "Opaque" }
  ZTest Off
  Stencil {
   Ref 97
   Comp Equal
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 71750
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