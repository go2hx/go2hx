package stdgo;

import haxe.ds.Either;
import haxe.macro.Context;
import haxe.Constraints.Constructible;
import stdgo.StdGoTypes.AnyInterface;

abstract Pointer<T>(PointerData<T>) {
	public var value(get, set):T;

	private function get_value():T {
		return this.get();
	}

	private inline function set_value(value:T):T {
		return this.set(value);
	}

	public inline function new(obj:PointerData<T>) {
		this = obj;
	}

	@:to
	public static inline function to<T>(p:PointerData<T>):T {
		return p.get();
	}
}

class PointerData<T> {
	public var get:() -> T;
	public var set:T->T;

	public function new(get, set) {
		this.get = get;
		this.set = set;
	}

	public inline function toString() {
		return "* " + Std.string(get());
	}
}
