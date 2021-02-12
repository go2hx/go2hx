package stdgo;
@:noUsing
function ints(slice:Array<Int>) {
	slice.sort((a, b) -> {
		return a > b ? 1 : -1;
	});
}
@:noUsing
function strings(slice:Array<String>) {
	slice.sort((a, b) -> {
		return a > b ? 1 : -1;
	});
}
@:noUsing
function intsAreSorted(slice:Array<Int>):Bool {
	var min = slice[0];
	for (i in 1...slice.length) {
		if (min > slice[i])
			return false;
		min = slice[i];
	}
	return true;
}
@:noUsing
function slice<T>(array:Array<T>, less:(i:Int, j:Int) -> Void) {}
