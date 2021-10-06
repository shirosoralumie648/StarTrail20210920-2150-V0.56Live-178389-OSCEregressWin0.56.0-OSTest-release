//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_FadePointLight" {
Properties {
[MHYHelpURL(PARTICLEFADEPOINTLIGHT)] _Intensity ("Intensity", Float) = 1
_AlbedoMultiply ("Albedo Multiply", Float) = 0
[Toggle(_SCREEN_DIRECTION_ATTEN)] _ScreenAttenOn ("Screen Direction Attenuation", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 1
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero One, Zero One
  ZTest GEqual
  ZWrite Off
  Stencil {
   Ref 128
   WriteMask 128
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 4755
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SCREEN_DIRECTION_ATTEN" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SCREEN_DIRECTION_ATTEN" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest GEqual
  ZWrite Off
  Cull Front
  Stencil {
   Ref 128
   ReadMask 128
   WriteMask 128
   Comp NotEqual
   Pass Zero
   Fail Zero
   ZFail Keep
  }
  GpuProgramID 122686
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SCREEN_DIRECTION_ATTEN" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SCREEN_DIRECTION_ATTEN" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}