
module voorplaat(holeleft, holeright, holebottom, holetop, holeradius)
{
	difference() {
		union() {
			square([75.96, 68.28], center = true);
		}
		union() {
			//links boven baut gat
			translate([holetop,holeleft])
			{
				circle(h = 200, r=holeradius, center = true);
			}
			//rechts boven baut gat
			translate([holetop,holeright])
			{
				circle(h = 200, r=holeradius, center = true);
			}
			//rechts onder baut gat
			translate([holebottom,holeright])
			{
				circle(h = 200, r=holeradius, center = true);
			}
			//links onder baut gat
			translate([holebottom,holeleft])
			{
				circle(h = 200, r=holeradius, center = true);
			}
			// knopje gat
			translate([29,-24.2])
			{
				square([13.5, 15], center = true);
			}
			//socket gat
			translate([-20.37,-24.2])
			{
				square([33, 15], center = true);
			}
			//scherm gat
			translate([0,12.9])
			{
				square([57, 38], center = true);
			}
		}
	}
}

module achterplaat(holeleft, holeright, holebottom, holetop, holeradius)
{

difference() {
		union() {
			square([75.96, 68.28], center = true);
		}
		union() {
			//links boven baut gat
			translate([holetop,holeleft])
			{
				circle(h = 200, r=holeradius, center = true);
			}
			//rechts boven baut gat
			translate([holetop,holeright])
			{
				circle(h = 200, r=holeradius, center = true);
			}
			//rechts onder baut gat
			translate([holebottom,holeright])
			{
				circle(h = 200, r=holeradius, center = true);
			}
			//links onder baut gat
			translate([holebottom,holeleft])
			{
				circle(h = 200, r=holeradius, center = true);
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

