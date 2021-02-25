package stdgo;

import haxe.macro.Context;
@:forward
abstract Pointer<T>(Dynamic) to Dynamic {

	public inline function new(expr:Dynamic) {
		this = expr;
	}
	@:op([]) inline function get(index:Int) {
		if (index == -200)
        	return !this._realpointer ? this.get() : this;
		return this[index];
    }
    @:op([]) inline function set(index:Int,value:T):T {
		if (index == -200)
        	return !this._realpointer  ? this.set(value) : this = value;
		return this[index] = value;
    }
}
class PointerData<T> {
	public var get:()->T;
	public var set:T->T;
	public var _realpointer:Bool = true;
	public function new(get,set) {
		this.get = get;
		this.set = set;
	}
	public inline function toString() {
		return Std.string("* " + get());
	}
}