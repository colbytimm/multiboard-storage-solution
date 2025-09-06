use <modules/BoardModule.scad>;

/* [Variables] */
size_x = 8;
size_y = 8;

union() {
  MultiboardComponent(size=[size_x,size_y]);
}
