slider();
mirror([0, 0, 1]) slider();


module slider() {
	translate([10, 10, -1]) cube([20, 6.2, 2], center=true);
	difference() {
		translate([10, 10, -3.5]) cube([20, 10, 4], center=true);
		translate([-0.1, 5, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
		translate([-0.1, 15, -2.5]) rotate([-135, 0, 0]) cube([20.2, 10, 10]);
	}
}
