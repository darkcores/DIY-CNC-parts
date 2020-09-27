module plateholder() {
	translate([97/2 - 25, -6, -36]) difference() {
		cube([50, 6, 36+61]);
		for(i=[10, 40]) {
			for(j=[5, 29]) {
				translate([i, -0.1, j]) rotate([-90, 0, 0]) cylinder(r=1.6, h=10, $fn=30);
			}
		}
	}
}

module leadscrew() {
	translate([0, 11, 0]) difference() {
		union() {
			cylinder(r=11, h=20, $fn=30);
			translate([-11, -11, 0]) cube([22, 21, 20]);
		}
		translate([0, 0, -0.1]) cylinder(r=5.1, h=21, $fn=30);
		// screws lead thingy
		d=(8*sqrt(2))/2;
		for(i=[-d, d]) {
			for(j=[-d,d]) {
				translate([i, j, -0.1]) cylinder(r=1.5+0.1, h=21.2, $fn=30);
			}
		}
	}
}

difference() {
	union() {
		cube([97, 7, 61]);
		// plateholder();
	}
	for(i=[5, 29, 97-29, 97-5]) {
		for(j=[6, 24, 61-24, 61-6]) {
			translate([i, -10, j]) rotate([-90, 0, 0]) cylinder(r=2.2, h=21, $fn=30);
		}
	}
	for(i=[5, 29, 97-29, 97-5]) {
		for(j=[6, 24, 61-24, 61-6]) {
			translate([i, 3, j]) rotate([90, 0, 0]) cylinder(r=4.2, h=21, $fn=50);
		}
	}
	m = 97/2;
	for(i=[m-35, m+35]) {
		for(j=[10, 30]) {
			translate([i, -10, j]) rotate([-90, 0, 0]) cylinder(r=2.8, h=21, $fn=30);
		}
	}
}
translate([97/2, 7, 30]) leadscrew();
