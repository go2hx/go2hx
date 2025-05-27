package stdgo._internal.internal;

inline var MULTIPLIER:Float = 48271.0;
inline var MAX_VALUE_FLOAT:Float = 1.79e+308;
inline var MODULUS = MAX_VALUE_FLOAT;
var seed:Float = 1;

function generate():Float
	return seed = (seed * MULTIPLIER) % MODULUS;

function int(min:Int, max:Int)
	return Math.floor(min + generate() / MODULUS * (max - min + 1));

function shuffle<T>(a:Array<T>):Array<T> {
	var temp = null;
	for (i in 0...a.length) {
		final index = i;
		final index2 = int(0, a.length - 1);

		temp = a[index];
		a[index] = a[index2];
		a[index2] = temp;
	}
	return a;
}
