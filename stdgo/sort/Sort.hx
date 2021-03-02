package stdgo.sort;

function ints(slice:Array<Int>) {
	slice.sort((a, b) -> {
		return a > b ? 1 : -1;
	});
}

function strings(slice:Array<String>) {
	slice.sort((a, b) -> {
		return a > b ? 1 : -1;
	});
}

function intsAreSorted(slice:Array<Int>):Bool {
	var min = slice[0];
	for (i in 1...slice.length) {
		if (min > slice[i])
			return false;
		min = slice[i];
	}
	return true;
}

function slice<T>(array:Array<T>, less:(i:Int, j:Int) -> Void) {}
