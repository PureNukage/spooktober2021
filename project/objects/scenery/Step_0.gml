if panning {
	pan += panspeed
	
	if !offscreen {
		if pan >= 640 {
			panning = false
			if userinterface.state == 1 userinterface.state = 0

		}
	}
	else {
		if pan >= 1280 {
			panning = false
		}
	}
}