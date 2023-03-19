package stdgo;

import stdgo.StdGoTypes;
import stdgo.internal.reflect.Reflect._Type;
import stdgo.Pointer;
import haxe.Constraints.IMap;
import haxe.ds.IntMap;
import haxe.ds.BalancedTree;

@:transitive
@:multiType(@:followWithAbstracts K)
abstract GoMap<K, V>(IMap<K, V>) {
	/**
		Creates a new Map.
		This becomes a constructor call to one of the specialization types in
		the output. The rules for that are as follows:
		1. if `K` is a `String`, `haxe.ds.StringMap` is used
		2. if `K` is an `Int`, `haxe.ds.GoIntMap` is used
		3. if `K` is an `EnumValue`, `haxe.ds.EnumValueMap` is used
		4. if `K` is any other class or structure, `haxe.ds.GoObjectMap` is used
		5. if `K` is any other type, it causes a compile-time error
		(Cpp) Map does not use weak keys on `GoObjectMap` by default.
	**/
	public function new();

	/**
		Maps `key` to `value`.
		If `key` already has a mapping, the previous value disappears.
		If `key` is `null`, the result is unspecified.
	**/
	public inline function set(key:K, value:V)
		this.set(key, value);

	public inline function __setData__(map:GoMap<K,V>) {
		this.clear();
		for (key => value in map) {
			this.set(key,value);
		}
	}

	public inline function __setInitData__(map:Map<K,V>) {
		for (key => value in map) {
			this.set(key,value);
		}
	}

	public var length(get,never):GoInt;
	function get_length():GoInt {
		return this.iterator == null ? 0 : Lambda.count(this);
	}

	/**
		Returns the current mapping of `key`.
		If no such mapping exists, `null` is returned.
		Note that a check like `map.get(key) == null` can hold for two reasons:
		1. the map has no mapping for `key`
		2. the map has a mapping with a value of `null`
		If it is important to distinguish these cases, `exists()` should be
		used.
		If `key` is `null`, the result is unspecified.
	**/
	@:arrayAccess public inline function get(key:K)
		return this.get(key);

	/**
		Returns true if `key` has a mapping, false otherwise.
		If `key` is `null`, the result is unspecified.
	**/
	public inline function exists(key:K)
		return this.exists(key);

	/**
		Removes the mapping of `key` and returns true if such a mapping existed,
		false otherwise.
		If `key` is `null`, the result is unspecified.
	**/
	public inline function remove(key:K) {
		return this.remove(key);
	}

	/**
		Returns an Iterator over the keys of `this` Map.
		The order of keys is undefined.
	**/
	public inline function keys():Iterator<K> {
		return this.keys();
	}

	/**
		Returns an Iterator over the values of `this` Map.
		The order of values is undefined.
	**/
	public inline function iterator():Iterator<V> {
		return this.iterator();
	}

	/**
		Returns an Iterator over the keys and values of `this` Map.
		The order of values is undefined.
	**/
	public inline function keyValueIterator():KeyValueIterator<K, V> {
		return this.keyValueIterator();
	}

	/**
		Returns a shallow copy of `this` map.
		The order of values is undefined.
	**/
	public inline function __copy__():GoMap<K, V> {
		return cast this.copy();
	}

	/**
		Returns a String representation of `this` Map.
		The exact representation depends on the platform and key-type.
	**/

	/**
		Removes all keys from `this` Map.
	**/
	public inline function clear():Void {
		this.clear();
	}

	@:arrayAccess @:noCompletion public inline function arrayWrite(k:K, v:V):V {
		this.set(k, v);
		return v;
	}

	@:to
    static inline function toGoStringMap<K : GoString, V>(t : IMap<K, V>) : GoStringMap<V> {
        return new GoStringMap<V>();
    }

	@:from static inline function fromStringMap<V>(map:GoStringMap<V>):GoMap<GoString, V> {
		return cast map;
	}

    @:to
    static inline function toIntMap<K : GoInt, V>(t : IMap<K, V>) : IntMap<V> {
        return new IntMap<V>();
    }

	@:from static inline function fromIntMap<V>(map:IntMap<V>):GoMap<GoInt, V> {
		return cast map;
	}
}



class GoStringMap<T> extends BalancedTree<GoString,T> implements haxe.Constraints.IMap<GoString, T> {
	override function compare(k1:GoString, k2:GoString):Int {
		return if (k1 == k2) {
			0;
		}else if (k1 > k2) {
			1;
		}else{
			-1;
		}
	}
	override function remove(key:GoString):Bool {
		return super.remove(key);
	}
}

class GoInt64Map<T> extends BalancedTree<GoInt64,T> {
	override function compare(k1:GoInt64, k2:GoInt64):Int {
		return if (k1 == k2) {
			0;
		}else if (k1 > k2) {
			1;
		}else{
			-1;
		}
	}
}

class GoUInt64Map<T> extends BalancedTree<GoUInt64,T> {

	override function compare(k1:GoUInt64, k2:GoUInt64):Int {
		return if (k1 == k2) {
			0;
		}else if (k1 > k2) {
			1;
		}else{
			-1;
		}
	}
}

class GoFloat64Map<T> extends BalancedTree<GoFloat64,T> {
	override function compare(k1:GoFloat64, k2:GoFloat64):Int {
		return k1 == k2 ? 0 : 1;
	}
}

class GoComplex64Map<T> extends BalancedTree<GoComplex64,T> {
	override function compare(k1:GoComplex64, k2:GoComplex64):Int {
		return k1 == k2 ? 0 : 1;
	}
}

class GoComplex128Map<T> extends BalancedTree<GoComplex128,T> {
	override function compare(k1:GoComplex128, k2:GoComplex128):Int {
		return k1 == k2 ? 0 : 1;
	}
}

class GoFloat32Map<T> extends BalancedTree<GoFloat32,T> {
	override function compare(k1:GoFloat32, k2:GoFloat32):Int {
		return k1 == k2 ? 0 : 1;
	}
}

class GoBoolMap<T> extends BalancedTree<Bool,T> {
	override function compare(k1:Bool, k2:Bool):Int {
		return k1 == k2 ? 0 : 1;
	}
}

class GoSliceMap<T,V> extends BalancedTree<Slice<T>,V> {
	override function compare(k1:Slice<T>, k2:Slice<T>):Int {
		return k1 == k2 ? 0 : 1;
	}
}

class GoArrayMap<T,V> extends BalancedTree<GoArray<T>,V> {
	override function compare(k1:GoArray<T>, k2:GoArray<T>):Int {
		return k1 == k2 ? 0 : 1;
	}
}

class GoPointerMap<T,V> extends BalancedTree<Pointer<T>,V> {
	override function compare(k1:Pointer<T>, k2:Pointer<T>):Int {
		return k1 == k2 ? 0 : 1;
	}
}
class RefMap<T, V> extends BalancedTree<Ref<T>,V> {
	override function compare(k1:Ref<T>, k2:Ref<T>):Int {
		return k1 == k2 ? 0 : 1;
	}
}

// Key needs to 
class GoObjectMap<K,V> extends BalancedTree<K,V> {
	public var t:_Type;
	override function compare(k1:K, k2:K):Int {
		final k1 = new AnyInterface(k1,t);
		final k2 = new AnyInterface(k2,t);
		#if nolinkstd
		return 0;
		#else
		final k1Str = stdgo.fmt.Fmt.sprintf("%v", k1);
		final k2Str = stdgo.fmt.Fmt.sprintf("%v",k2);
		return if (k1Str == k2Str) {
			0;
		}else if (k1Str > k2Str) {
			1;
		}else{
			-1;
		}
		#end
	}
	public inline function __setData__(map:Map<K,V>) {
		this.clear();
		for (key => value in map) {
			this.set(key,value);
		}
	}
}

class GoAnyInterfaceMap<T> extends BalancedTree<AnyInterface,T> {
	override function compare(k1:AnyInterface, k2:AnyInterface):Int {
		#if nolinkstd
		return 0;
		#else
		final k1Str = stdgo.fmt.Fmt.sprintf("%v", k1);
		final k2Str = stdgo.fmt.Fmt.sprintf("%v",k2);
		return if (k1Str == k2Str) {
			0;
		}else if (k1Str > k2Str) {
			1;
		}else{
			-1;
		}
		#end
	}
}