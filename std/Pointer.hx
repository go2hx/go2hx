import haxe.macro.Expr;

class InternalPointer<T> {
	public var value(get, set):T;

	function get_value():T {
		return get();
	}

	function set_value(value:T):T {
		set(value);
		return value;
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
