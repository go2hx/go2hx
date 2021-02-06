package stdgo;

import haxe.macro.Context;

abstract Pointer<T>(Dynamic) {
	public function new(?obj,?get,?set) {
		this = new PointerData(get,set);
	}
	
}
class PointerData<T> {
	public var get:()->T;
	public var set:T->T;
	public function new(get,set) {
		this.get = get;
		this.set = set;
	}
}