
module voorplaat(holeleft, holeright, holebottom, holetop, holeradius)
{
	difference() {
		union() {
			cube([75.96, 68.28, 1], center = true);
		}
		union() {
			//links boven baut gat
			translate([holetop,holeleft,0])
			{
				cylinder(h = 200, r=holeradius, center = true);
			}
			//rechts boven baut gat
			translate([holetop,holeright,0])
			{
				cylinder(h = 200, r=holeradius, center = true);
			}
			//rechts onder baut gat
			translate([holebottom,holeright,0])
			{
				cylinder(h = 200, r=holeradius, center = true);
			}
			//links onder baut gat
			translate([holebottom,holeleft,0])
			{
				cylinder(h = 200, r=holeradius, center = true);
			}
			// knopje gat
			translate([29,-24.2,0])
			{
				cube([13.5, 15, 10], center = true);
			}
			//socket gat
			translate([-20.37,-24.2,0])
			{
				cube([33, 15, 10], center = true);
			}
			//scherm gat
			translate([0,12.9,0])
			{
				cube([57, 38, 10], center = true);
			}
		}
	}
}

module achterplaat(holeleft, holeright, holebottom, holetop, holeradius)
{

difference() {
		union() {
			cube([75.96, 68.28, 1], center = true);
		}
		union() {
			//links boven baut gat
			translate([holetop,holeleft,0])
			{
				cylinder(h = 200, r=holeradius, center = true);
			}
			//rechts boven baut gat
			translate([holetop,holeright,0])
			{
				cylinder(h = 200, r=holeradius, center = true);
			}
			//rechts onder baut gat
			translate([holebottom,holeright,0])
			{
				cylinder(h = 200, r=holeradius, center = true);
			}
			//links onder baut gat
			translate([holebottom,holeleft,0])
			{
				cylinder(h = 200, r=holeradius, center = true);
			}
		}
	}

}

	holeleft = 25;
	holeright = -10;
	holebottom = 32.5;
	holetop = -32.5;
	holeradius = 1.8;

voorplaat(holeleft,holeright, holebottom, holetop, holeradius);

