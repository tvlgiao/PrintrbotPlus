module z_idler() {
	difference() {
		translate([-10,-10, 0]) cube([20,20,30]);
		cylinder(r=6, h=30);
		translate([-10-.1, 0, 20]) rotate([0, 90, 0]) cylinder(r=4, h=20+.2);
	}
}

z_idler();