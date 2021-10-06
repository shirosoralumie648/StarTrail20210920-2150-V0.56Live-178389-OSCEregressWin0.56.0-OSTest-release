//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_LineCable" {
Properties {
[MHYHelpURL(LINECABLE)] _MainColor ("MainColor", Color) = (1,1,1,1)
_MainTex ("Texture", 2D) = "white" { }
_FlowSpeed ("FlowSpeed", Range(-10, 10)) = 5
_ColorIntensity ("ColorIntensity", Range(0, 10)) = 2
_TimeFlow ("TimeFlow", Range(0, 1)) = 1
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Stencil {
   Ref 96
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 59977
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