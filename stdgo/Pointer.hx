package stdgo;

import haxe.ds.Either;
import haxe.macro.Context;
import haxe.Constraints.Constructible;
import stdgo.StdGoTypes.AnyInterface;
@:forward.new
abstract Pointer<T>(PointerData<T>) {
	public var value(get, set):T;

	private function get_value():T {
		return this.get();
	}

	private inline function set_value(value:T):T {
		return this.set(value);
	}

	@:to
	public static inline function to<T>(p:PointerData<T>):T {
		return p.get();
	}

	public function hasSet()
		return this.hasSet;
}

class PointerData<T> {
	public var get:() -> T;
	public var set:T->T;
	public var hasSet:Bool = false;

	public function new(get, set,hasSet:Bool=false) {
		this.get = get;
		this.set = set;
		this.hasSet = hasSet;
	}

	public inline function toString() {
		return "* " + Go.string(get());
	}
}
