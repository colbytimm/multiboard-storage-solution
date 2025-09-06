module TileCornerComponent(offset=[0,0,0], rot=[0,0,0]) {
  translate(offset) rotate(rot) import("Tile Corner Component.stl");
}

module CornerConnectorComponent(count=2, step=25, dir=[1,0,0], rot=[0,0,0]) {
  s = step;
  v = [dir[0]*s, dir[1]*s, dir[2]*s];
  cshift = [0,0,0];

  for (i=[0:count-1]) {
    TileCornerComponent(offset=[cshift[0] + i*v[0],
                          cshift[1] + i*v[1],
                          cshift[2] + i*v[2]],
                          rot=rot);
  }
}

// demo
color("red") CornerConnectorComponent(count=3);
