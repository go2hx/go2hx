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

	@:op(A == B) private static function equals<T>(a:Pointer<T>, b:Pointer<T>):Bool {
		return a.address() == b.address();
	}

	@:op(A != B) private static function notEquals<T>(a:Pointer<T>, b:Pointer<T>):Bool {
		return a.address() != b.address();
	}

	public inline function address() {
		return this.address;
	}
}

class PointerData<T> {
	public var get:() -> T;
	public var set:T->T;
	public var address:Int;

	public function new(get, set, address) {
		this.get = get;
		this.set = set;
		this.address = address;
	}

	public inline function toString() {
		return "* " + Std.string(get());
	}
}
