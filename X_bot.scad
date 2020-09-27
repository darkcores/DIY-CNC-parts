module shape() {
	// carriadge shape; 2mm spacing
	square([97, 45]);
	// M8 holes
	translate([45/2, 45+5]) circle(r=10);
	translate([97 - (45/2), 45+5]) circle(r=10);
	// Guide holes
	translate([34/2, -7-4]) circle(r=8);
	translate([97-(34/2), -7-4]) circle(r=8);
	// lead / motor plate
	// translate([97/2-(42.3/2), -42.3 + 10.15]) square([42.3, 42.3]);
	translate([97/2, -11]) circle(r=15, $fn=50);
	// Extra plate support
	translate([0, -15]) square([97, 15]);
	
}

module cut_shape() {
	// Carriadge screw holes
	for(i=[7.5, 37.5, 97-37.5, 97-7.5]) {
		for(j=[6.5, 38.5]) {
			translate([i, j]) circle(r=2.5+0.2, $fn=30);
		}
	}
	// M8 holes
	translate([45/2, 45+5]) circle(r=4.2, $fn=30);
	translate([97 - (45/2), 45+5]) circle(r=4.2, $fn=30);
	// Guide holes
	translate([34/2, -7-4]) circle(r=4.05, $fn=30);
	translate([97-(34/2), -7-4]) circle(r=4.05, $fn=30);
	// lead hole
	translate([97/2, -11]) circle(r=11, $fn=50);
	// Tighten cut
	translate([0, -11]) square([20, 1]);
	translate([97-20, -11]) square([20, 1]);
	translate([0, -5]) square([9, 3.33]);
	translate([97-9, -5]) square([9, 3.33]);
}

module plate() {
	difference() {
		linear_extrude(height=8) difference() {
			offset(-10) offset(10) shape();
			cut_shape();
		}
		// Tighten screw/nut holes
		// breaks preview, uncomment when needed
		translate([5, -16, 4]) rotate([-90, 0, 0]) cylinder(r=2.2, h=12, $fn=30);
		// translate([-0.1, -3, 1]) cube([8.1, 3, 6]);
		translate([97-5, -16, 4]) rotate([-90, 0, 0]) cylinder(r=2.2, h=12, $fn=30);
		// translate([97-8, -3, 1]) cube([8.1, 3, 6]);
	}
	difference() {
		translate([97/2, -11, 0]) cylinder(r=11, h=1, $fn=50);
		translate([97/2, -11, -1]) cylinder(r=5, h=22, $fn=50);
	}
}

plate();

