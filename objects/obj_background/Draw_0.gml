/// @description
if (shader_enabled)
{
	shader_set(shdr_simplebackground) 
	shader_set_uniform_f(Res,1280,720,0); 
	shader_set_uniform_f(Time,current_time/1500); 
	draw_self(); 
	shader_reset(); 
}
else draw_self()