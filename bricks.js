function makeRow(max1InchBricks, max5InchBricks, rowLength) {
	if (max5InchBricks * 5 >= rowLength) {
		if (rowLength % 5 <= max1InchBricks) {
			return true
		}
		else {
			return false
		}
	}
	if (max5InchBricks * 5 < rowLength) {
		if (max5InchBricks * 5 + max1InchBricks >= rowLength) {
			return true
		}
		else {
			return false
		}
	}
}