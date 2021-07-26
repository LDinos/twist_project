//
// Simple passthrough fragment shader
//
uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
void main( void )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;

    // Time varying pixel color
    vec3 col = 0.1 + 0.1*cos(iGlobalTime+uv.xyx+vec3(0,2,4));

    // Output to screen
    gl_FragColor = vec4(col,1.0);
}
