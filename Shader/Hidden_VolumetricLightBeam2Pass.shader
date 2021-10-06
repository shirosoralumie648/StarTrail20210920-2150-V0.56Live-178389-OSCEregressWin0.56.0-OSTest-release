//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/VolumetricLightBeam2Pass" {
Properties {
_ConeSlopeCosSin ("Cone Slope Cos Sin", Vector) = (0,0,0,0)
_ConeRadius ("Cone Radius", Vector) = (0,0,0,0)
_ConeApexOffsetZ ("Cone Apex Offset Z", Float) = 0
_ColorFlat ("Color", Color) = (1,1,1,1)
_AlphaInside ("Alpha Inside", Range(0, 1)) = 1
_AlphaOutside ("Alpha Outside", Range(0, 1)) = 1
_DistanceFadeStart ("Distance Fade Start", Float) = 0
_DistanceFadeEnd ("Distance Fade End", Float) = 1
_DistanceCamClipping ("Camera Clipping Distance", Float) = 0.5
_AttenuationLerpLinearQuad ("Lerp between attenuation linear and quad", Float) = 0.5
_DepthBlendDistance ("Depth Blend Distance", Float) = 2
_FresnelPow ("Fresnel Pow", Range(0, 15)) = 1
_GlareFrontal ("Glare Frontal", Range(0, 1)) = 0.5
_GlareBehind ("Glare from Behind", Range(0, 1)) = 0.5
_DrawCap ("Draw Cap", Float) = 1
_NoiseLocal ("Noise Local", Vector) = (0,0,0,0)
_NoiseParam ("Noise Param", Vector) = (0,0,0,0)
_CameraParams ("Camera Params", Vector) = (0,0,0,0)
_CameraPosObjectSpace ("Camera Position Object Space", Vector) = (0,0,0,0)
_ClippingPlaneWS ("Clipping Plane WS", Vector) = (0,0,0,0)
_BlendSrcFactor ("BlendSrcFactor", Float) = 1
_BlendDstFactor ("BlendDstFactor", Float) = 1
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Front
  GpuProgramID 62436
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent2" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  GpuProgramID 120615
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_HIGH" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VLB_ALPHA_AS_BLACK" "VLB_CLIPPING_PLANE" "VLB_COLOR_GRADIENT_MATRIX_LOW" "VLB_DEPTH_BLEND" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}