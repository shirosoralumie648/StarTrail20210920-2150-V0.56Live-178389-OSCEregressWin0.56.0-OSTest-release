//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Skybox/Cloud Particle" {
Properties {
[Header(Cloud Maps)] _SkyGradientTex ("Sky Gradient Tex", 2D) = "white" { }
_CloudParticleAtlas ("Cloud Particle Atlas", 2D) = "white" { }
[Header(Cloud FadeInOut)] _FadeIn ("FadeIn duaring lifetime", Float) = 0.4
_FadeOut ("FadeOut duaring lifetime", Float) = 0.6
_EdgeSmoothness ("Edge Smoothness", Float) = 0.1
_EdgeRimWidth ("Edge Rim Width", Float) = 0.1
}
SubShader {
 Tags { "QUEUE" = "Transparent-20" "RenderType" = "Transparent" }
 Pass {
  Name "CloudParticle"
  Tags { "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent-20" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZClip Off
  ZWrite Off
  Cull Off
  GpuProgramID 45592
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}