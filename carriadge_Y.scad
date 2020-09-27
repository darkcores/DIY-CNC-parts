// W = L = 45
// 45 - 20 = 25; 25 / 2 = 12.5
// B = 32
// 45 - 32 = 13; 13 / 2 = 6.5
// C = 30
// 45 - 30 = 15; 15 / 2 = 7.5

//bracket();
translate([0, 40, 0]) sled();

module bracket() {
	difference() {
		cube([140, 12.5, 14]);
		// M5 slider
		for(i=[7.5, 7.5+30, 140-7.5-30, 140-7.5]) {
			translate([i, 6.5, -0.1]) cylinder(r=2.5+0.4, h=21, $fn=60);
			translate([i, 6.5, 10]) cylinder(r=5+0.4, h=21, $fn=60);
		}
		// M3 connector
		for(i=[17.5, 52.5, 87.5, 122.5]) {
			translate([i, -0.1, 9]) rotate([-90, 0, 0]) cylinder(r=1.5+0.2, h=20, $fn=30);
			translate([i, -0.1, 9]) rotate([-90, 0, 0]) cylinder(r=3+0.4, h=3.6, $fn=30);
		}
		// Sled connectors
		for(i = [60, 80]) {
			translate([i, 6.25, -0.01]) cylinder(r=1.5+0.2, h=20, $fn=30);
			translate([i, 6.25, 10.5]) cylinder(r=3+0.4, h=20, $fn=30);
		}
	}
}

module sled() {
	difference() {
		cube([45, 45, 11]);
		// GT2 attach
		translate([-0.1, 12, 10]) cube([50.2, 21, 8]);
		translate([-0.1, 17.5, 4]) cube([50.2, 10, 12]);
		translate([22.5, 22.5, -0.1]) cylinder(r=2+0.4, h=10, $fn=30);
		translate([22.5, 22.5, -0.1]) cylinder(r=4+0.2, h=3.1, $fn=6);
		// Attach main
		for(i = [15, 35]) {
			for(j = [6.25, 45-6.25]) {
				translate([i-2.5, j, -0.1]) {
					cylinder(r=1.5+0.2, h=20, $fn=30);
					cylinder(r=3+0.2, h=2.5, $fn=6);
				}
			}
		}
	}
}
