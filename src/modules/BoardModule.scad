TILE = 25;

module TileBorderConnectionComponent(loc=[0,0], angle=0){
  translate([TILE*loc.x, TILE*loc.y, 0]) rotate([0,0,angle])
    import("../models/Tile Border Connection Component.stl");
}
module PinConnectorComponent(loc=[0,0]){
  translate([TILE*loc.x, TILE*loc.y, 0])
    import("../models/Tile Join Hole Component.stl");
}
module TileComponent(loc=[0,0]){
  translate([TILE*loc.x, TILE*loc.y, 0])
    import("../models/Tile Multihole Component.stl");
}

module MultiboardComponent(size=[2,3], start=[1,1], place_holes=true){
  assert(size.x>=1 && size.y>=1);
  sx = start.x; sy = start.y;
  ex = sx + size.x - 1; ey = sy + size.y - 1;

  for (x=[sx:ex]) for (y=[sy:ey]) TileComponent([x,y]);

  if (place_holes && ex>sx && ey>sy)
    for (x=[sx:ex-1]) for (y=[sy:ey-1]) PinConnectorComponent([x,y]);

  W = ex - sx;

  if (ex>sx){
    for (x=[sx:ex-1]) TileBorderConnectionComponent([x, sy], 0);
    for (x=[sx:ex-1]) TileBorderConnectionComponent([x+1, ey], 180);
  }
  if (ey>sy){
    lx = sx + ((W==1) ? 1 : ex - 1);
    rx = ex - ((W==1) ? 1 : ex - 1);
    for (y=[sy:ey-1]) TileBorderConnectionComponent([lx, y], 90);
    for (y=[sy:ey-1]) TileBorderConnectionComponent([rx, y+1], 270);
  }
}

// demo
color("red") MultiboardComponent(size=[5,5]);
