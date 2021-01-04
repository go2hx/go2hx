package gostd;

// snippit by tink haxe library
abstract Pointer<T>(haxe.ds.Vector<T>) {
	inline function new(value:T) {
		this = new haxe.ds.Vector(1);
		this[0] = value;
	}
	public var _value(get, set):T;
	@:to inline function get__value():T return this[0];
	inline function set__value(v:T):T return this[0] = v;
	public function toString():String return '@[' + Std.string(_value)+']';
}