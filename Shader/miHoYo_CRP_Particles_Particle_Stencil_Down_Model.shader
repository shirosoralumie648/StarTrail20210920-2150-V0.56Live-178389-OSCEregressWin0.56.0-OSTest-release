//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_Stencil_Down_Model" {
Properties {
[MHYHelpURL(STENCILDOWN)] _MainColor ("MainColor", Color) = (0,0,0,0)
_MainTex ("MainTex", 2D) = "white" { }
_MainMaskTex ("MainMaskTex", 2D) = "white" { }
_EmissionScaler ("Emission Scaler", Range(0, 50)) = 1
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Geometry+1" "RenderType" = "Opaque" }
 Pass {
  Name "BuildGBuffer"
  LOD 100
  Tags { "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry+1" "RenderType" = "Opaque" }
  Cull Off
  Stencil {
   Ref 97
   Comp Equal
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 28696
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