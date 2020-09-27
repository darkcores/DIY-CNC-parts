module shape() {
	cube([50, 25, 40]);
	translate([25, 25, 0]) cylinder(r=25, h=40, $fn=60);
	translate([17.5, 45, 0]) cube([15, 15, 40]);
}

difference() {
	shape();
	translate([25, 25, -0.1]) cylinder(r=35.5/2, h=40.2, $fn=60);
	translate([23.5, 25, -0.1]) cube([3, 50, 40.2]);
	translate([17, 55, 10]) rotate([0, 90, 0]) cylinder(r=2.2, h=25, $fn=30);
	translate([17, 55, 30]) rotate([0, 90, 0]) cylinder(r=2.2, h=25, $fn=30);
	for(i=[10, 40]) {
		for(j=[5, 29]) {
			translate([i, -0.1, j]) rotate([-90, 0, 0]) cylinder(r=1.6, h=8.2, $fn=30);
			translate([i, 8, j]) rotate([-90, 0, 0]) cylinder(r=3, h=44, $fn=30);
		}
	}
}
