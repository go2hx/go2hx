package stdgo;

import haxe.Constraints.Constructible;
import haxe.Rest;
import stdgo.StdGoTypes;
import stdgo.reflect.Reflect.Type;

@:forward
@:generic
abstract GoMap<K, V>(MapData<K, V>) from MapData<K, V> {
	public var length(get, never):GoInt;

	public inline function new(type:Type, args:Rest<{key:K, value:V}>) {
		this = new MapData<K, V>(type);
		for (arg in args) {
			this.set(arg.key, arg.value);
		}
	}

	public function __copy__():GoMap<K, V> {
		return this.copy();
	}

	public function setCap(cap:GoInt):GoMap<K, V> {
		this.cap = cap.toBasic();
		return this;
	}

	public function defaultValue():V
		return this.defaultValue();

	@:arrayAccess
	public inline function get(key:K):V {
		return this.get(key);
	}

	public inline function exists(key:K):Bool {
		return this.exists(key);
	}

	@:arrayAccess
	public inline function set(k:K, v:V):V {
		this.set(k, v);
		return v;
	}

	private function get_length():GoInt {
		return this.length();
	}

	public function nil():GoMap<K, V> {
		this.nilBool = true;
		return this;
	}

	public function isNil()
		return this.nilBool;

	public function cap():GoInt {
		return this.cap == -1 ? length : this.cap;
	}

	public inline function iterator() {
		return this.iterator();
	}

	public inline function keyValueIterator() {
		return this.keyValueIterator();
	}

	public inline function toSlice()
		return this.toSlice();
}

private class MapData<K, V> {
	var array:Array<{key:K, value:V}> = [];

	var nullcount:GoInt = 0;

	public var nilBool:Bool = false;
	public var type:Type = null;
	public var cap:Int = -1;

	public function new(type:Type) {
		this.type = type;
	}

	public function copy():MapData<K, V> {
		final map = new MapData<K, V>(this.type);
		@:privateAccess map.array = this.array.copy();
		return map;
	}

	public inline function length()
		return array.length;

	function equals(key:K, objKey:K):Bool {
		final bool = (key is AnyInterfaceData);
		if (bool) {
			final x:AnyInterface = (key : Any);
			final y:AnyInterface = (objKey : Any);
			if (!x.type.assignableTo(y.type))
				return false;
			return x == y;
		}
		return switch (type.common().value : stdgo.reflect.Reflect.GoType) {
			case mapType(keyType, _):
				final t:Type = new stdgo.reflect.Reflect._Type(keyType);
				new AnyInterface(key, t) == new AnyInterface(objKey, t);
			default:
				throw "unknown type map equals: " + type.common().value;
		}
	}

	public function exists(key:K):Bool {
		for (obj in array) {
			if (equals(key, obj.key))
				return true;
		}
		return false;
	}

	public function remove(key:K) {
		for (obj in array) {
			if (equals(key, obj.key)) {
				array.remove(obj);
				return;
			}
		}
	}

	public function get(key:K):V {
		for (obj in array) {
			if (equals(key, obj.key))
				return obj.value;
		}
		return defaultValue();
	}

	public inline function defaultValue():V {
		return switch @:privateAccess (type.common().value : stdgo.reflect.Reflect.GoType) {
			case mapType(key, value): stdgo.reflect.Reflect.defaultValue(new stdgo.reflect.Reflect._Type(value));
			default: @:privateAccess throw "unknown default map type: " + (type.common().value : stdgo.reflect.Reflect.GoType);
		}
	}

	public inline function iterator()
		return new MapIterator(array);

	public inline function keyValueIterator()
		return new MapKeyValueIterator(array);

	public function set(key:K, value:V) {
		for (obj in array) {
			if (equals(key, obj.key)) {
				obj.value = value;
				return;
			}
		}
		array.unshift({key: key, value: value});
	}

	public function toString():GoString {
		var params:String = "";
		final array = array.copy();
		array.sort((a, b) -> {
			return (a.key : Dynamic) > (b.key : Dynamic) ? -1 : 1;
		});
		for (obj in array) {
			params = Go.string(obj.key) + ":" + Go.string(obj.value) + " " + params;
		}
		params = params.substr(0, params.length - 1);
		return 'map[$params]';
	}

	public inline function toSlice():Slice<Dynamic> {
		return null;
	}
}

private class MapIterator<K, V> {
	var offset:Int = 0;
	var slice:Array<{key:K, value:V}>;

	public inline function new(slice:Array<{key:K, value:V}>) {
		this.slice = slice;
	}

	public inline function hasNext() {
		return offset < slice.length;
	}

	public inline function next():V {
		var o:{key:K, value:V} = null;
		while (offset < slice.length) {
			o = slice[offset++];
			if (o != null)
				break;
		}
		return o.value;
	}
}

private class MapKeyValueIterator<K, V> {
	var offset:Int = 0;
	var slice:Array<{key:K, value:V}>;

	public inline function new(slice:Array<{key:K, value:V}>) {
		this.slice = slice;
	}

	public inline function hasNext() {
		return offset < slice.length;
	}

	public inline function next():{key:K, value:V} {
		var o:{key:K, value:V} = null;
		while (offset < slice.length) {
			o = slice[offset++];
			if (o != null)
				break;
		}
		return o;
	}
}
