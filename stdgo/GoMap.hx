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

	public function isNull()
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
	var slice:Slice<{key:K, value:V}>;
	var nullcount:GoInt = 0;
	public var type:Type = null;

	public var nullBool:Bool = false;

	public function new(type:Type) {
		slice = new Slice<{key:K, value:V}>();
		this.type = type;
	}

	public function get(key:K) {
		trace("key: " + key);
		for (obj in slice) {
			if (obj == null)
				continue;
			final equals = obj.key == key;
			trace(obj.key + " " + key + " eq: " + equals);
			if (equals)
				return obj.value;
		}
		switch type.gt {
			case GT_map(key, value):
				return @:privateAccess stdgo.reflect.Reflect.defaultValue(new Type(value));
			default:
				throw "type not map";
		}
	}

	public function exists(key:K):Bool {
		for (obj in slice) {
			if (obj == null)
				continue;
			if (obj.key == key)
				return true;
		}
		return false;
	}

	public inline function set(key:K, value:V) {
		var obj = {key: key, value: value};
		trace(obj);
		slice = slice.append(obj);
		return value;
	}

	public function remove(key:K) {
		for (i in 0...slice.length.toBasic()) {
			if (slice[i] != null && slice[i].key == key) {
				slice[i] = null;
				nullcount++;
				return;
			}
		}
		return;
	}

	public inline function iterator() {
		return new MapIterator(slice);
	}

	public inline function keyValueIterator() {
		return new MapKeyValueIterator(slice);
	}

	public inline function length() {
		return slice.length - nullcount;
	}

	public inline function toString():String {
		return slice.toArray().toString();
	}
	public inline function toSlice() {
		return slice;
	}
}


private class MapIterator<K, V> {
	var offset:Int = 0;
	var slice:Slice<{key:K, value:V}>;

	public inline function new(slice:Slice<{key:K, value:V}>) {
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
	var slice:Slice<{key:K, value:V}>;

	public inline function new(slice:Slice<{key:K, value:V}>) {
		this.slice = slice;
	}

	public inline function hasNext() {
		return offset < slice.length;
	}

	public inline function next() {
		var o:MultiReturn<{key:K, value:V}> = null;
		while (offset < slice.length) {
			o = slice[offset++];
			if (o != null)
				break;
		}
		return o;
	}
}
