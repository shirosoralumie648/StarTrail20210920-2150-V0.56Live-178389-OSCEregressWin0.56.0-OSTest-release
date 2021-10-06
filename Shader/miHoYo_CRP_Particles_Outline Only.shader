//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Outline Only" {
Properties {
[MHYHelpURL(OUTLINEONLY)] _OutlineWidth ("Hightlight Width", Float) = 0
_OutlineColor ("Outline Color", Color) = (1,1,1,1)
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
[KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 0
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Tags { "LIGHTMODE" = "RPGOutline" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  Cull Front
  GpuProgramID 41144
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.BaseParticleShaderGUI"
}