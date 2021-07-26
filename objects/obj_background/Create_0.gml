/// @description
shader_enabled = true;
if (shader_is_compiled(shdr_simplebackground))
{
	Res = shader_get_uniform(shdr_simplebackground,"iResolution"); 
	Time = shader_get_uniform(shdr_simplebackground,"iGlobalTime"); 
}
else shader_enabled = false
