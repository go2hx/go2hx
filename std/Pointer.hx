import haxe.macro.Expr;

class InternalPointer<T> {
	public var _value(get, set):T;

	function get__value():T {
		return get();
	}

	function set__value(value:T):T {
		return set(value);
	}

	var base_i:Int;
	var get:Void->T;
	var set:T->T;

	private function new(get:Void->T, set:T->T) {
		this.get = get;
		this.set = set;
	}
	public static function make<T>(get, set) {
		return new InternalPointer<T>(get, set);
	}
}
@:forward //pointer is an abstract wrapper of anything
abstract Pointer<T>(T) {
	public function new(value) {
		this = value;
	}
}
@:forward
abstract PointerWrapper<T>(T) from T to T {
	public function new(value) {
		this = value;
	}
	public var _value(get, set):T;
	
	inline function get__value():T {
		return this;
	}
	
	inline function set__value(_value:T):T {
		return this = _value;
	}
}
