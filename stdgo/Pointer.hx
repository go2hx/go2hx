package stdgo;

import haxe.ds.Either;
import haxe.macro.Context;
abstract Pointer<T>(PointerData<T>) {
	public var _value_(get, set):T;
	private function get__value_():T {
		return this.get();
	}

	private inline function set__value_(value:T):T {
		return this.set(value);
	}
	public inline function new(obj:PointerData<T>) {
		this = obj;
	}
	@:to
	public inline function to():T {
		return _value_;
	}
}
@:forward
abstract PointerWrapper<T>(T) from T to T {
	public var _value_(get, set):T;
	private inline function get__value_():T {
		return this;
	}

	private inline function set__value_(value:T):T {
		return this = value;
	}
	public function new(obj:T) {
		this = obj;
	}
}
@:access(T)
class PointerData<T> {
	public var get:()->T;
	public var set:T->T;
	public function new(get,set) {
		this.get = get;
		this.set = set;
	}
	public inline function toString() {
		return Std.string("* " + get());
	}
}