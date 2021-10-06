//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_DecalDefault" {
Properties {
[MHYHelpURL(PARTICLEDECALDEFAULT)] [Toggle(ISPARTICLE_ON)] _ISPARTICLE ("Is particle?", Float) = 1
[Toggle(ANNULAR_UV_ON)] _TurnOnAnnularUV ("Turn On Annular UV", Float) = 0
_MainColor ("MainColor", Color) = (1,1,1,0.1)
_MainColorScale ("MainColorScale", Range(0, 20)) = 1
[KeywordEnum(RGBA,RA)] _CL ("Main Channel", Float) = 0
_MainChannel ("MainChannelA      RGBA=0/1 ", Vector) = (1,0,0,0)
_MainChannelRGB ("MainChannelRGB  RGBA=0/1 ", Vector) = (1,0,0,0)
_MainTex ("Texture", 2D) = "white" { }
_MainSpeed ("MainSpeed ", Vector) = (0,0,0,0)
_MaskTex ("MaskTex", 2D) = "white" { }
_MaskChannel ("MaskChannel  RGB=0/1   W=Noise", Vector) = (1,0,0,1)
_MaskSpeed ("MaskSpeed  ", Vector) = (0,0,0,0)
[Toggle(_Noise)] _NoiseSwitch ("NoiseTex_Switch", Float) = 0
_NoiseTex ("NoiseTex", 2D) = "white" { }
_NoiseSpeed ("NoiseSpeed  ", Vector) = (0,0,0,0)
_DecalEnd ("Decal Start", Range(0, 0.1)) = 0
[Toggle(_ENABLE_DECAL_CLIP)] _EnableClip ("Enable Clip", Range(0, 1)) = 0
_DecalClip ("Decal Clip", Range(0, 1)) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _CustomSrcBlend ("SrcBlend", Float) = 5
[Enum(UnityEngine.Rendering.BlendMode)] _CustomDstBlend ("DstBlend", Float) = 10
}
SubShader {
 Tags { "DisableBatching" = "true" "QUEUE" = "Transparent+100" }
 Pass {
  Tags { "DisableBatching" = "true" "QUEUE" = "Transparent+100" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Front
  Stencil {
   Ref 128
   Comp LEqual
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 8533
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "_CL_RA" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "_CL_RA" "_ENABLE_DECAL_CLIP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "_CL_RA" "_ENABLE_DECAL_CLIP" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "ISPARTICLE_ON" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "ISPARTICLE_ON" "_CL_RA" "_ENABLE_DECAL_CLIP" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "_CL_RA" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "_CL_RA" "_ENABLE_DECAL_CLIP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "_CL_RA" "_ENABLE_DECAL_CLIP" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "ISPARTICLE_ON" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ANNULAR_UV_ON" "ISPARTICLE_ON" "_CL_RA" "_ENABLE_DECAL_CLIP" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}