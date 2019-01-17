/// @description create_particle(particle, min amount, max amount);
/// @param particle
/// @param  min amount
/// @param  max amount
var part = argument0;
var minAmnt = argument1;
var maxAmnt = argument2;

for(i = 0; i < irandom_range(minAmnt,maxAmnt); i++){
    instance_create(x,y,part);
    with(part){
        hsp = random_range(-1.8,1.8);
        vsp = random_range(-4,2);
    }
}


