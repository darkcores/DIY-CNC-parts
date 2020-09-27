// Support for 16mm rod

// translate([-30, 0, 0]) closed();
// translate([-60, 0, 0]) closed_alt();
translate([-60, 0, 0]) closed_alt2();
// support();

module closed() {
	difference() {
		union() {
			cube([20, 20, 15]);
			translate([0, 10, 15]) rotate([0, 90, 0]) cylinder(r=10, h=20, $fn=360);
		}
		translate([-0.1, 10, 15]) rotate([0, 90, 0]) cylinder(r=8.125, h=20.2, $fn=360);
	}
	translate([10, 10, -1]) cube([20, 6.2, 2], center=true);
	difference() {
		translate([10, 10, -3.5]) cube([20, 10, 4], center=true);
		translate([-0.1, 5, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
		translate([-0.1, 15, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
	}
}

module closed_alt() {
	difference() {
		union() {
			cube([20, 20, 35]);
			// translate([10, 0, 30]) rotate([-90, 0, 0]) cylinder(r=10, h=20, $fn=60);
		}
		translate([-0.1, 10, 15]) rotate([0, 90, 0]) cylinder(r=8.125, h=20.2, $fn=360);
		translate([10, -0.1, 30]) rotate([-90, 0, 0]) cylinder(r=1.5+0.2, h=20.2, $fn=60);
		translate([10, -0.1, 30]) rotate([-90, 0, 0]) cylinder(r=3+0.4, h=5.1, $fn=60);
		// remove excess
		translate([11, -0.1, 37]) rotate([0, 45, 0]) cube([20, 20.2, 20]);
		translate([9, -0.1, 37]) rotate([0, -135, 0]) cube([20, 20.2, 20]);
	}
	translate([10, 10, -1]) cube([20, 6.2, 2], center=true);
	difference() {
		translate([10, 10, -3.5]) cube([20, 10, 4], center=true);
		translate([-0.1, 5, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
		translate([-0.1, 15, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
	}
}

module closed_alt2() {
	difference() {
		union() {
			cube([20, 20, 35]);
			// translate([10, 0, 30]) rotate([-90, 0, 0]) cylinder(r=10, h=20, $fn=60);
		}
		translate([-0.1, 10, 15]) rotate([0, 90, 0]) cylinder(r=8.125, h=20.2, $fn=360);
		translate([-0.1, 10, 30]) rotate([0, 90, 0]) cylinder(r=1.5+0.2, h=20.2, $fn=60);
		translate([-0.1, 10, 30]) rotate([0, 90, 0]) cylinder(r=3+0.4, h=5.1, $fn=60);
		// remove excess
		translate([-0.1, 11, 37]) rotate([-45, 0, 0]) cube([20.2, 20.2, 20]);
		translate([-0.1, 9, 37]) rotate([135, 0, 0]) cube([20.2, 20.2, 20]);
	}
	translate([10, 10, -1]) cube([20, 6.2, 2], center=true);
	difference() {
		translate([10, 10, -3.5]) cube([20, 10, 4], center=true);
		translate([-0.1, 5, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
		translate([-0.1, 15, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
	}
}

module support() {
	difference() {
		translate([0, 5, 0]) cube([15, 10, 20]);
		translate([-0.1, 10, 15]) rotate([0, 90, 0]) cylinder(r=8.125, h=20.2, $fn=360);
	}
	translate([7.5, 10, -1]) cube([15, 6.2, 2], center=true);
	difference() {
		translate([7.5, 10, -3.5]) cube([15, 12, 4], center=true);
		translate([-0.1, 4, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
		translate([-0.1, 16, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
	}
}
