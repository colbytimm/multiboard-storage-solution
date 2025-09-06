use <modules/CornerModule.scad>;

/* [Variables] */
corner_size = 7; // Corner component is 40mm in length

union() {
  CornerConnectorComponent(count=corner_size);
}
