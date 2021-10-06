//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/UI_Particle_UVMove_New02" {
Properties {
[MHYHelpURL(PARTICLEUVMOVENEW02)] [Header(Main Texture)] [KeywordEnum(RGBA,R,RA)] _CL ("Main Channel", Float) = 0
_MainChannel ("MainChannelA      RGB+W=0/1 ", Vector) = (1,0,0,1)
_MainChannelRGB ("MainChannelRGB  RGB=0/1 ", Vector) = (1,0,0,0)
_MainTex ("MainTex", 2D) = "white" { }
_Opacity ("Opacity", Range(0, 1)) = 1
_MainColor ("MainColor", Color) = (1,1,1,0.1)
_MainSpeed ("MainSpeed         intensity", Vector) = (0,0,1,1)
[Toggle(CUSTOMDATA)] _CustomData ("Custom Data", Float) = 0
_CustomUV ("Custom1uv  XY=MainNoise/ Mask   0/1", Vector) = (1,0,0,0)
[KeywordEnum(RGB,RG,X,FLOW)] _CL2 ("Noise Channel", Float) = 0
_NoiseTex ("NoiseTex", 2D) = "white" { }
_NoiseSpeed ("NoiseSpeed(RG)   intensityRG/B", Vector) = (0,0,1,1)
_NoiseSpeedG ("NoiseSpeed(B)", Vector) = (0,0,1,1)
_MaskTex ("MaskTex", 2D) = "white" { }
_MaskSpeed ("MaskSpeed  DisStep Smooth", Vector) = (0,0,0,1)
_MaskChannel ("MaskChannel  RGB=0/1  W=Noise", Vector) = (1,0,0,0)
[Header(Render Options)] [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 4, On, 0)] _AlwaysOnTop ("Always On Top", Float) = 4
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 0
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
[MHYHeaderBox(SoftParticle)] _SoftNear ("Soft Near", Range(0, 1)) = 0
_SoftFar ("Soft Far", Range(0, 1)) = 1
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 62924
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RG" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RG" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RG" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RGB" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RGB" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_X" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_X" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_X" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_X" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_X" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_X" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_CL_RGBA" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RG" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RG" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RG" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RGB" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_RGB" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_X" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_X" "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_X" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_X" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_X" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL2_X" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_CL_RGBA" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
}
}
}
CustomEditor "RPG.Editor.CRPParticleShaderGUI"
}