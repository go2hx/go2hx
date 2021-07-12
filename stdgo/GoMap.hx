package stdgo;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.MultiReturn;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.reflect.Reflect.Type;
import haxe.Rest;
import haxe.Constraints.Constructible;

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

	public function defaultValue():V
		return this.defaultValue();

	public function setNull():MapData<K, V> {
		this.nullBool = true;
		return this;
	}

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

	public function isNill()
		return this.nullBool;

	public function cap():GoInt {
		return this.length();
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

	public var nullBool:Bool = false;
	public var type:Type = null;

	public function new(type:Type) {
		this.type = type;
	}

	public inline function length()
		return array.length;

	inline function equals(x:K, y:K):Bool {
		switch type.gt {
			case GT_map(key, _):
				final t = new Type(key);
				return new AnyInterface(x, t) == new AnyInterface(y, t);
			default:
				throw "unknown type: " + type.gt;
		}
	}

	public function exists(key:K):Bool {
		for (obj in array) {
			if (equals(key, obj.key))
				return true;
		}
		return false;
	}

	public function remove(key:K):Bool {
		for (obj in array) {
			if (equals(key, obj.key)) {
				array.remove(obj);
				return true;
			}
		}
		return false;
	}

	public function get(key:K):V {
		for (obj in array) {
			if (equals(key, obj.key))
				return obj.value;
		}
		return defaultValue();
	}

	public inline function defaultValue():V {
		return switch type.gt {
			case GT_map(key, value): stdgo.reflect.Reflect.defaultValue(new stdgo.reflect.Reflect.Type(value));
			default: throw "unknown type: " + type.gt;
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
			}
		}
		array.push({key: key, value: value});
	}

	public function toString():GoString {
		var params:String = "";
		for (obj in array) {
			params = obj.key + ":" + obj.value + " " + params;
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

	public inline function next():MultiReturn<{key:K, value:V}> {
		var o:MultiReturn<{key:K, value:V}> = null;
		while (offset < slice.length) {
			o = slice[offset++];
			if (o != null)
				break;
		}
		return o;
	}
}
