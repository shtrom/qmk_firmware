#!/bin/sh -x

FILES="ergodox_ez_base_layout_ergodox_pretty_shtrom.json kradoindustries_promenade_layout_1x2u_shtrom.json"

for f in ${FILES}; do
	KEYBOARD=$(jp -u @.keyboard < $f)
	KEYMAP=$(jp -u @.keymap < $f)
	qmk import-keymap ${f}
	qmk compile -kb ${KEYBOARD} -km ${KEYMAP}
done

#qmk flash -m TEENSY2 ergodox_ez_base_ergodox_ez_base_ergodox_ez_base_ergodox_ez_base_2025-06-29_dvorak_layout.hex
#qmk flash kradoindustries_promenade_kradoindustries_promenade_layout_1x2u_2025-06-29_dvorak_layer.hex
