package stdgo;

import stdgo.GoInt;

@:forward.new
@:forward
abstract Pointer<T>(PointerData<T>) from PointerData<T> {
	public var value(get, set):T;

	public var address(get,never):GoInt;

	private function get_address():GoInt
		return this.address;

	private function get_value():T {
		if (this.assign != null) {
			value = this.assign();
			this.assign = null;
		}
		final bool = this.previous != null && this.convert != null;
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
		if (p == null)
			return cast null;
		// throw "null pointer conversion";
		return p.get();
	}

	public function hasSet()
		return this.hasSet;
}

class PointerData<T> {
	public var get:() -> T;
	public var set:T->T;
	public var ref:T;
	public var hasSet:Bool = false;
	public var previous:Pointer<Any> = null;
	public var convert:T->Any;
	public var assign:Void->T;
	public var underlying:Any = null; // used for equality of pointers with the same slice/array/map/field
	public var underlyingIndex:Any = null;
	public var address:Int = 0;

	public inline function new(?get:()->T, ?set:T->T, hasSet:Bool = false, previous:Pointer<Any> = null, underlying:Any = null, underlyingIndex:Any = null) {
		if (get == null)
			get = () -> throw "null pointer dereference";
		if (set == null)
			set = value -> value;
		this.get = get;
		this.set = set;
		this.hasSet = hasSet;
		this.previous = previous;

		this.underlying = underlying;
		this.underlyingIndex = underlyingIndex;
		globalAddressMutex.acquire();
		this.address = ++globalAddress;
		globalAddressMutex.release();
	}

	public function toString():String
		return '0x$address';
}

var globalAddress = 0;
final globalAddressMutex = #if !js new sys.thread.Mutex(); #else {acquire: () -> {}, release: () -> {}}; #end
