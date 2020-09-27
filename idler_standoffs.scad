difference() {
	union() {
		// cube([20, 20, 3]);
		translate([10, 10, 0]) cylinder(r=7.5, h=3, $fn=90);
		translate([10, 10, 0]) cylinder(r=3.5, h=5.75, $fn=60);
	}
	translate([10, 10, -0.1]) cylinder(r=2.5+0.2, h=10, $fn=60);
}

difference() {
	translate([30, 10, 0]) cylinder(r=3.5, h=1, $fn=60);
	translate([30, 10, -0.1]) cylinder(r=2.5+0.2, h=2, $fn=60);
}
