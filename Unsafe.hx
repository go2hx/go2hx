function main() {
	// simple example

	var bc = new BloatClass(17, 42.5);
	trace("new BloatClass", bc.a, bc.b);
	bc.increment();
	trace("post increment", bc.a, bc.b);
	bc.makeUnsafe();
	trace("after BloatClass use of unsafe", bc.a, bc.b);
	bc.increment();
	trace("BloatClass post increment unsafe", bc.a, bc.b);
	trace("BloatClass unsafe memory as hex (0x13=19)", bc.ref.memory.binary.toHex());

	trace(".... now using Haxe interface to reduce code ...");

	var mc = new MyClass(17, 42.5);
	trace("new interface plain", mc.data.a, mc.data.b);
	mc.increment();
	trace("post increment plain", mc.data.a, mc.data.b);
	mc.makeUnsafe();
	trace("after transfer to unsafe", mc.data.a, mc.data.b);
	mc.increment();
	trace("post increment unsafe", mc.data.a, mc.data.b);
	trace("Unsafe memory as hex (0x13=19)", mc.data.ref.memory.binary.toHex());
}


// Elample class to use both plain and unsafe memory in the one code set
class BloatClass {
	public var ref:MemoryRef = null;
	@:isVar public var a(get, set):Int;
	@:isVar public var b(get, set):Float;
    
	public function new(aa:Int, bb:Float) {
		a = aa;
		b = bb;
	}

	function get_a() {
		if (ref == null)
			return a;
		return ref.getInt32(0);
	}

	function set_a(v:Int) {
		if (ref == null)
			a = v;
		else
			ref.setInt32(0, v);
		return v;
	}

	function get_b() {
		if (ref == null)
			return b;
		return ref.getFloat64(8);
	}

	function set_b(v:Float) {
		if (ref == null)
			b = v;
		else
			ref.setFloat64(8, v);
		return v;
	}

	public function makeUnsafe() {
		if (ref == null) {
			var m = new Memory(16);
			var r = new MemoryRef(m, 0);
			r.setInt32(0, a);
			r.setFloat64(8, b);
			ref = r;
		}
	}


	// just to show the data is being changed
	public function increment() {
		a += 1;
		b += 1;
	}
}

// Example classes to use both plain and unsafe memory using an interface

class MyClass {
	public var data:MyData;

	var isPlain:Bool = true;

	public function new(aa:Int, bb:Float) {
		data = new PlainMyData(aa, bb);
	}

	public function makeUnsafe() {
		if (data.ref == null) {
			data = new UnsafeMyData(this.data);
		}
	}

	// just to show the data is being changed
	public function increment() {
		data.a += 1;
		data.b += 1;
	}
}

interface MyData {
	public var ref:MemoryRef;
	// seem to need (get,set) on interface for all to work, which is a shame
	public var a(get, set):Int; // 32 bits
	public var b(get, set):Float; // 64 bits
}

class PlainMyData implements MyData {
	public var ref:MemoryRef = null;
	@:isVar public var a(get, set):Int;
	@:isVar public var b(get, set):Float;

	public function new(aa:Int, bb:Float) {
		a = aa;
		b = bb;
	}

	inline function get_a() {
		return a;
	}

	inline function set_a(v:Int) {
		a = v;
		return v;
	}

	inline function get_b() {
		return b;
	}

	inline function set_b(v:Float) {
		b = v;
		return v;
	}
}

class UnsafeMyData implements MyData {
	public var ref:MemoryRef;
	public var a(get, set):Int;
	public var b(get, set):Float;

	public function new(p:MyData) {
		var m = new Memory(16);
		var r = new MemoryRef(m, 0);
		this.ref = r;
		// transfer over the old data
		set_a(p.a);
		set_b(p.b);
	}

	inline function get_a() {
		return ref.getInt32(0);
	}

	inline function set_a(v:Int) {
		ref.setInt32(0, v);
		return v;
	}

	inline function get_b() {
		return ref.getFloat64(8);
	}

	inline function set_b(v:Float) {
		ref.setFloat64(8, v);
		return v;
	}
}

// unsafe memory implementation...
// a Memory instance will be accessed by multiple MemoryRef instances used inside unsafe.Pointer
class Memory {
	public static var idCount:Int = 0; // how we number each memory instance

	public var id:Int;
	public var len:Int;
	public var binary:haxe.io.Bytes;
	public var shadows:Array<Null<Any>>;

	public function new(len:Int) {
		this.id = ++idCount; // set the id
		this.len = len; // used for bounds checking when uintptr -> unsafe.Pointer
		this.binary = haxe.io.Bytes.alloc(len); // for data that is straightforward bit-patterns
		this.shadows = new Array<Null<Any>>(); // for data that needs to remain opaque in order to emulate Go
	}
}

// probably used by both unsafe.Pointer & uintptr (maybe via unsafe.Pointer)
// also provides access to instance data from classes using unsafe memory
class MemoryRef {
	public var memory:Memory;
	public var offset:Int;

	public function new(m:Memory, o:Int) {
		this.memory = m;
		this.offset = o;
	}

	// to part-implement https://pkg.go.dev/unsafe@go1.24.0#Add
	public inline function Add(len:Int):MemoryRef {
		var newOffset:Int = this.offset + len;
		if (newOffset >= this.memory.len || newOffset < 0)
			throw "unsafe.Add() new address out of bounds";
		return new MemoryRef(this.memory, newOffset);
	}

	// to part-implement unsafe.Pointer -> uintptr
	public function toUintptr():haxe.Int64 {
		var r:haxe.Int64 = memory.id;
		r <<= 32; // put the id in the top 32 bits
		r += offset; // but the offset in the lower 32 bits
		return r;
	}

	// to part-implement uintptr -> unsafe.Pointer
	public function fromUintptr(uip:haxe.Int64):MemoryRef {
		var uipID:haxe.Int64 = uip >>> 32;
		if (uipID != (this.memory.id : haxe.Int64)) {
			throw "cannnot create unsafe.Pointer from uintptr, unknown memory area";
		}
		var uipOffset:haxe.Int64 = uip - (uipID << 32);
		if (uipOffset < (this.offset:haxe.Int64)) {
			throw "cannnot create unsafe.Pointer from uintptr, negative adjustment";
		}
		var newOffset:Int = haxe.Int64.toInt(uipOffset);
		if (newOffset >= this.memory.len || newOffset < 0)
			throw "cannnot create unsafe.Pointer from uintptr, offset out of bounds";
		return new MemoryRef(this.memory, newOffset);
	}

	// adjust the field location with the structure location
	inline function adj(pos:Int):Int {
		return pos + offset;
	}

	// binary access, using Haxe native types

	public inline function getInt8(pos:Int):Int {
		return this.memory.binary.get(adj(pos));
	}

	public function setInt8(pos:Int, v:Int):Void {
		pos = adj(pos);
		this.memory.binary.set(pos, v);
		this.memory.shadows[pos >> 3] = null; // null any matching shadow value
	}

	public inline function getInt16(pos:Int):Int {
		return this.memory.binary.getUInt16(adj(pos));
	}

	public function setInt16(pos:Int, v:Int):Void {
		pos = adj(pos);
		this.memory.binary.setUInt16(pos, v);
		this.memory.shadows[pos >> 3] = null; // null any matching shadow value
	}

	public inline function getInt32(pos:Int):Int {
		return this.memory.binary.getInt32(adj(pos));
	}

	public function setInt32(pos:Int, v:Int):Void {
		pos = adj(pos);
		this.memory.binary.setInt32(pos, v);
		this.memory.shadows[pos >> 3] = null; // null any matching shadow value
	}

	public inline function getFloat32(pos:Int):Float {
		return this.memory.binary.getFloat(adj(pos));
	}

	public function setFloat32(pos:Int, v:Float):Void {
		pos = adj(pos);
		this.memory.binary.setFloat(pos, v);
		this.memory.shadows[pos >> 3] = null; // null any matching shadow value
	}

	public inline function getInt64(pos:Int):haxe.Int64 {
		return this.memory.binary.getInt64(adj(pos));
	}

	public function setInt64(pos:Int, v:haxe.Int64):Void {
		pos = adj(pos);
		this.memory.binary.setInt64(pos, v);
		this.memory.shadows[pos >> 3] = null; // null any matching shadow value
	}

	public inline function getFloat64(pos:Int):Float {
		return this.memory.binary.getDouble(adj(pos));
	}

	public function setFloat64(pos:Int, v:Float):Void {
		pos = adj(pos);
		this.memory.binary.setDouble(pos, v);
		this.memory.shadows[pos >> 3] = null; // null any matching shadow value
	}

	// shadow logic for: string, slice, map, chan, pointer, uintptr ...

	public inline function getShadow(pos:Int):Null<Any> {
		return this.memory.shadows[adj(pos) >> 3];
	}

	public function setShadow(pos:Int, v:Any, binaryRepresentationI64:haxe.Int64):Void {
		pos = adj(pos);
		this.memory.binary.setInt64(pos, binaryRepresentationI64);
		this.memory.shadows[pos >> 3] = v;
	}
}
