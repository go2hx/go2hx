package stdgo;

import stdgo.StdGoTypes.AnyInterface;
import haxe.Rest;
import haxe.Constraints.Constructible;

@:forward
@:generic
abstract GoMap<K, V>(MapData<K, V>) {
	public var length(get, never):Int;

	public inline function new(args:Rest<{key:K, value:V}>) {
		this = new MapData<K, V>();
		for (arg in args) {
			this.set(arg.key, arg.value);
		}
	}

	@:arrayAccess
	public inline function get(key:K) {
		return this.get(key);
	}

	@:arrayAccess
	public inline function set(k:K, v:V):V {
		this.set(k, v);
		return v;
	}

	private function get_length():Int {
		return this.length();
	}

	public function cap():Int {
		return this.length();
	}

	public inline function iterator() {
		return this.iterator();
	}

	public inline function keyValueIterator() {
		return this.keyValueIterator();
	}

	@:generic
	inline public function _typename_<K:Constructible<Void->Void>, V:Constructible<Void->Void>>() {
		var k:Dynamic = new K();
		var v:Dynamic = new V();
		return '[${k.typeName()}]${v.typeName()}';
	}
}

class MapData<K, V> {
	var slice:Slice<{key:K, value:V}>;

	public function new() {
		slice = new Slice<{key:K, value:V}>();
	}

	public function get(key:K) {
		for (obj in slice) {
			if (obj == null)
				continue;
			if (obj.key == key)
				return obj.value;
		}
		return null;
	}

	public inline function set(key:K, value:V) {
		slice = slice.append([{key: key, value: value}]);
		return value;
	}

	public function remove(key:K) {
		for (i in 0...slice.length) {
			if (slice[i].key == key) {
				slice[i] = null;
				return;
			}
		}
		return;
	}

	public inline function iterator() {
		return slice.iterator();
	}

	public inline function keyValueIterator() {
		return slice.iterator();
	}

	public inline function length() {
		return slice.length;
	}
}
