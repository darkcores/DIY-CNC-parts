// default();
// mirrored();
zstop();


module default() {
	difference() {
		union() {
			cube([30, 20, 2]);
			translate([6, 16, 2]) cylinder(r=3.6, h=2, $fn=30);
			translate([25, 16, 2]) cylinder(r=3.6, h=2, $fn=30);
		}
		translate([6, 16, -0.1]) cylinder(r=1.7, h=10, $fn=30);
		translate([25, 16, -0.1]) cylinder(r=1.5, h=10, $fn=30);
	}
}

module mirrored() {
	difference() {
		union() {
			cube([30, 20, 2]);
			translate([6, 4, 2]) cylinder(r=3.6, h=6, $fn=30);
			translate([25, 4, 2]) cylinder(r=3.6, h=6, $fn=30);
		}
		translate([6, 4, -0.1]) cylinder(r=1.7, h=10, $fn=30);
		translate([25, 4, -0.1]) cylinder(r=1.5, h=10, $fn=30);
	}
}

module zstop() {
	difference() {
		union() {
			cube([30, 20, 2]);
			translate([6, 4, 2]) cylinder(r=3.6, h=8, $fn=30);
			translate([25, 4, 2]) cylinder(r=3.6, h=8, $fn=30);
		}
		translate([6, 4, -0.1]) cylinder(r=1.7, h=20, $fn=30);
		translate([25, 4, -0.1]) cylinder(r=1.5, h=20, $fn=30);
	}
}
