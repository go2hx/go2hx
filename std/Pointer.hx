package std;

import haxe.macro.Expr;

class Pointer<T> {
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

	private static var index:Int = 0;
	private static var map = new Map<Int, Pointer<Any>>();

	public function new(get:Void->T, set:T->T, base_i:Int = 0) {
		this.get = get;
		this.set = set;
		this.base_i = base_i;
		if (this.base_i == 0)
			this.base_i = ++index;
	}

	/*public function address():Int {
		map.set(base_i,cast this);
		return base_i;
	}*/
	public function address():Pointer<T> {
		return this;
	}

	public function copy():Pointer<T> {
		return new Pointer<T>(get, set, base_i);
	}

	public static function fromAddress(h:Int):Pointer<Any> {
		return map.get(h);
	}

	public static function make<T>(get, set):Pointer<T> {
		return new Pointer<T>(get, set);
	}

	public function toString():String {
		return '$base_i=$value';
	}
}
