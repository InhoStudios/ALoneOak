/// @description treeDropItem();
var xx = x+24
if(irandom(5)<=4){
    for(i = choose(1,1,1,2,2,3,3); i > 0; i--){
        instance_create(xx,y-16,obj_acorn);
        xx = irandom_range(x-64,x+48);
    }
    for(i = choose(1,2,2,2,2,3,3,3); i > 0; i--){
        instance_create(xx,y-16,obj_twig);
        xx = irandom_range(x-64,x+48);
    }
}
