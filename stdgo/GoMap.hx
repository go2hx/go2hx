package stdgo;

import haxe.Constraints.Constructible;
import haxe.Constraints;
import haxe.Rest;
import haxe.ds.*;
import stdgo.StdGoTypes;
import stdgo.internal.reflect.Reflect._Type;

@:transitive
@:multiType(@:followWithAbstracts K)
abstract GoMap<K, V>(GoObjectMap<K, V>) {
	public var length(get, never):GoInt;
	public var __type__(get,never):_Type;
	function get___type__():_Type
		return this.t;

	function get_length():GoInt
		return Lambda.count(this);

	public function new();

	@:arrayAccess public inline function __set__(key:K, value:V)
		this.set(key, value);

	@:arrayAccess public inline function __get__(key:K)
		return this.get(key);

	public inline function __exists__(key:K)
		return this.exists(key);

	public inline function __remove__(key:K)
		return this.remove(key);

	public inline function __keys__():Iterator<K>
		return this.keys();

	public inline function __keyArray__():Array<K>
		return [for (key in this.keys()) key];

	public inline function iterator():Iterator<V>
		return this.iterator();

	public inline function keyValueIterator():KeyValueIterator<K, V>
		return this.keyValueIterator();

	public inline function __copy__():GoMap<K, V>
		return cast this.copy();

	public inline function __toString__():String
		return this.toString();

	public inline function __clear__():Void {
		this.clear();
	}

	@:from static function fromIntMap<V>(x:Map<Int, V>):GoMap<Int, V>
		return cast x;

	@:from static function fromGoObjectMap<K, V>(x:GoObjectMap<K, V>):GoMap<K, V>
		return cast x;

	private function __defaultValue__():V {
		if ((this is GoObjectMap)) {
			return cast(this, GoObjectMap<Dynamic, Dynamic>).defaultValue();
		}
		return cast 0;
	}
}

class GoObjectMap<K, V> implements haxe.Constraints.IMap<K, V> {
	var _keys:Array<K> = [];
	var _values:Array<V> = [];

	public var t:_Type = null;

	public function new(t:_Type) {
		this.t = t;
	}

	public function set(key:K, value:V):Void {
		for (i in 0..._keys.length) {
			if (equals(key, _keys[i])) {
				_values[i] = value;
				break;
			}
		}
	}

	function equals(key:K, objKey:K):Bool {
		final bool = (key is AnyInterfaceData);
		if (bool) {
			final x:AnyInterface = (key : Any);
			final y:AnyInterface = (objKey : Any);
			// set internal Type
			if (!x.type.assignableTo(new stdgo.internal.reflect.Reflect._Type_asInterface(new Pointer(() -> y.type, value -> y.type = value), y.type)))
				return false;
			return x == y;
		}
		return switch ((t : Dynamic)._common() : stdgo.internal.reflect.Reflect.GoType) {
			case mapType(_.get() => var keyType, _):
				final t:_Type = new stdgo.internal.reflect.Reflect._Type(keyType);
				new AnyInterface(key, t) == new AnyInterface(objKey, t);
			default:
				throw "unknown type map equals: " + (t : Dynamic)._common();
		}
	}

	public function defaultValue():V {
		return switch @:privateAccess ((t : Dynamic)._common() : stdgo.internal.reflect.Reflect.GoType) {
			case mapType(_,
				_.get() => value): null; // TODO: use new constructor // stdgo.internal.reflect.Reflect.defaultValue(new stdgo.reflect.Reflect._Type(value));
			default: @:privateAccess throw "unknown default map type: " + (t : Dynamic)._common();
		}
	}

	public function get(key:K):Null<V> {
		for (i in 0..._keys.length) {
			if (equals(key, _keys[i]))
				return _values[i];
		}
		return defaultValue();
	}

	public function exists(key:K):Bool {
		for (i in 0..._keys.length) {
			if (equals(key, _keys[i]))
				return true;
		}
		return false;
	}

	public function remove(key:K):Bool {
		for (i in 0..._keys.length) {
			if (equals(key, _keys[i])) {
				_keys.remove(_keys[i]);
				_values.remove(_values[i]);
				return true;
			}
		}
		return false;
	}

	public function keys():Iterator<K>
		return _keys.iterator();

	public function iterator():Iterator<V>
		return _values.iterator();

	inline public function keyValueIterator():KeyValueIterator<K, V> {
		return new haxe.iterators.MapKeyValueIterator(this);
	}

	public function copy():GoObjectMap<K, V> {
		final o = new GoObjectMap<K, V>(t);
		o._keys = _keys.copy();
		o._values = _values.copy();
		return o;
	}

	public function toString():String {
		return [
			for (i in 0..._keys.length)
				'${_keys[i]} : ${_values[i]}'
		].join(", ");
	}

	public function clear():Void {
		_keys = [];
		_values = [];
	}
}
