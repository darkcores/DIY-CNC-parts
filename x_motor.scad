difference() {
	union() {
		cube([42.3, 42.3+8, 40+8]);
		translate([0, 11.15, -16]) cube([42.3, 28, 20]);
	}
	translate([-0.1, 4, 4]) cube([42.5, 42.3, 40]);
	translate([4, -0.1, 4]) difference() {
		cube([42.3-8, 53, 40]);
		translate([21.15-4, 2, 20]) rotate([0, 45, 0]) cube([55, 4, 6], center=true);
		translate([21.15-4, 2, 20]) rotate([0, -45, 0]) cube([55, 4, 6], center=true);
		translate([21.15-4, 42.3+6, 20]) rotate([0, 45, 0]) cube([55, 4, 6], center=true);
		translate([21.15-4, 42.3+6, 20]) rotate([0, -45, 0]) cube([55, 4, 6], center=true);
	}
	translate([21.15, 25.15, 40]) {
		cylinder(r=12.5, h=10, $fn=40);
		d = 15.5;
		for(i=[-d, d]) {
			for(j=[-d, d]) {
				translate([i, j, 0]) cylinder(r=1.7, h=10, $fn=25);
			}
		}
		translate([20, 0, 5]) cube([20, 12, 10], center=true);
	}
	translate([-0.1, 4+21.15-10, -16.1]) cube([50, 20, 20.2]);
	for(i=[10, 30]) {
		translate([i, 0, -6]) rotate([-90, 0, 0]) cylinder(r=1.7, h=50, $fn=20);
	}
}
