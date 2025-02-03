package stdgo.reflect;
class Value_static_extension {
    static public function equal(_v:Value, _u:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.equal(_v, _u);
    }
    static public function comparable_(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.comparable_(_v);
    }
    static public function canConvert(_v:Value, _t:Type_):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canConvert(_v, _t);
    }
    static public function convert(_v:Value, _t:Type_):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.convert(_v, _t);
    }
    static public function clear(_v:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.clear(_v);
    }
    static public function grow(_v:Value, _n:StdTypes.Int):Void {
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.grow(_v, _n);
    }
    static public function unsafePointer(_v:Value):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.unsafePointer(_v);
    }
    static public function unsafeAddr(_v:Value):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.unsafeAddr(_v);
    }
    static public function uint(_v:Value):haxe.UInt64 {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.uint(_v);
    }
    static public function canUint(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canUint(_v);
    }
    static public function type(_v:Value):Type_ {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.type(_v);
    }
    static public function trySend(_v:Value, _x:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.trySend(_v, _x);
    }
    static public function tryRecv(_v:Value):stdgo.Tuple<Value, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.tryRecv(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_v:Value):String {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.string(_v);
    }
    static public function slice3(_v:Value, _i:StdTypes.Int, _j:StdTypes.Int, _k:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        final _k = (_k : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.slice3(_v, _i, _j, _k);
    }
    static public function slice(_v:Value, _i:StdTypes.Int, _j:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.slice(_v, _i, _j);
    }
    static public function setString(_v:Value, _x:String):Void {
        final _x = (_x : stdgo.GoString);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setString(_v, _x);
    }
    static public function setPointer(_v:Value, _x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setPointer(_v, _x);
    }
    static public function setUint(_v:Value, _x:haxe.UInt64):Void {
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setUint(_v, _x);
    }
    static public function setMapIndex(_v:Value, _key:Value, _elem:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setMapIndex(_v, _key, _elem);
    }
    static public function setCap(_v:Value, _n:StdTypes.Int):Void {
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setCap(_v, _n);
    }
    static public function setLen(_v:Value, _n:StdTypes.Int):Void {
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setLen(_v, _n);
    }
    static public function setInt(_v:Value, _x:haxe.Int64):Void {
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setInt(_v, _x);
    }
    static public function setFloat(_v:Value, _x:StdTypes.Float):Void {
        final _x = (_x : stdgo.GoFloat64);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setFloat(_v, _x);
    }
    static public function setComplex(_v:Value, _x:stdgo.GoComplex128):Void {
        final _x = (_x : stdgo.GoComplex128);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setComplex(_v, _x);
    }
    static public function setBytes(_v:Value, _x:Array<std.UInt>):Void {
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setBytes(_v, _x);
    }
    static public function setBool(_v:Value, _x:Bool):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setBool(_v, _x);
    }
    static public function set(_v:Value, _x:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.set(_v, _x);
    }
    static public function send(_v:Value, _x:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.send(_v, _x);
    }
    static public function recv(_v:Value):stdgo.Tuple<Value, Bool> {
        return {
            final obj = stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.recv(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pointer(_v:Value):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.pointer(_v);
    }
    static public function overflowUint(_v:Value, _x:haxe.UInt64):Bool {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.overflowUint(_v, _x);
    }
    static public function overflowInt(_v:Value, _x:haxe.Int64):Bool {
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.overflowInt(_v, _x);
    }
    static public function overflowFloat(_v:Value, _x:StdTypes.Float):Bool {
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.overflowFloat(_v, _x);
    }
    static public function overflowComplex(_v:Value, _x:stdgo.GoComplex128):Bool {
        final _x = (_x : stdgo.GoComplex128);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.overflowComplex(_v, _x);
    }
    static public function numField(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.numField(_v);
    }
    static public function methodByName(_v:Value, _name:String):Value {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.methodByName(_v, _name);
    }
    static public function numMethod(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.numMethod(_v);
    }
    static public function method(_v:Value, _i:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.method(_v, _i);
    }
    static public function mapRange(_v:Value):MapIter {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.mapRange(_v);
    }
    static public function setIterValue(_v:Value, _iter:MapIter):Void {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setIterValue(_v, _iter);
    }
    static public function setIterKey(_v:Value, _iter:MapIter):Void {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>);
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setIterKey(_v, _iter);
    }
    static public function mapKeys(_v:Value):Array<Value> {
        return [for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.mapKeys(_v)) i];
    }
    static public function mapIndex(_v:Value, _key:Value):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.mapIndex(_v, _key);
    }
    static public function len(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.len(_v);
    }
    static public function kind(_v:Value):Kind {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.kind(_v);
    }
    static public function setZero(_v:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.setZero(_v);
    }
    static public function isZero(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.isZero(_v);
    }
    static public function isValid(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.isValid(_v);
    }
    static public function isNil(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.isNil(_v);
    }
    static public function interfaceData(_v:Value):haxe.ds.Vector<stdgo.GoUIntptr> {
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.interfaceData(_v)) i]);
    }
    static public function interface_(_v:Value):stdgo.AnyInterface {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.interface_(_v);
    }
    static public function canInterface(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canInterface(_v);
    }
    static public function int_(_v:Value):haxe.Int64 {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.int_(_v);
    }
    static public function canInt(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canInt(_v);
    }
    static public function index(_v:Value, _i:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.index(_v, _i);
    }
    static public function float_(_v:Value):StdTypes.Float {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.float_(_v);
    }
    static public function canFloat(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canFloat(_v);
    }
    static public function fieldByNameFunc(_v:Value, _match:stdgo.GoString -> Bool):Value {
        final _match = _match;
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.fieldByNameFunc(_v, _match);
    }
    static public function fieldByName(_v:Value, _name:String):Value {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.fieldByName(_v, _name);
    }
    static public function fieldByIndexErr(_v:Value, _index:Array<StdTypes.Int>):stdgo.Tuple<Value, stdgo.Error> {
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return {
            final obj = stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.fieldByIndexErr(_v, _index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(_v:Value, _index:Array<StdTypes.Int>):Value {
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.fieldByIndex(_v, _index);
    }
    static public function field(_v:Value, _i:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.field(_v, _i);
    }
    static public function elem(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.elem(_v);
    }
    static public function complex(_v:Value):stdgo.GoComplex128 {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.complex(_v);
    }
    static public function canComplex(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canComplex(_v);
    }
    static public function close(_v:Value):Void {
        stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.close(_v);
    }
    static public function cap(_v:Value):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.cap(_v);
    }
    static public function callSlice(_v:Value, _in:Array<Value>):Array<Value> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        return [for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.callSlice(_v, _in)) i];
    }
    static public function call(_v:Value, _in:Array<Value>):Array<Value> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        return [for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.call(_v, _in)) i];
    }
    static public function canSet(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canSet(_v);
    }
    static public function canAddr(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.canAddr(_v);
    }
    static public function bytes(_v:Value):Array<std.UInt> {
        return [for (i in stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.bytes(_v)) i];
    }
    static public function bool_(_v:Value):Bool {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.bool_(_v);
    }
    static public function addr(_v:Value):Value {
        return stdgo._internal.reflect.Reflect_Value_static_extension.Value_static_extension.addr(_v);
    }
}
