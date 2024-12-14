x += hsp;
y += vsp;

image_xscale += 0.05;
image_yscale += 0.05;
image_alpha -= 0.02;
if(image_alpha <= 0)
	instance_destroy();