package gostd;

// snippit by tink haxe library

typedef Pointer<T> = haxe.ds.Vector<T>;

function make<T>(value:T):Pointer<T> {
	var pointer = new Pointer<T>(1);
	pointer[0] = value;
	return pointer;
}
