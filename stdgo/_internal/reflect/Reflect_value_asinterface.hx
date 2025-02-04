package stdgo._internal.reflect;
class Value_asInterface {
    @:keep
    @:tdfield
    public dynamic function equal(_u:stdgo._internal.reflect.Reflect_value.Value):Bool return @:_0 __self__.value.equal(_u);
    @:keep
    @:tdfield
    public dynamic function comparable_():Bool return @:_0 __self__.value.comparable_();
    @:keep
    @:tdfield
    public dynamic function canConvert(_t:stdgo._internal.reflect.Reflect_type_.Type_):Bool return @:_0 __self__.value.canConvert(_t);
    @:keep
    @:tdfield
    public dynamic function convert(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.convert(_t);
    @:keep
    @:tdfield
    public dynamic function clear():Void @:_0 __self__.value.clear();
    @:keep
    @:tdfield
    public dynamic function grow(_n:stdgo.GoInt):Void @:_0 __self__.value.grow(_n);
    @:keep
    @:tdfield
    public dynamic function unsafePointer():stdgo._internal.unsafe.Unsafe.UnsafePointer return @:_0 __self__.value.unsafePointer();
    @:keep
    @:tdfield
    public dynamic function unsafeAddr():stdgo.GoUIntptr return @:_0 __self__.value.unsafeAddr();
    @:keep
    @:tdfield
    public dynamic function uint():stdgo.GoUInt64 return @:_0 __self__.value.uint();
    @:keep
    @:tdfield
    public dynamic function canUint():Bool return @:_0 __self__.value.canUint();
    @:keep
    @:tdfield
    public dynamic function type():stdgo._internal.reflect.Reflect_type_.Type_ return @:_0 __self__.value.type();
    @:keep
    @:tdfield
    public dynamic function trySend(_x:stdgo._internal.reflect.Reflect_value.Value):Bool return @:_0 __self__.value.trySend(_x);
    @:keep
    @:tdfield
    public dynamic function tryRecv():{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } return @:_0 __self__.value.tryRecv();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function slice3(_i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.slice3(_i, _j, _k);
    @:keep
    @:tdfield
    public dynamic function slice(_i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.slice(_i, _j);
    @:keep
    @:tdfield
    public dynamic function setString(_x:stdgo.GoString):Void @:_0 __self__.value.setString(_x);
    @:keep
    @:tdfield
    public dynamic function setPointer(_x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void @:_0 __self__.value.setPointer(_x);
    @:keep
    @:tdfield
    public dynamic function setUint(_x:stdgo.GoUInt64):Void @:_0 __self__.value.setUint(_x);
    @:keep
    @:tdfield
    public dynamic function setMapIndex(_key:stdgo._internal.reflect.Reflect_value.Value, _elem:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value.setMapIndex(_key, _elem);
    @:keep
    @:tdfield
    public dynamic function setCap(_n:stdgo.GoInt):Void @:_0 __self__.value.setCap(_n);
    @:keep
    @:tdfield
    public dynamic function setLen(_n:stdgo.GoInt):Void @:_0 __self__.value.setLen(_n);
    @:keep
    @:tdfield
    public dynamic function setInt(_x:stdgo.GoInt64):Void @:_0 __self__.value.setInt(_x);
    @:keep
    @:tdfield
    public dynamic function setFloat(_x:stdgo.GoFloat64):Void @:_0 __self__.value.setFloat(_x);
    @:keep
    @:tdfield
    public dynamic function setComplex(_x:stdgo.GoComplex128):Void @:_0 __self__.value.setComplex(_x);
    @:keep
    @:tdfield
    public dynamic function setBytes(_x:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.setBytes(_x);
    @:keep
    @:tdfield
    public dynamic function setBool(_x:Bool):Void @:_0 __self__.value.setBool(_x);
    @:keep
    @:tdfield
    public dynamic function set(_x:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value.set(_x);
    @:keep
    @:tdfield
    public dynamic function send(_x:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value.send(_x);
    @:keep
    @:tdfield
    public dynamic function recv():{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; } return @:_0 __self__.value.recv();
    @:keep
    @:tdfield
    public dynamic function pointer():stdgo.GoUIntptr return @:_0 __self__.value.pointer();
    @:keep
    @:tdfield
    public dynamic function overflowUint(_x:stdgo.GoUInt64):Bool return @:_0 __self__.value.overflowUint(_x);
    @:keep
    @:tdfield
    public dynamic function overflowInt(_x:stdgo.GoInt64):Bool return @:_0 __self__.value.overflowInt(_x);
    @:keep
    @:tdfield
    public dynamic function overflowFloat(_x:stdgo.GoFloat64):Bool return @:_0 __self__.value.overflowFloat(_x);
    @:keep
    @:tdfield
    public dynamic function overflowComplex(_x:stdgo.GoComplex128):Bool return @:_0 __self__.value.overflowComplex(_x);
    @:keep
    @:tdfield
    public dynamic function numField():stdgo.GoInt return @:_0 __self__.value.numField();
    @:keep
    @:tdfield
    public dynamic function methodByName(_name:stdgo.GoString):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.methodByName(_name);
    @:keep
    @:tdfield
    public dynamic function numMethod():stdgo.GoInt return @:_0 __self__.value.numMethod();
    @:keep
    @:tdfield
    public dynamic function method(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.method(_i);
    @:keep
    @:tdfield
    public dynamic function mapRange():stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter> return @:_0 __self__.value.mapRange();
    @:keep
    @:tdfield
    public dynamic function setIterValue(_iter:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>):Void @:_0 __self__.value.setIterValue(_iter);
    @:keep
    @:tdfield
    public dynamic function setIterKey(_iter:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>):Void @:_0 __self__.value.setIterKey(_iter);
    @:keep
    @:tdfield
    public dynamic function mapKeys():stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> return @:_0 __self__.value.mapKeys();
    @:keep
    @:tdfield
    public dynamic function mapIndex(_key:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.mapIndex(_key);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function kind():stdgo._internal.reflect.Reflect_kind.Kind return @:_0 __self__.value.kind();
    @:keep
    @:tdfield
    public dynamic function setZero():Void @:_0 __self__.value.setZero();
    @:keep
    @:tdfield
    public dynamic function isZero():Bool return @:_0 __self__.value.isZero();
    @:keep
    @:tdfield
    public dynamic function isValid():Bool return @:_0 __self__.value.isValid();
    @:keep
    @:tdfield
    public dynamic function isNil():Bool return @:_0 __self__.value.isNil();
    @:keep
    @:tdfield
    public dynamic function interfaceData():stdgo.GoArray<stdgo.GoUIntptr> return @:_0 __self__.value.interfaceData();
    @:keep
    @:tdfield
    public dynamic function interface_():stdgo.AnyInterface return @:_0 __self__.value.interface_();
    @:keep
    @:tdfield
    public dynamic function canInterface():Bool return @:_0 __self__.value.canInterface();
    @:keep
    @:tdfield
    public dynamic function int_():stdgo.GoInt64 return @:_0 __self__.value.int_();
    @:keep
    @:tdfield
    public dynamic function canInt():Bool return @:_0 __self__.value.canInt();
    @:keep
    @:tdfield
    public dynamic function index(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.index(_i);
    @:keep
    @:tdfield
    public dynamic function float_():stdgo.GoFloat64 return @:_0 __self__.value.float_();
    @:keep
    @:tdfield
    public dynamic function canFloat():Bool return @:_0 __self__.value.canFloat();
    @:keep
    @:tdfield
    public dynamic function fieldByNameFunc(_match:stdgo.GoString -> Bool):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.fieldByNameFunc(_match);
    @:keep
    @:tdfield
    public dynamic function fieldByName(_name:stdgo.GoString):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.fieldByName(_name);
    @:keep
    @:tdfield
    public dynamic function fieldByIndexErr(_index:stdgo.Slice<stdgo.GoInt>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } return @:_0 __self__.value.fieldByIndexErr(_index);
    @:keep
    @:tdfield
    public dynamic function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.fieldByIndex(_index);
    @:keep
    @:tdfield
    public dynamic function field(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.field(_i);
    @:keep
    @:tdfield
    public dynamic function elem():stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.elem();
    @:keep
    @:tdfield
    public dynamic function complex():stdgo.GoComplex128 return @:_0 __self__.value.complex();
    @:keep
    @:tdfield
    public dynamic function canComplex():Bool return @:_0 __self__.value.canComplex();
    @:keep
    @:tdfield
    public dynamic function close():Void @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function cap():stdgo.GoInt return @:_0 __self__.value.cap();
    @:keep
    @:tdfield
    public dynamic function callSlice(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> return @:_0 __self__.value.callSlice(_in);
    @:keep
    @:tdfield
    public dynamic function call(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> return @:_0 __self__.value.call(_in);
    @:keep
    @:tdfield
    public dynamic function canSet():Bool return @:_0 __self__.value.canSet();
    @:keep
    @:tdfield
    public dynamic function canAddr():Bool return @:_0 __self__.value.canAddr();
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function bool_():Bool return @:_0 __self__.value.bool_();
    @:keep
    @:tdfield
    public dynamic function addr():stdgo._internal.reflect.Reflect_value.Value return @:_0 __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.reflect.Reflect_valuepointer.ValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
