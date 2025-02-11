package stdgo;

import stdgo.AnyInterface;
import haxe.ds.ObjectMap;
import stdgo._internal.internal.reflect.Reflect._Type;
import stdgo.Pointer;
import haxe.Constraints.IMap;
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
	@:op([]) public inline function __set__(key:K, value:V)
		this.set(key, value);

	public inline function __setData__(map:GoMap<K, V>) {
		this.clear();
		for (key => value in map) {
			this.set(key, value);
		}
	}

	public var length(get, never):GoInt;

	function get_length():GoInt {
		return this?.iterator == null ? 0 : Lambda.count(this);
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
	@:arrayAccess public inline function __get__(key:K)
		return this?.get(key);

	/**
		Returns true if `key` has a mapping, false otherwise.
		If `key` is `null`, the result is unspecified.
	**/
	public inline function __exists__(key:K)
		return this.exists(key);

	/**
		Removes the mapping of `key` and returns true if such a mapping existed,
		false otherwise.
		If `key` is `null`, the result is unspecified.
	**/
	public inline function __remove__(key:K) {
		return this.remove(key);
	}

	/**
		Returns an Iterator over the keys of `this` Map.
		The order of keys is undefined.
	**/
	public inline function __keys__():Iterator<K> {
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
	public inline function __clear__():Void {
		this.clear();
	}

	@:from static inline function fromGoUIntptrMap<V>(map:GoUIntptrMap<V>):GoMap<GoUIntptr, V> {
		return cast map;
	}

	@:to
	static inline function toGoUIntptrMap<K:GoUIntptr, V>(t:IMap<K, V>):GoUIntptrMap<V> {
		return new GoUIntptrMap<V>();
	}

	// Needs to be first casting option otherwise GoUIntptr will resolve with unrelated types
	

	// Do not add GoUIntptrMap casting, breaks encoding/json at 
	/*@:to
	static inline function toUIntPtrMap<K:GoUIntptr, V>(t:IMap<K, V>):GoUIntptrMap<V> {
		return new GoUIntptrMap<V>();
	}*/

	@:from static inline function fromGoStringMap<V>(map:GoStringMap<V>):GoMap<GoString, V> {
		return cast map;
	}

	@:to
	static inline function toGoStringMap<K:GoString, V>(t:IMap<K, V>):GoStringMap<V> {
		return new GoStringMap<V>();
	}

	@:from static inline function fromIntMap<V>(map:GoIntMap<V>):GoMap<GoInt, V> {
		return cast map;
	}

	@:to
	static inline function toIntMap<K:GoInt, V>(t:IMap<K, V>):GoIntMap<V> {
		return new GoIntMap<V>();
	}

	@:from static inline function fromInt8Map<V>(map:GoInt8Map<V>):GoMap<GoInt8, V> {
		return cast map;
	}

	@:to
	static inline function toInt8Map<K:GoInt8, V>(t:IMap<K, V>):GoInt8Map<V> {
		return new GoInt8Map<V>();
	}

	@:from static inline function fromInt16Map<V>(map:GoInt16Map<V>):GoMap<GoInt16, V> {
		return cast map;
	}

	@:to
	static inline function toInt16Map<K:GoInt16, V>(t:IMap<K, V>):GoInt16Map<V> {
		return new GoInt16Map<V>();
	}

	@:from static inline function fromInt32Map<V>(map:GoInt32Map<V>):GoMap<GoInt32, V> {
		return cast map;
	}

	@:to
	static inline function toInt32Map<K:GoInt32, V>(t:IMap<K, V>):GoInt32Map<V> {
		return new GoInt32Map<V>();
	}

	@:from static inline function fromUIntMap<V>(map:GoUIntMap<V>):GoMap<GoUInt, V> {
		return cast map;
	}

	@:to
	static inline function toUIntMap<K:GoUInt, V>(t:IMap<K, V>):GoUIntMap<V> {
		return new GoUIntMap<V>();
	}

	@:from static inline function fromUInt8Map<V>(map:GoUInt8Map<V>):GoMap<GoUInt8, V> {
		return cast map;
	}

	@:to
	static inline function toUInt8Map<K:GoUInt8, V>(t:IMap<K, V>):GoUInt8Map<V> {
		return new GoInt8Map<V>();
	}

	@:from static inline function fromUInt16Map<V>(map:GoUInt16Map<V>):GoMap<GoUInt16, V> {
		return cast map;
	}

	@:to
	static inline function toUInt16Map<K:GoUInt16, V>(t:IMap<K, V>):GoUInt16Map<V> {
		return new GoUInt16Map<V>();
	}

	@:from static inline function fromUInt32Map<V>(map:GoUInt32Map<V>):GoMap<GoUInt32, V> {
		return cast map;
	}

	@:to
	static inline function toUInt32Map<K:GoUInt32, V>(t:IMap<K, V>):GoUInt32Map<V> {
		return new GoUInt32Map<V>();
	}

	@:from static inline function fromInt64Map<V>(map:GoInt64Map<V>):GoMap<GoInt64, V> {
		return cast map;
	}

	@:to
	static inline function toInt64Map<K:GoInt64, V>(t:IMap<K, V>):GoInt64Map<V> {
		return new GoInt64Map<V>();
	}

	@:from static inline function fromUInt64Map<V>(map:GoUInt64Map<V>):GoMap<GoUInt64, V> {
		return cast map;
	}

	@:to
	static inline function toUInt64Map<K:GoUInt64, V>(t:IMap<K, V>):GoUInt64Map<V> {
		return new GoUInt64Map<V>();
	}

	@:from static inline function fromFloatMap<V>(map:GoFloatMap<V>):GoMap<GoFloat, V> {
		return cast map;
	}

	@:to
	static inline function toFloatMap<K:GoFloat, V>(t:IMap<K, V>):GoFloatMap<V> {
		return new GoFloatMap<V>();
	}

	@:from static inline function fromFloat64Map<V>(map:GoFloat64Map<V>):GoMap<GoFloat64, V> {
		return cast map;
	}

	@:to
	static inline function toFloat64Map<K:GoFloat64, V>(t:IMap<K, V>):GoFloat64Map<V> {
		return new GoFloat64Map<V>();
	}

	@:from static inline function fromFloat32Map<V>(map:GoFloat32Map<V>):GoMap<GoFloat32, V> {
		return cast map;
	}

	@:to
	static inline function toFloat32Map<K:GoFloat32, V>(t:IMap<K, V>):GoFloat32Map<V> {
		return new GoFloat32Map<V>();
	}

	@:from static inline function fromComplex64Map<V>(map:GoComplex64Map<V>):GoMap<GoComplex64, V> {
		return cast map;
	}

	@:to
	static inline function toComplex64Map<K:GoComplex64, V>(t:IMap<K, V>):GoComplex64Map<V> {
		return new GoComplex64Map<V>();
	}

	@:from static inline function fromComplex128Map<V>(map:GoComplex128Map<V>):GoMap<GoComplex128, V> {
		return cast map;
	}

	@:to
	static inline function toComplex128Map<K:GoComplex128, V>(t:IMap<K, V>):GoComplex128Map<V> {
		return new GoComplex128Map<V>();
	}

	@:from static inline function fromAnyInterfaceMap<V>(map:GoAnyInterfaceMap<V>):GoMap<AnyInterface, V> {
		return cast map;
	}

	@:from static inline function fromBoolMap<V>(map:GoBoolMap<V>):GoMap<Bool, V> {
		return cast map;
	}

	@:to
	static inline function toGoBoolMap<K:Bool, V>(t:IMap<K, V>):GoBoolMap<V> {
		return new GoBoolMap<V>();
	}

	@:to
	static inline function toAnyInterfaceMap<K:AnyInterface, V>(t:IMap<K, V>):GoAnyInterfaceMap<V> {
		return new GoAnyInterfaceMap<V>();
	}
	// Do not add ObjectMap casting, breaks regexp/syntax GoRefMap cast at stdgo/_internal/regexp/syntax/Syntax_T_parser_static_extension.hx  
}
@:dox(hide)
class GoStringMap<T> extends BalancedTree<GoString, T> {
	public var __defaultValue__:Void->T;
	override function compare(k1:GoString, k2:GoString):Int {
		return if (k1 == k2) {
			0;
		} else if (k1 > k2) {
			1;
		} else {
			-1;
		}
	}

	override function remove(key:GoString):Bool {
		return super.remove(key);
	}

	override function get(key:GoString):T {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
	override function set(key:GoString, value:T) {
		super.set(key.__copy__(), value);
	}
}
@:dox(hide)
class GoInt64Map<T> extends BalancedTree<GoInt64, T> {
	public var __defaultValue__:Void->T;
	override function compare(k1:GoInt64, k2:GoInt64):Int {
		return if (k1 == k2) {
			0;
		} else if (k1 > k2) {
			1;
		} else {
			-1;
		}
	}
	override function get(key:GoInt64):T {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
}
@:dox(hide)
typedef GoUInt64Map<T> = GoInt64Map<T>;
/*
class GoUInt64Map<T> extends BalancedTree<GoUInt64, T> {
	public var __defaultValue__:Void->T;
	override function compare(k1:GoUInt64, k2:GoUInt64):Int {
		return if (k1 == k2) {
			0;
		} else if (k1 > k2) {
			1;
		} else {
			-1;
		}
	}
	override function get(key:GoUInt64):T {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
}*/
@:dox(hide)
class GoFloat64Map<T> implements haxe.Constraints.IMap<GoFloat64, T>  {
	public var bt:BalancedTree<GoFloat64, T>;
	public var __defaultValue__:Void->T;
	var root(get,set):TreeNode<GoFloat64, T>;
	function get_root()
		return @:privateAccess bt.root;
	function set_root(root)
		return @:privateAccess bt.root = root;
	public function new () {
		bt = new BalancedTree();
	}
	function compare(k1:GoFloat64, k2:GoFloat64):Int {
		return if (k1 == k2) {
			0;
		} else if (k1 > k2) {
			1;
		} else {
			-1;
		}
	}
	public function set(key,value)
		return bt.set(key,value);
	public function get(key:GoFloat64):T {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}

	public function remove(key)
		return bt.remove(key);

	public function toString()
		return bt.toString();

	public function iterator()
		return bt.iterator();

	public function copy()
		return bt.copy();

	public function exists(key)
		return bt.exists(key);

	public function clear()
		bt.clear();


	public function values():Iterator<T> {
		var ret = [];
		@:privateAccess BalancedTree.iteratorLoop(root, ret);
		return ret.iterator();
	}

	public function keys()
		return bt.keys();

	public function keyValueIterator():KeyValueIterator<GoFloat64, T> {
		//super.iterator();
		return new GoFloat64MapMapKeyValueIterator(this);
	}
	
}

/**
	This Key/Value iterator can be used to iterate across maps.
**/
@:dox(hide)
@:ifFeature("anon_read.keyValueIterator", "dynamic_read.keyValueIterator")
class GoFloat64MapMapKeyValueIterator<V> {
	var map:GoFloat64Map<V>;
	var keys:Iterator<GoFloat64>;
	var values:Iterator<V>;

	public inline function new(map:GoFloat64Map<V>) {
		this.map = map;
		this.keys = map.keys();
		this.values = map.values();
	}

	/**
		See `Iterator.hasNext`
	**/
	public inline function hasNext():Bool {
		return keys.hasNext();
	}

	/**
		See `Iterator.next`
	**/
	public inline function next():{key:GoFloat64, value:V} {
		var key = keys.next();
		var value = values.next();
		return {value: value, key: key};
	}
}


// int
@:dox(hide)
typedef GoInt8Map<T> = IntMap<T>;
@:dox(hide)
typedef GoInt16Map<T> = IntMap<T>;
@:dox(hide)
typedef GoInt32Map<T> = IntMap<T>;
@:dox(hide)
typedef GoIntMap<T> = IntMap<T>;
@:dox(hide)
typedef GoUIntMap<T> = IntMap<T>;
@:dox(hide)
typedef GoUInt8Map<T> = IntMap<T>;
@:dox(hide)
typedef GoUInt16Map<T> = IntMap<T>;
@:dox(hide)
typedef GoUInt32Map<T> = IntMap<T>;
@:dox(hide)
typedef GoFloatMap<T> = GoFloat64Map<T>;
@:dox(hide)
typedef GoFloat32Map<T> = GoFloat64Map<T>;
@:dox(hide)
typedef GoComplex64Map<T> = GoComplex128Map<T>;

// ref
@:dox(hide)
class GoRefMap<K, V> extends BalancedTree<Ref<K>, V> {
	public var __defaultValue__:Void->V;
	override function compare(k1:Ref<K>, k2:Ref<K>):Int {
		return k1 == k2 ? 0 : 1;
	}
	override function get(key:Ref<K>):V {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
}
@:dox(hide)
class GoPointerMap<K, V> extends BalancedTree<Pointer<K>, V> {
	public var __defaultValue__:Void->V;
	override function compare(k1:Pointer<K>, k2:Pointer<K>):Int {
		return k1 == k2 ? 0 : 1;
	}
	override function get(key:Pointer<K>):V {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
}
@:dox(hide)
class GoChanMap<K, V> extends BalancedTree<Chan<K>, V> {
	public var __defaultValue__:Void->V;
	override function compare(k1:Chan<K>, k2:Chan<K>):Int {
		return k1 == k2 ? 0 : 1;
	}
	override function get(key:Chan<K>):V {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
}
@:dox(hide)
class GoUIntptrMap<T> extends BalancedTree<GoUIntptr, T> {
	public var __defaultValue__:Void->T;
	override function compare(k1:GoUIntptr, k2:GoUIntptr):Int {
		return if (k1 == k2) {
			0;
		} else if (k1 > k2) {
			1;
		} else {
			-1;
		}
	}
	override function get(key:GoUIntptr):T {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
}
@:dox(hide)
class GoComplex128Map<T> extends BalancedTree<GoComplex128, T> {
	public var __defaultValue__:Void->T;
	override function compare(k1:GoComplex128, k2:GoComplex128):Int {
		return if (k1 == k2) {
			0;
		} else if (k1 > k2) {
			1;
		} else {
			-1;
		}
	}
	override function get(key:GoComplex128):T {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
}
@:dox(hide)
class GoBoolMap<T> extends BalancedTree<Bool, T> {
	public var __defaultValue__:Void->T;
	override function compare(k1:Bool, k2:Bool):Int {
		return k1 == k2 ? 0 : 1;
	}
	override function get(key:Bool):T {
		var node = root;
		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}
}
@:dox(hide)
class GoArrayMap<T, V> extends BalancedTree<GoArray<T>, V> {
	override function compare(k1:GoArray<T>, k2:GoArray<T>):Int {
		return k1 == k2 ? 0 : 1;
	}
}
@:dox(hide)
class GoObjectMap<K, V> extends GoAnyInterfaceMap<V> {
	public var t:_Type;

	override function set(key:Dynamic, value:V) {
		final key = new AnyInterface(key, t);
		super.set(key,value);
	}

	override function get(key:Dynamic):V {
		final key = new AnyInterface(key, t);
		return super.get(key);
	}

	override function keysLoop(node:TreeNode<Dynamic, V>, acc:Array<Dynamic>) {
		if (node != null) {
			keysLoop(node.left, acc);
			acc.push((node.key : AnyInterface).value);
			keysLoop(node.right, acc);
		}
	}
}
@:dox(hide)
class GoAnyInterfaceMap<V> extends BalancedTree<AnyInterface, V> {
	public var __defaultValue__:Void->V;

	override function compare(k1:AnyInterface, k2:AnyInterface):Int {
		#if nolinkstd
		return 0;
		#else
		if (k1 == k2) {
			return 0;
		}else{
			return -1;
		}
		#end
	}

	override function set(key:AnyInterface, value:V) {
		super.set(key, value);
	}

	override function remove(key:AnyInterface):Bool {
		final gt = @:privateAccess key.type._common();
		switch gt {
			case sliceType(_):
				throw errorString("hash of unhashable type " + new stdgo._internal.internal.reflect.Reflect._Type(gt).string().toString());
			default:
				trace(gt);
		}
		return super.remove(key);
	}

	override function get(key:AnyInterface):V {
		var node = root;
		final gt = @:privateAccess key.type._common();
		switch gt {
			case sliceType(_):
				throw errorString("comparing uncomparable type " + new stdgo._internal.internal.reflect.Reflect._Type(gt).string().toString());
			default:
		}

		while (node != null) {
			var c = compare(key, node.key);
			if (c == 0)
				return node.value;
			if (c < 0)
				node = node.left;
			else
				node = node.right;
		}
		return __defaultValue__();
	}

	override function keysLoop(node:TreeNode<AnyInterface, V>, acc:Array<AnyInterface>) {
		if (node != null) {
			keysLoop(node.left, acc);
			acc.push(node.key);
			keysLoop(node.right, acc);
		}
	}
}

function errorString(s:stdgo.GoString) {
	#if no_linkerr
	return s;
	#else
	return stdgo.Go.toInterface(stdgo.Go.asInterface((s : stdgo._internal.math.bits.Bits_t_errorstring.T_errorString)));
	#end
}


private class IntMap<V> {
	public var __defaultValue__:Void->Dynamic;
	private var map:haxe.ds.IntMap<V>;

	public function new() {
		map = new haxe.ds.IntMap<V>();
	}

	public function get(key:Int):V {
		var v = map.get(key);
		return v == null ? __defaultValue__() : v;
	}
	public function set(key:Int,value:V) {
		map.set(key,value);
	}
	public function copy() {
		return map.copy();
	}

	public function iterator() {
		return map.iterator();
	}

	public function remove(key:Int) {
		return map.remove(key);
	}

	public function keyValueIterator() {
		return map.keyValueIterator();
	}

	public function keys() {
		return map.keys();
	}

	public function exists(key:Int) {
		return map.exists(key);
	}
}
