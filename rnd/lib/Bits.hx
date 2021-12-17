package rnd.lib;

import stdgo.StdGoTypes.GoFloat64;

function float64bits(f:GoFloat64) {
	final bytes = haxe.io.Bytes.alloc(8);
	bytes.setDouble(0, f.toBasic());
	final bits:Array<Int> = [
		for (i in 0...bytes.length)
			bytes.get(i)
	];
	trace(bits);
}
