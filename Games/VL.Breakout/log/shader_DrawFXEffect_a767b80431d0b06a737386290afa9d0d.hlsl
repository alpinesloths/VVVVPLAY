/**************************
***** Compiler Parameters *****
***************************
@P EffectName: DrawFXEffect
@P   - EffectNodeBase.EffectNodeBaseShader: mixin WColor_DrawFX
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    WColor_DrawFX => 50a2c975f958a333599213883b123ff0
@S    VS_PS_Base => f089dc4ce5d5868b962b08793ef74fd9
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    ColorBase => b8b78679285939723aa5d9647437398b
@S    ShaderUtils => 27e27e08e991883f970444d1aebe3b58
***************************
*****     Stages      *****
***************************
@G    Vertex => 3be207ff410a0185e27a33ac88b623ba
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// COLOR                    0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[24], immediateIndexed
dcl_input v0.xyzw
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id14.x; v0.y <- __input__.Position_id14.y; v0.z <- __input__.Position_id14.z; v0.w <- __input__.Position_id14.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.Color_id37.x; o0.y <- <VSMain return value>.Color_id37.y; o0.z <- <VSMain return value>.Color_id37.z; o0.w <- <VSMain return value>.Color_id37.w
//
#line 55 "C:\Users\ravaz\Documents\Trabajo\Alpine Sloths\VVVV PLAY\Games\VL.Breakout\log\shader_DrawFXEffect_a767b80431d0b06a737386290afa9d0d.hlsl"
and r0.x, v0.w, l(255)
utof r0.x, r0.x
ubfe r1.xy, l(8, 8, 0, 0), l(8, 16, 0, 0), v0.wwww
utof r0.yz, r1.xxyx
ushr r1.x, v0.w, l(24)
utof r0.w, r1.x
mul o0.xyzw, r0.xyzw, l(0.003922, 0.003922, 0.003922, 0.003922)

#line 74
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)
dp4 o1.x, r0.xyzw, cb0[20].xyzw
dp4 o1.y, r0.xyzw, cb0[21].xyzw
dp4 o1.z, r0.xyzw, cb0[22].xyzw
dp4 o1.w, r0.xyzw, cb0[23].xyzw

#line 78
ret 
// Approximately 14 instruction slots used
@G    Pixel => cbc5af7d607fa1df1a0de0dd50ee589e
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// COLOR                    0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_input_ps linear v0.xyzw
dcl_output o0.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.Color_id37.x; v0.y <- __input__.Color_id37.y; v0.z <- __input__.Color_id37.z; v0.w <- __input__.Color_id37.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 65 "C:\Users\ravaz\Documents\Trabajo\Alpine Sloths\VVVV PLAY\Games\VL.Breakout\log\shader_DrawFXEffect_a767b80431d0b06a737386290afa9d0d.hlsl"
mov o0.xyzw, v0.xyzw
ret 
// Approximately 2 instruction slots used
***************************
*************************/
struct PS_STREAMS 
{
    float4 Color_id37;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 Color_id37 : COLOR;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_STREAMS 
{
    float4 Position_id14;
    float4 Color_id37;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 Color_id37 : COLOR;
    float4 ShadingPosition_id0 : SV_Position;
};
struct VS_INPUT 
{
    float4 Position_id14 : POSITION;
};
cbuffer PerDraw 
{
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
};
float4 BitsToColor_id6(float f)
{
    uint u = asuint(f);
    float4 c;
    c = float4((u >> 0) % 256, (u >> 8) % 256, (u >> 16) % 256, (u >> 24) % 256) / 255.0;
    return c;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.Color_id37 = __input__.Color_id37;
    streams.ColorTarget_id2 = streams.Color_id37;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id14 = __input__.Position_id14;
    float4 pos = streams.Position_id14;
    streams.Color_id37 = BitsToColor_id6(pos.w);
    pos.w = 1;
    streams.ShadingPosition_id0 = mul(pos, WorldViewProjection_id34);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.Color_id37 = streams.Color_id37;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    return __output__;
}
