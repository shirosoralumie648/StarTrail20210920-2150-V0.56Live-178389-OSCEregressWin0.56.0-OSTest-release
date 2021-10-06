//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Scene_FakeAOLight" {
Properties {
_MainTex ("AO Texture", 2D) = "Black" { }
_Color ("Color", Color) = (1,1,1,1)
_AOInt ("AO Intensity", Range(0, 1)) = 0.5
_AmbientColorIntensity ("Amibient Color Intenstity", Range(0, 1)) = 0.5
_EmissionThreshold ("Light Transparency", Range(0, 1)) = 1
_EmissionIntensity ("Light Intensity", Range(0, 10)) = 1
_FacingVertically ("Facing Verticaly", Range(0, 1)) = 1
_BlendScr ("Blend Source", Float) = 2
_BlendMode ("Blend Mode", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Name "FakeAOPass"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest Less
  ZWrite Off
  GpuProgramID 61124
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FAKEAO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FAKELIGHT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FAKEAO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_FAKELIGHT" }
"// shader disassembly not supported on DXBC"
}
}
}
}
CustomEditor "RPG.Editor.SceneFakeAOShaderGUI"
}