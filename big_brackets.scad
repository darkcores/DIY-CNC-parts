// rotate([0, 90+atan(0.5), 0]) b4080();
// rotate([0, 90+45, 0]) translate([0, 40, 0]) b8080();
rotate([0, 90+45, 0]) translate([0, 80, 0]) b2020();

module b4080() {
	difference() {
		cube([40, 20, 80]);
		translate([1.25, -0.1, 80]) rotate([0, atan(2), 0]) cube([160, 20.2, 60]);
		translate([4, 4, 4]) cube([40, 12, 80]);
		// Screws
		// horizontal
		translate([10, 10, -0.1]) cylinder(r=1.6, h=10, $fn=50);
		translate([30, 10, -0.1]) cylinder(r=1.6, h=10, $fn=50);
		// vertical
		translate([-0.1, 10, 10]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
		translate([-0.1, 10, 30]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
		translate([-0.1, 10, 50]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
		translate([-0.1, 10, 70]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
	}
	translate([0, 7, -3]) difference() {
		cube([40, 6, 3]);
		translate([10, 2.5, 0]) cube([12, 10, 10], center=true);
		translate([30, 2.5, 0]) cube([12, 10, 10], center=true);
	}
}

module b2020() {
	difference() {
		cube([20, 20, 20]);
		translate([2, -0.1, 20]) rotate([0, 45, 0]) cube([160, 20.2, 60]);
		translate([4, 4, 4]) cube([80, 12, 80]);
		// Screws
		// horizontal
		translate([10, 10, -0.1]) cylinder(r=1.6, h=10, $fn=50);
		// vertical
		translate([-0.1, 10, 10]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
	}
	translate([0, 7, -3]) difference() {
		cube([20, 6, 3]);
		translate([10, 2.5, 0]) cube([12, 10, 10], center=true);
	}
}

module b8080() {
	difference() {
		cube([80, 20, 80]);
		translate([2, -0.1, 80]) rotate([0, 45, 0]) cube([160, 20.2, 60]);
		translate([4, 4, 4]) cube([80, 12, 80]);
		// Screws
		// horizontal
		translate([10, 10, -0.1]) cylinder(r=1.6, h=10, $fn=50);
		translate([30, 10, -0.1]) cylinder(r=1.6, h=10, $fn=50);
		translate([50, 10, -0.1]) cylinder(r=1.6, h=10, $fn=50);
		translate([70, 10, -0.1]) cylinder(r=1.6, h=10, $fn=50);
		// vertical
		translate([-0.1, 10, 10]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
		translate([-0.1, 10, 30]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
		translate([-0.1, 10, 50]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
		translate([-0.1, 10, 70]) rotate([0, 90, 0]) cylinder(r=1.6, h=10, $fn=50);
	}
	translate([0, 7, -3]) difference() {
		cube([80, 6, 3]);
		translate([10, 2.5, 0]) cube([12, 10, 10], center=true);
		translate([30, 2.5, 0]) cube([12, 10, 10], center=true);
		translate([50, 2.5, 0]) cube([12, 10, 10], center=true);
		translate([70, 2.5, 0]) cube([12, 10, 10], center=true);
	}
}



