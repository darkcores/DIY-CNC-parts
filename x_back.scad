module shape() {
	cube([12, 150, 10]);
	translate([52, 0, 0]) cube([12, 150, 10]);
	translate([26+6, 45, 5]) rotate([0, 0, 45]) cube([10, 70, 10], center=true);
	translate([26+6, 45, 5]) rotate([0, 0, -45]) cube([10, 70, 10], center=true);
	translate([26+6, 105, 5]) rotate([0, 0, 45]) cube([10, 70, 10], center=true);
	translate([26+6, 105, 5]) rotate([0, 0, -45]) cube([10, 70, 10], center=true);
	translate([26+6, 75, 5]) cube([50, 10, 10], center=true);
}

difference() {
	shape();
	translate([6, -0.1, 4]) rotate([-90, 0, 0]) cylinder(h=150.2, r=4.05, $fn=30);
	translate([52+6, -0.1, 4]) rotate([-90, 0, 0]) cylinder(h=150.2, r=4.05, $fn=30);
}
