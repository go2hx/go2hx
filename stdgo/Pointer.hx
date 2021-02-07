package stdgo;

import haxe.macro.Context;
@:forward
abstract Pointer<T>(Dynamic) {

	public function new(obj,?get,?set) {
		if (obj == null)
			this = new PointerData(get,set);
	}
	@:op([]) inline function get(index:Int):T {
        return !this.real ? this.get() : this;
    }
    @:op([]) inline function set(index:Int,value:T):T {
        return !this.real ? this.set(value) : this = value;
    }
}
class PointerData<T> {
	public var get:()->T;
	public var set:T->T;
	public var real:Bool = true;
	public function new(get,set) {
		this.get = get;
		this.set = set;
	}
}