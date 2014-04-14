// lm8uu: 8x15x24

module y_block(w=50, h=29.5, d=29.5, screw_d1=40/*39.8*/, screw_d2=19.5/*19.3*/, lm8uu_od=15, m4=4) {

	sx = (w-screw_d1)/2;
	sy = (h-screw_d2)/2;

	difference() {
		cube([w, h, d]);

		// lm8uu hole
		translate([-.1, d/2, h/2]) rotate([0, 90, 0]) cylinder(h=w+.2, r=lm8uu_od/2);

		// screw holes
		echo("screw x, y =",sx,sy);
		translate([sx, sy, d/2]) cylinder(h=d/2, r=m4/2);
		translate([w-sx, sy, d/2]) cylinder(h=d/2, r=m4/2);
		translate([sx, h-sy, d/2]) cylinder(h=d/2, r=m4/2);
		translate([w-sx, h-sy, d/2]) cylinder(h=d/2, r=m4/2);

		// bottom screw holes
		echo("bottom screw hole x =",12);
		translate([12, h/2, 0]) cylinder(h=d/2, r=m4/2);
		translate([w-12, h/2, 0]) cylinder(h=d/2, r=m4/2);

		
	}
}

y_block();