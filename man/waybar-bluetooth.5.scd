waybar-bluetooth(5)

# NAME

waybar - bluetooth module

# DESCRIPTION

The *bluetooth* module displays information about the status of the device's bluetooth device.

# CONFIGURATION

Addressed by *bluetooth*

*interval*: ++
	typeof: integer ++
	default: 60 ++
	The interval in which the bluetooth state gets updated.

*format*: ++
	typeof: string  ++
	default: *{icon}* ++
	The format, how information should be displayed. This format is used when other formats aren't specified.

*format-icons*: ++
	typeof: array/object ++
	Based on the device status, the corresponding icon gets selected. ++
	The order is *low* to *high*. Or by the state if it is an object.

*rotate*: ++
	typeof: integer ++
	Positive value to rotate the text label.

*max-length*: ++
	typeof: integer ++
	The maximum length in character the module should display.

*on-click*: ++
	typeof: string ++
	Command to execute when clicked on the module.

*on-click-middle*: ++
	typeof: string ++
	Command to execute when middle-clicked on the module using mousewheel.

*on-click-right*: ++
	typeof: string ++
	Command to execute when you right clicked on the module.

*on-scroll-up*: ++
	typeof: string ++
	Command to execute when scrolling up on the module.

*on-scroll-down*: ++
	typeof: string ++
	Command to execute when scrolling down on the module.

*smooth-scrolling-threshold*: ++
	typeof: double ++
	Threshold to be used when scrolling.

*tooltip*: ++
	typeof: bool ++
	default: *true* ++
	Option to disable tooltip on hover.

*tooltip-format*: ++
	typeof: string ++
	The format, how information should be displayed in the tooltip. This format is used when other formats aren't specified.

# FORMAT REPLACEMENTS

*{status}*: Status of the bluetooth device.

*{icon}*: Icon, as defined in *format-icons*.

# EXAMPLES

```
"bluetooth": {
	"format": "{icon}",
	"format-alt": "bluetooth: {status}",
	"interval": 30,
	"format-icons": {
		"enabled": "",
		"disabled": ""
	},
	"tooltip-format": "{}"
}
```

# STYLE

- *#bluetooth*
