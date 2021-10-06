//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/Aura Outline" {
Properties {
[KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 0
_AuraScrPosScale ("Aura ScrPos Scale", Range(0, 1)) = 1
_AuraNoise ("Outline Aura Noise Texture", 2D) = "white" { }
_AuraWidth ("Outline Aura Width", Range(0, 5)) = 0.5
_AuraOffset ("Outline Aura Offset", Range(0, 0.5)) = 0
_AuraColor0 ("Outline Aura Color 1 ", Color) = (0,0,0,0)
_AuraColor1 ("Outline Aura Color 2 A", Color) = (1,1,1,1)
_AuraDisStep ("DisStep     Y=OutEdge   Z=intensity W=Noise", Vector) = (0.2,0.05,1,0.2)
_AuraSmoothStep ("SmoothXY ", Vector) = (0,0,0,0)
_AuraSpeed ("AuraSpeed          NoiseSpeed", Vector) = (0,0.3,0,0.1)
_Aurafresnel ("FresnelRGB=XY    FresnelA=ZW", Vector) = (0,1,0,1)
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Name "AuraOutline"
  Tags { "LIGHTMODE" = "CustomRPBase" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZWrite Off
  Cull Front
  GpuProgramID 42517
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
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
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}