package stdgo;

import haxe.Constraints.Constructible;
import haxe.ds.Either;
import haxe.macro.Context;
import stdgo.StdGoTypes.AnyInterface;

@:forward.new
@:forward
abstract Pointer<T>(PointerData<T>) {
	public var value(get, set):T;

	private function get_value():T {
		if (this.assign != null) {
			value = this.assign();
			this.assign = null;
		}
		final bool = this.previous != null;
		if (bool) {
			this.ref = this.get();
			this.previous.assign = () -> this.convert(this.ref);
			function recursive(p:Pointer<Any>, value:Void->Any) {
				if (p.previous == null)
					return;
				p.previous.assign = () -> p.convert(value());
			}
			recursive(this.previous, this.previous.assign);
			return this.ref;
		}
		return this.get();
	}

	@:op(A == B)
	private static function equals<T>(a:Pointer<T>, b:Pointer<T>):Bool {
		return (a : Dynamic) == (b : Dynamic)
			|| a.underlying != null
			&& a.underlying == b.underlying
			&& (a.underlyingIndex == null || a.underlyingIndex == b.underlyingIndex);
	}

	@:op(A != B)
	private static function notEquals<T>(a:Pointer<T>, b:Pointer<T>):Bool {
		return !equals(a, b);
	}

	public inline function isNil()
		return false;

	private inline function set_value(value:T):T {
		if (this.previous == null) {
			this.set(value);
		} else {
			this.ref = value;
		}
		return value;
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
	public var ref:T = null;
	public var hasSet:Bool = false;
	public var previous:Pointer<Any> = null;
	public var convert:T->Any;
	public var assign:Void->T;
	public var underlying:Any = null; // used for equality of pointers with the same slice/array/map
	public var underlyingIndex:Any = null; // used for equality of pointers with the index of slice/array/map

	public function new(get, set, hasSet:Bool = false, previous:Pointer<Any> = null, underlying:Any = null, underlyingIndex:Any = null) {
		this.get = get;
		this.set = set;
		this.hasSet = hasSet;
		this.previous = previous;

		this.underlying = underlying;
		this.underlyingIndex = underlyingIndex;
	}

	public inline function toString() {
		return "&" + Go.string(get());
	}
}
