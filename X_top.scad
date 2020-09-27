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
	translate([97/2-(42.3/2), -42.3 + 10.15]) square([42.3, 42.3]);
	// Extra plate support
	translate([0, -15]) square([97, 15]);
	
}

module cut_shape() {
	// Carriadge screw holes
	for(i=[7.5, 37.5, 97-37.5, 97-7.5]) {
		translate([i, 38.5]) circle(r=2.5+0.2, $fn=30);
	}
	for(i=[7.5, 97-7.5]) {
		translate([i, 6.5]) circle(r=2.5+0.2, $fn=30);
	}
	// M8 holes
	translate([45/2, 45+5]) circle(r=4.2, $fn=30);
	translate([97 - (45/2), 45+5]) circle(r=4.2, $fn=30);
	// Guide holes
	translate([34/2, -7-4]) circle(r=4.05, $fn=30);
	translate([97-(34/2), -7-4]) circle(r=4.05, $fn=30);
	// lead hole
	translate([97/2, -11]) circle(r=11, $fn=50);
	// motor holes
	translate([97/2-(42.3/2), -42.3 + 10.15]) {
		for(i=[5.65, 42.3-5.65]) {
			for(j=[5.65, 42.3-5.65]) {
				translate([i, j]) circle(r=3.2, $fn=30);
			}
		}
	}
	// Tighten cut
	translate([0, -11]) square([20, 1]);
	translate([97-20, -11]) square([20, 1]);
	translate([0, -5]) square([9, 3.33]);
	translate([97-9, -5]) square([9, 3.33]);
}

module lead_motor() {
	difference() {
		cube([42.3, 42.3, 32]);
		translate([21.15, 21.15, -0.1]) cylinder(r=11.25, h=50, $fn=50);
		for(i=[5.65, 42.3-5.65]) {
			for(j=[5.65, 42.3-5.65]) {
				translate([i, j, -0.1]) cylinder(r=1.75, h=50, $fn=30);
			}
		}
		translate([15, -0.1, -0.1]) cube([42.3-30, 50, 50]);
		translate([-0.1, 15, -0.1]) cube([50, 42.3-30, 50]);
	}
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
}
module belt_attach() {
	difference() {
		cube([40, 5, 10]);
		translate([20, -0.1, 5]) rotate([-90, 0, 0]) cylinder(r=2.2, h=10, $fn=30);
		rotate([0, 0, 45]) cube([10, 10, 11]);
		translate([40, 0, 0]) rotate([0, 0, 45]) cube([10, 10, 11]);
	}
}

plate();
translate([97/2-(42.3/2), -42.3+10.15, 8]) lead_motor();
translate([97/2-20, 10, 8]) belt_attach();

