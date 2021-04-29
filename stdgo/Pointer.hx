package stdgo;

import haxe.ds.Either;
import haxe.macro.Context;
import haxe.Constraints.Constructible;
import stdgo.StdGoTypes.AnyInterface;

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

	@:to inline function __promote() {
		return new AnyInterface({value: this, typeName: "*" + (this.get() : AnyInterface).typeName()});
	}
}

@:forward
abstract PointerWrapper<T>(T) from T to T {
	public var _value_(get, set):T;
	public var _is_pointer_(get,never):Bool;

	private inline function get__is_pointer_():Bool {
		return true;
	}

	private inline function get__value_():T {
		return this;
	}

	private inline function set__value_(value:T):T {
		return this = value;
	}

	public function new(obj:T) {
		this = obj;
	}

	@:op(A == B) static function equals<T>(a:PointerWrapper<T>, b:PointerWrapper<T>):Bool {
		if (a == null)
			return b == null ? true : false;
		if (b == null)
			return a == null ? true : false;
		return (a._value_ : Dynamic)._address_ == (b._value_ : Dynamic)._address_;
	}

	@:op(A != B) static function notEquals<T>(a:PointerWrapper<T>, b:PointerWrapper<T>):Bool {
		if (a == null)
			return b == null ? !true : !false;
		if (b == null)
			return a == null ? !true : !false;
		return (a._value_ : Dynamic)._address_ != (b._value_ : Dynamic)._address_;
	}

	@:to inline function __promote() {
		return new AnyInterface({value: this, typeName: "*" + (_value_ : AnyInterface).typeName()});
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
		return Std.string("* " + get());
	}
}
