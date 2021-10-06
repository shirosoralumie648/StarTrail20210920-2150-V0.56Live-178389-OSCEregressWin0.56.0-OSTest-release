//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/HDA_VAT/Lightning_VAT" {
Properties {
_VATTexture ("Vertex Animation Texture", 2D) = "white" { }
_AnimationTime ("Animation Time", Range(0, 1)) = 0
_VertexNum ("Vertex Number", Float) = 1
_SampleNum ("Sample Number", Float) = 1
_TexResolution ("Texture Resolution", Float) = 256
_RemapScale ("Remap Scale", Float) = 1
_RemapOffset ("Remap Offset", Float) = 0
[KeywordEnum(Per, All)] _RemapMode ("Vertex Remap Mode", Float) = 0
_MainColor ("Main Color", Color) = (1,1,1,1)
_BloomColor ("Bloom Color", Color) = (1,1,1,1)
_BloomIntensity ("Bloom Intensity", Float) = 0
[Toggle(_DISSOLVE)] _Dissolve ("Dissolve", Float) = 0
_DissolveTex ("Dissolve Texture", 2D) = "white" { }
_DissolveValue ("Dissolve Value", Range(0, 1)) = 0
}
SubShader {
 Pass {
  Tags { "LIGHTMODE" = "CustomForwardOpaque" }
  GpuProgramID 17949
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_REMAPMODE_PER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_REMAPMODE_PER" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_REMAPMODE_PER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISSOLVE" "_REMAPMODE_PER" }
"// shader disassembly not supported on DXBC"
}
}
}
}
CustomEditor "RPG.Editor.HDAVatLightningShaderGUI"
}