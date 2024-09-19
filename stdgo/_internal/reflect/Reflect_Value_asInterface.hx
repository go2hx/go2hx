package stdgo._internal.reflect;
class Value_asInterface {
    @:keep
    public dynamic function equal(_u:stdgo._internal.reflect.Reflect_Value.Value):Bool return __self__.value.equal(_u);
    @:keep
    public dynamic function comparable_():Bool return __self__.value.comparable_();
    @:keep
    public dynamic function canConvert(_t:stdgo._internal.reflect.Reflect_Type_.Type_):Bool return __self__.value.canConvert(_t);
    @:keep
    public dynamic function convert(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.convert(_t);
    @:keep
    public dynamic function clear():Void __self__.value.clear();
    @:keep
    public dynamic function grow(_n:stdgo.GoInt):Void __self__.value.grow(_n);
    @:keep
    public dynamic function unsafePointer():stdgo._internal.unsafe.Unsafe.UnsafePointer return __self__.value.unsafePointer();
    @:keep
    public dynamic function unsafeAddr():stdgo.GoUIntptr return __self__.value.unsafeAddr();
    @:keep
    public dynamic function uint():stdgo.GoUInt64 return __self__.value.uint();
    @:keep
    public dynamic function canUint():Bool return __self__.value.canUint();
    @:keep
    public dynamic function type():stdgo._internal.reflect.Reflect_Type_.Type_ return __self__.value.type();
    @:keep
    public dynamic function trySend(_x:stdgo._internal.reflect.Reflect_Value.Value):Bool return __self__.value.trySend(_x);
    @:keep
    public dynamic function tryRecv():{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } return __self__.value.tryRecv();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function slice3(_i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.slice3(_i, _j, _k);
    @:keep
    public dynamic function slice(_i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.slice(_i, _j);
    @:keep
    public dynamic function setString(_x:stdgo.GoString):Void __self__.value.setString(_x);
    @:keep
    public dynamic function setPointer(_x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void __self__.value.setPointer(_x);
    @:keep
    public dynamic function setUint(_x:stdgo.GoUInt64):Void __self__.value.setUint(_x);
    @:keep
    public dynamic function setMapIndex(_key:stdgo._internal.reflect.Reflect_Value.Value, _elem:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value.setMapIndex(_key, _elem);
    @:keep
    public dynamic function setCap(_n:stdgo.GoInt):Void __self__.value.setCap(_n);
    @:keep
    public dynamic function setLen(_n:stdgo.GoInt):Void __self__.value.setLen(_n);
    @:keep
    public dynamic function setInt(_x:stdgo.GoInt64):Void __self__.value.setInt(_x);
    @:keep
    public dynamic function setFloat(_x:stdgo.GoFloat64):Void __self__.value.setFloat(_x);
    @:keep
    public dynamic function setComplex(_x:stdgo.GoComplex128):Void __self__.value.setComplex(_x);
    @:keep
    public dynamic function setBytes(_x:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.setBytes(_x);
    @:keep
    public dynamic function setBool(_x:Bool):Void __self__.value.setBool(_x);
    @:keep
    public dynamic function set(_x:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value.set(_x);
    @:keep
    public dynamic function send(_x:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value.send(_x);
    @:keep
    public dynamic function recv():{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } return __self__.value.recv();
    @:keep
    public dynamic function pointer():stdgo.GoUIntptr return __self__.value.pointer();
    @:keep
    public dynamic function overflowUint(_x:stdgo.GoUInt64):Bool return __self__.value.overflowUint(_x);
    @:keep
    public dynamic function overflowInt(_x:stdgo.GoInt64):Bool return __self__.value.overflowInt(_x);
    @:keep
    public dynamic function overflowFloat(_x:stdgo.GoFloat64):Bool return __self__.value.overflowFloat(_x);
    @:keep
    public dynamic function overflowComplex(_x:stdgo.GoComplex128):Bool return __self__.value.overflowComplex(_x);
    @:keep
    public dynamic function numField():stdgo.GoInt return __self__.value.numField();
    @:keep
    public dynamic function methodByName(_name:stdgo.GoString):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.methodByName(_name);
    @:keep
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:keep
    public dynamic function method(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.method(_i);
    @:keep
    public dynamic function mapRange():stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter> return __self__.value.mapRange();
    @:keep
    public dynamic function setIterValue(_iter:stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>):Void __self__.value.setIterValue(_iter);
    @:keep
    public dynamic function setIterKey(_iter:stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>):Void __self__.value.setIterKey(_iter);
    @:keep
    public dynamic function mapKeys():stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> return __self__.value.mapKeys();
    @:keep
    public dynamic function mapIndex(_key:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.mapIndex(_key);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function kind():stdgo._internal.reflect.Reflect_Kind.Kind return __self__.value.kind();
    @:keep
    public dynamic function setZero():Void __self__.value.setZero();
    @:keep
    public dynamic function isZero():Bool return __self__.value.isZero();
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    @:keep
    public dynamic function isNil():Bool return __self__.value.isNil();
    @:keep
    public dynamic function interfaceData():stdgo.GoArray<stdgo.GoUIntptr> return __self__.value.interfaceData();
    @:keep
    public dynamic function interface_():stdgo.AnyInterface return __self__.value.interface_();
    @:keep
    public dynamic function canInterface():Bool return __self__.value.canInterface();
    @:keep
    public dynamic function int_():stdgo.GoInt64 return __self__.value.int_();
    @:keep
    public dynamic function canInt():Bool return __self__.value.canInt();
    @:keep
    public dynamic function index(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.index(_i);
    @:keep
    public dynamic function float_():stdgo.GoFloat64 return __self__.value.float_();
    @:keep
    public dynamic function canFloat():Bool return __self__.value.canFloat();
    @:keep
    public dynamic function fieldByNameFunc(_match:stdgo.GoString -> Bool):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.fieldByNameFunc(_match);
    @:keep
    public dynamic function fieldByName(_name:stdgo.GoString):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.fieldByName(_name);
    @:keep
    public dynamic function fieldByIndexErr(_index:stdgo.Slice<stdgo.GoInt>):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } return __self__.value.fieldByIndexErr(_index);
    @:keep
    public dynamic function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.fieldByIndex(_index);
    @:keep
    public dynamic function field(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.field(_i);
    @:keep
    public dynamic function elem():stdgo._internal.reflect.Reflect_Value.Value return __self__.value.elem();
    @:keep
    public dynamic function complex():stdgo.GoComplex128 return __self__.value.complex();
    @:keep
    public dynamic function canComplex():Bool return __self__.value.canComplex();
    @:keep
    public dynamic function close():Void __self__.value.close();
    @:keep
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:keep
    public dynamic function callSlice(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> return __self__.value.callSlice(_in);
    @:keep
    public dynamic function call(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> return __self__.value.call(_in);
    @:keep
    public dynamic function canSet():Bool return __self__.value.canSet();
    @:keep
    public dynamic function canAddr():Bool return __self__.value.canAddr();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:keep
    public dynamic function bool_():Bool return __self__.value.bool_();
    @:keep
    public dynamic function addr():stdgo._internal.reflect.Reflect_Value.Value return __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.reflect.Reflect_Value.Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
