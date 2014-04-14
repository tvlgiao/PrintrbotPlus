use <ISOThread_20120823.scad>;

module z_block(w=65, h=19, d=31.5) {

	difference() {
		cube([w, h, d]);

		// z rod hole
		translate([w/2, h/2, d-24]) cylinder(h=24, r=6);

		// z rod screw holes
		translate([w/2, -h/2, 13]) rotate([-90, 0, 0]) cylinder(r=3, h=d);
		translate([w/2, -h/2, 25.5]) rotate([-90, 0, 0]) cylinder(r=3, h=d);


		// top  mounting screw holes
		translate([5, h/2, d-10]) cylinder(r=2, h=10);
		translate([w-5, h/2, d-10]) cylinder(r=2, h=10);

		// side mounting screw holes
		translate([0-.1, h/2, 5]) rotate([0, 90, 0]) cylinder(r=2, h=10);
		translate([0-.1, h/2, 23.5]) rotate([0, 90, 0]) cylinder(r=2, h=10);
		translate([w+.1, h/2, 5]) rotate([0, -90, 0]) cylinder(r=2, h=10);
		translate([w+.1, h/2, 23.5]) rotate([0, -90, 0]) cylinder(r=2, h=10);
		



	}
}



z_block();