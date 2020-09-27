rifference() {
	cube([60, 60, 2]);
	translate([30, 30, -0.1]) {
		difference() {
			union () {
				difference() {
					cylinder(r=28, h=3.2, $fn=90);
					cylinder(r=20.75, h=3.2, $fn=90);
				}
				difference() {
					cylinder(r=18.25, h=3.2, $fn=90);
					cylinder(r=11, h=3.2, $fn=90);
				}
			}
			rotate([0, 0, 45]) cube([60, 3, 6.4], center=true);
			rotate([0, 0, -45]) cube([60, 3, 6.4], center=true);
		}
	}
	for(i=[5, 55]) {
		for(j=[5, 55]) {
			translate([i, j, -0.1]) cylinder(r=2.2, h=3.2, $fn=20);
		}
	}
}
