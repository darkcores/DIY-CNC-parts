difference() {
	union() {
		cube([60, 40, 61]);
		translate([30, 35, 0]) cylinder(r=35, h=61, $fn=120);
		translate([20, 65, 0]) cube([20, 20, 61]);
	}
	translate([30, 35, -0.1]) cylinder(r=25.75, h=61.2, $fn=120);
	translate([28, 55, -0.1]) cube([4, 40, 61.2]);
	// Screws
	for(i=[10.5, 49.5]) {
		for(j=[6, 24, 61-24, 61-6]) {
			translate([i, -0.1, j]) rotate([-90, 0, 0]) cylinder(r=2.1, h=20, $fn=20);
			translate([i, 8, j]) rotate([-90, 0, 0]) cylinder(r=3.75, h=100, $fn=33);
		}
	}
	// Close
	translate([19.9, 76, 15]) rotate([0, 90, 0]) cylinder(r=2.2, h=50, $fn=20);
	translate([19.9, 76, 45]) rotate([0, 90, 0]) cylinder(r=2.2, h=50, $fn=20);
}
