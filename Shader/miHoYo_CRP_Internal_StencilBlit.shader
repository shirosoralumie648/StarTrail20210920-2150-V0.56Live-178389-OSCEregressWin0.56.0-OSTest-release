//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Internal/StencilBlit" {
Properties {
_MainColor ("MainColor", Color) = (1,1,1,1)
[MHYHeaderBox(IMAGE_GLITCH)] _RemoveColor ("Remove Color", Range(0, 1)) = 0
_GlitchTex ("Glitch Texture(R:Noise G:OffsetCt B:Inside)", 2D) = "white" { }
_OffsetTiling ("OffsetTiling", Vector) = (0,0,0,0)
_OffsetCtSpeed ("OffsetCtSpeed", Vector) = (0,0,0,0)
_InsideColor ("InsideColor", Color) = (0,0,0,0)
_InsideIndensity ("InsideIndensity", Float) = 0
_InsideSpeed ("InsideSpeed", Vector) = (0,0,0,0)
_NoiseTilling ("NoiseTilling", Vector) = (1,1,0,0)
[Toggle(_SCANLINE)] _Scanline ("Enable CRT Scanline", Float) = 0
}
SubShader {
 LOD 100
 Tags { "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
 Pass {
  Name "StencilCopy"
  LOD 100
  Tags { "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  ZTest Always
  ZWrite Off
  Cull Off
  Stencil {
   Comp Equal
   Pass IncrWrap
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 34381
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SCANLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IMAGE_GLITCH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IMAGE_GLITCH" "_SCANLINE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SCANLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IMAGE_GLITCH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IMAGE_GLITCH" "_SCANLINE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "AlphaBlit"
  LOD 100
  Tags { "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 105387
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SCANLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IMAGE_GLITCH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IMAGE_GLITCH" "_SCANLINE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SCANLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IMAGE_GLITCH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_IMAGE_GLITCH" "_SCANLINE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "SimpleBlit"
  LOD 100
  Tags { "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 148473
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
 UsePass "Hidden/miHoYo/Character/Shared/STENCILONLYPASS"
 UsePass "Hidden/miHoYo/Character/Shared/STENCILONLYOUTLINE"
}
CustomEditor "RPG.Editor.CharacterAvatarShaderGUI"
}