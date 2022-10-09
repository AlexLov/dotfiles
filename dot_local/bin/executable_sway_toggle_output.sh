#!/usr/bin/env bash
# vim: noet

get_outputs() { swaymsg -t get_outputs -r; }
output_status() { # $1 - output name
	get_outputs | jq -r ".[] | select(.name == \"$1\") | .active" || echo none
}
is_enabled() { # $1 - output name
	[ $(output_status "$1") = "true" ]
}

enable_output() { # $1 - output name
	swaymsg output "$1" enable
}
disable_output() { # $1 - output name
	swaymsg output "$1" disable
}
toggle_output() { # $1 - output name
	swaymsg output "$1" toggle
}

LAPTOP_OUTPUT_NAME=$(get_outputs | jq -r '.[] | select(.model == "0x07DB") | .name')
ROKID_OUTPUT_NAME=$(get_outputs | jq -r '.[] | select(.model == "Rokid Air") | .name')

## Enable embedded laptop's output if no Rokid output presents
if [ -z "$ROKID_OUTPUT_NAME" ] && ! is_enabled "$LAPTOP_OUTPUT_NAME"; then
	enable_output "$LAPTOP_OUTPUT_NAME"
	echo "Laptop's output ($LAPTOP_OUTPUT_NAME) has been enabled. Is active now?: $(output_status ${LAPTOP_OUTPUT_NAME})"
	exit
fi

# Disable laptop's output if both laptop and Rekid outputs enabled
if is_enabled "$ROKID_OUTPUT_NAME" && is_enabled "$LAPTOP_OUTPUT_NAME"; then
	disable_output "$LAPTOP_OUTPUT_NAME"
	echo "Laptop's output ($LAPTOP_OUTPUT_NAME) has been disabled. Is active now?: $(output_status ${LAPTOP_OUTPUT_NAME})"
	exit
fi

# Toggle both if some of them (or all) disabled
toggle_output "$ROKID_OUTPUT_NAME"
echo "Rokid's output ($ROKID_OUTPUT_NAME) has been toggled. Is active now?: $(output_status ${ROKID_OUTPUT_NAME})"
toggle_output "$LAPTOP_OUTPUT_NAME"
echo "Laptop's output ($LAPTOP_OUTPUT_NAME) has been toggled. Is active now?: $(output_status ${LAPTOP_OUTPUT_NAME})"
