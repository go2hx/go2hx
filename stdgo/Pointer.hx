package stdgo;

import haxe.ds.Either;
import haxe.macro.Context;
import haxe.Constraints.Constructible;
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
	@:op(A == B) private static function equals<T>(a:Pointer<T>,b:Pointer<T>):Bool {
		return a.address() == b.address();
	}
	@:op(A != B) private static function notEquals<T>(a:Pointer<T>,b:Pointer<T>):Bool {
		return a.address() != b.address();
	}
	public inline function address() {
		return this.address;
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
	@:op(A == B) static function equals<T>(a:PointerWrapper<T>,b:PointerWrapper<T>):Bool {
		return a._value_ == b._value_;
	}
	@:op(A != B) static function notEquals<T>(a:PointerWrapper<T>,b:PointerWrapper<T>):Bool {
		return a._value_ != b._value_;
	}
}
class PointerData<T> {
	public var get:()->T;
	public var set:T->T;
	public var address:String;
	public function new(get,set,address) {
		this.get = get;
		this.set = set;
		this.address = address;
	}
	public inline function toString() {
		return Std.string("* " + get());
	}
}