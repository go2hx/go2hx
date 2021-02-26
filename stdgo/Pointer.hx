package stdgo;

import haxe.ds.Either;
import haxe.macro.Context;
@:transitive
abstract Pointer<T>(PointerData<T>) {
	var _value_(get, set):T;
	public inline function new(expr:T) {
		this = new PointerData(() -> expr,set -> expr);
	}
	private function get__value_():T {
		return this.get();
	}

	private inline function set__value_(value:T):T {
		return this.set(value);
	}
	@:to
	public inline function to():T {
		return _value_;
	}
	@:op(a.b) public function fieldRead(name:String)
		return Reflect.field(_value_,name);
	@:op(a.b) public function fieldWrite(name:String, value:String)
		return Reflect.setField(_value_,name,value);
	@:op([]) inline function get(index:Int) {
		return (_value_ : Dynamic).get(index);
    }
    @:op([]) inline function set(index:Int,value:T) {
		return (_value_ : Dynamic).set(index,value);
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