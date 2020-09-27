// Bracket for foot

difference() {
	cube([40, 15, 20]);
	translate([20, 7.5, -0.1]) cylinder(r=3+0.1, h=40.2, $fn=33);
	for(i = [10, 30]) {
		for(j = [10, 30]) {
			translate([i, -0.1, j]) rotate([-90, 0, 0]) cylinder(r=2.5+0.4, h=20.2, $fn=33);
		}
	}
}
