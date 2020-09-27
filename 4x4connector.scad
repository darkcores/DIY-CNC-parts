difference() {
	cube([40, 40, 5]);
	for(i=[10,30]) {
		for(j=[10, 30]) {
			translate([i, j, -0.1]) cylinder(r=1.5+0.1, h=5.2, $fn=60);
			// translate([i, j, 3]) cylinder(r=3, h=5.2, $fn=60);
		}
	}
}
