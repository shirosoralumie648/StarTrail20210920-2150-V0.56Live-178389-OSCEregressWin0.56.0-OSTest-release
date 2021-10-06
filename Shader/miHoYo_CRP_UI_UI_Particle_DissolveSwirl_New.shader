//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/UI_Particle_DissolveSwirl_New" {
Properties {
[MHYHelpURL(PARTICLEDISSOLVESWIRLNEW)] [KeywordEnum(RGBA,R,RA)] _CL ("Main Channel", Float) = 0
_MainChannel ("MainChannelA      RGB+W=0/1 ", Vector) = (1,0,0,1)
_MainChannelRGB ("MainChannelRGB  RGBA=0/1 ", Vector) = (1,0,0,0)
_MainTex ("MainTex", 2D) = "white" { }
_MainSpeed ("MainSpeed  intensity* +", Vector) = (0,0,1,0)
[Toggle(_MidColorON)] _Mid ("Mid", Float) = 0
_MidColor ("MidColorRGB   A", Color) = (1,1,1,0.1)
_SmoothStep ("SmoothXYZ  w=Midedge", Vector) = (0,0,0,0)
_DisTex ("DisTex  (r+g)*mask ", 2D) = "white" { }
_DisRSpeed ("Dis(R)Speed  rg+z", Vector) = (0,0,0,0)
[Toggle(_DisTexGON)] _DisTexG ("Dis(G)_Switch", Float) = 0
_DisGSpeed ("Dis(G)Speed  uv", Vector) = (0,0,1,1)
[Toggle(_MaskON)] _MaskON ("MaskTex_Switch /  OFF=UVramp  offset=0/1/2 ", Float) = 1
_MaskTex ("MaskTex", 2D) = "white" { }
_MaskChannel ("MaskChannel  RGB=0/1", Vector) = (1,0,0,0)
[Toggle(_Noise)] _NoiseSwitch ("NoiseTex_Switch", Float) = 0
_NoiseTex ("NoiseTex", 2D) = "white" { }
_NoiseSpeed ("NoiseSpeed  itensity", Vector) = (0,0,1,1)
_CustomUV ("Custom1uv    XYZ = Main/  DisNoise/  Mask   0/1", Vector) = (1,1,0,0)
_Disappear ("Disappear", Range(0, 1)) = 0
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
[Enum(Off, 4, On, 0)] _AlwaysOnTop ("Always On Top", Float) = 4
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
_Opacity ("Opacity", Range(0, 1)) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
[MHYHeaderBox(REFLECTION)] [MHYKeywordFilter(_PLANAR_REFLECTION On)] _ReflectionFresnel ("Reflection Fresnel", Vector) = (0,0,1,0)
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
  GpuProgramID 37008
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MaskON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MaskON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_MaskON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MaskON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
}
}
}
CustomEditor "RPG.Editor.CRPParticleShaderGUI"
}