//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_Distortion_Offset" {
Properties {
[MHYHelpURL(PARTICLEDISTORTIONOFFSET)] _OffsetTex ("OffsetTex", 2D) = "white" { }
_OffsetTexColor ("OffsetTexColor", Color) = (0,0,0,0)
_OffsetIntensity ("OffsetIntensity", Vector) = (0,0,0,0)
_OffsetTexScalling ("OffsetTexScalling", Range(-30, 0)) = -30
_Opacity ("Opacity", Range(0, 1)) = 1
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+400" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPRefraction" "QUEUE" = "Transparent+400" "RenderType" = "Transparent" }
  GpuProgramID 48611
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
}
CustomEditor "RPG.Editor.BaseParticleShaderGUI"
}