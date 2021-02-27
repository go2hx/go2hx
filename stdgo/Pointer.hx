package stdgo;

import haxe.ds.Either;
import haxe.macro.Context;

abstract Pointer<T>(PointerData<T>) {
	var value(get, set):T;
	public inline function new(obj:PointerData<T>) {
		this = obj;
	}
	private function get_value():T {
		return this.get();
	}

	private inline function set_value(value:T):T {
		return this.set(value);
	}
	@:to
	public inline function to():T {
		return value;
	}
}
@:forward
abstract PointerWrapper<T>(T) from T to T {
	public function new(obj:T) {
		this = obj;
	}
}

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