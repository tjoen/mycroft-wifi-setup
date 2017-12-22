# Mycroft WiFi Setup - no psk check

wpa_cli keeps coming with "Associating" message and nevers connects when i use a new kernel.
For now I disabled the psk check, so you (and me) better type in the right password.

This repository holds Mycroft's wifi setup client. To build it, run first run './setup.sh' and then `./build.sh`. To create a deb package, after building it run `./package_deb.sh`. The results are placed into the `dist/` folder.

