namespace Multiclock {

    const int COUNT_TOWN = 14;

    public class ClockService {
        public Gee.ArrayList<ClockModel> listClocks;
        public Gtk.StringList listSvgs;
        public Gee.ArrayList<bool> listVisible;

        public ClockService() {
            listClocks = new Gee.ArrayList<ClockModel> ();
            listVisible = new Gee.ArrayList<bool> ();

            string[] svg = {
                "/io/github/r_sergii/multiClock/image/flag_new_zealand.svg",
                "/io/github/r_sergii/multiClock/image/flag_australia.svg",

                "/io/github/r_sergii/multiClock/image/flag_japan.svg",
                "/io/github/r_sergii/multiClock/image/flag_south_korea.svg",
                "/io/github/r_sergii/multiClock/image/flag_china.svg",
                "/io/github/r_sergii/multiClock/image/flag_hong_kong.svg",
                "/io/github/r_sergii/multiClock/image/flag_singapore.svg",

                "/io/github/r_sergii/multiClock/image/flag_germany.svg",
                "/io/github/r_sergii/multiClock/image/flag_switzerland.svg",
                "/io/github/r_sergii/multiClock/image/flag_uk.svg",

                "/io/github/r_sergii/multiClock/image/flag_canada.svg",
                "/io/github/r_sergii/multiClock/image/flag_usa.svg",
                "/io/github/r_sergii/multiClock/image/flag_usa.svg",
                "/io/github/r_sergii/multiClock/image/flag_usa.svg"

            };

            listSvgs = new Gtk.StringList (svg);
        }

        public void readSettings (SettingsModel settings)
        {
            listVisible[0] = settings.wellington;
            listVisible[1] = settings.sydney;
            listVisible[2] = settings.tokio;
            listVisible[3] = settings.seoul;
            listVisible[4] = settings.shanghai;
            listVisible[5] = settings.hong_kong;
            listVisible[6] = settings.singapore;
            listVisible[7] = settings.frankfurt;
            listVisible[8] = settings.zurich;
            listVisible[9] = settings.london;
            listVisible[10] = settings.toronto;
            listVisible[11] = settings.new_york;
            listVisible[12] = settings.chicago;
            listVisible[13] = settings.san_francisco;
        }

        public void getItems () {
            var clockProvider = new ClockProvider ();
            clockProvider.getItems ( listClocks );
//            message (listClocks.size.to_string ());

            for(int i = 0; i < Multiclock.COUNT_TOWN;i++) {
                listVisible.add (true);
            }
        }
    }
}

