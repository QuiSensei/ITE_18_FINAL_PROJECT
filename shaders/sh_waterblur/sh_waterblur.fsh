//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const float wave_offset = 0.02;
const float FREQ = 2.0;
const float TEX_FREQ = 8.0;
const float PI = 3.14159265;

uniform float time;
uniform vec2 tex;

float random(float val){
	return fract(sin(val * 12.9898) * 43758.5453);
}

void main()
{
	//wave offset
	vec2 pos = v_vTexcoord*(1.0-wave_offset*2.0) + vec2(wave_offset);
	pos += wave_offset * vec2(cos(pos.x * TEX_FREQ + time * FREQ), sin(pos.y * TEX_FREQ + time * FREQ));
	
	//grab color from texture page
    vec4 col = texture2D(gm_BaseTexture, pos);
	gl_FragColor = col;
}