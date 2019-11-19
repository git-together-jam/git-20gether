varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;
uniform vec4 outlineColor;
void main()
{
    vec2 offsetx = vec2(pixelW, 0);
    vec2 offsety = vec2(0, pixelH);
 
    float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	float originalAlpha = alpha;
    alpha = max(alpha, texture2D(gm_BaseTexture, v_vTexcoord + offsetx).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, v_vTexcoord - offsetx).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, v_vTexcoord + offsety).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, v_vTexcoord - offsety).a);
	if(originalAlpha != 1.0) {
		gl_FragColor = outlineColor;
	} else {
		gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	}
    gl_FragColor.a = alpha;
}