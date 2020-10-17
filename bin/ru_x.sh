#!/bin/sh

## Гребаный костыль, но по-другому никак :(
#setxkbmap -layout us
#setxkbmap -layout us,ru -option -option grp:alts_toggle,grp:shifts_toggle,grp:shift_caps_toggle,grp_led:scroll,terminate:ctrl_alt_bksp,compose:rwin -symbols "+kpdl(dotoss)+kpdl(dotoss):2" &
# Еще более гребаный костыль, я хз насколько он рабочий. Как минимум, он вроде бы работает в ком. строке (за искл. alts_toggle, к-рые, впрочем, не работают уже хз сколько вообще никак)
setxkbmap -option
setxkbmap -layout us,ru
setxkbmap -option grp_led:scroll,terminate:ctrl_alt_bksp,compose:rwin
# For notebook keyboards lacking rwin
setxkbmap -option compose:paus
# For notebook keyboards lacking rwin and paus
setxkbmap -option compose:prsc
setxkbmap -option grp:shifts_toggle
setxkbmap -option grp:shift_caps_toggle
setxkbmap -option keypad:pointerkeys
setxkbmap -option ctrl:swapcaps
setxkbmap -symbols "+kpdl(dotoss)+kpdl(dotoss):2"
