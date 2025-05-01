package testbed.lib;

function float64bits(f:stdgo.GoFloat64) {
	final bytes = haxe.io.Bytes.alloc(8);
	bytes.setDouble(0, f.toBasic());
	final bits:Array<Int> = [
		for (i in 0...bytes.length)
			bytes.get(i)
	];
	trace(bits);
}
