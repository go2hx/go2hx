package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class T__struct_60_asInterface {
    @:embedded
    public dynamic function _typeSlow():stdgo._internal.reflect.Reflect_Type_.Type_ return __self__.value._typeSlow();
    @:embedded
    public dynamic function _typ():stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return __self__.value._typ();
    @:embedded
    public dynamic function _stringNonString():stdgo.GoString return __self__.value._stringNonString();
    @:embedded
    public dynamic function _setRunes(__0:stdgo.Slice<stdgo.GoInt32>):Void __self__.value._setRunes(__0);
    @:embedded
    public dynamic function _send(_x:stdgo._internal.reflect.Reflect_Value.Value, _ok:Bool):Bool return __self__.value._send(_x, _ok);
    @:embedded
    public dynamic function _runes():stdgo.Slice<stdgo.GoInt32> return __self__.value._runes();
    @:embedded
    public dynamic function _ro():stdgo._internal.reflect.Reflect_T_flag.T_flag return __self__.value._ro();
    @:embedded
    public dynamic function _recv(__0:Bool):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } return __self__.value._recv(__0);
    @:embedded
    public dynamic function _pointer():stdgo._internal.unsafe.Unsafe.UnsafePointer return __self__.value._pointer();
    @:embedded
    public dynamic function _panicNotMap():Void __self__.value._panicNotMap();
    @:embedded
    public dynamic function _panicNotBool():Void __self__.value._panicNotBool();
    @:embedded
    public dynamic function _mustBeExportedSlow():Void __self__.value._mustBeExportedSlow();
    @:embedded
    public dynamic function _mustBeExported():Void __self__.value._mustBeExported();
    @:embedded
    public dynamic function _mustBeAssignableSlow():Void __self__.value._mustBeAssignableSlow();
    @:embedded
    public dynamic function _mustBeAssignable():Void __self__.value._mustBeAssignable();
    @:embedded
    public dynamic function _mustBe(__0:stdgo._internal.reflect.Reflect_Kind.Kind):Void __self__.value._mustBe(__0);
    @:embedded
    public dynamic function _lenNonSlice():stdgo.GoInt return __self__.value._lenNonSlice();
    @:embedded
    public dynamic function _kind():stdgo._internal.reflect.Reflect_Kind.Kind return __self__.value._kind();
    @:embedded
    public dynamic function _grow(_skip:stdgo.GoInt):Void __self__.value._grow(_skip);
    @:embedded
    public dynamic function _extendSlice(_skip:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value._extendSlice(_skip);
    @:embedded
    public dynamic function _capNonSlice():stdgo.GoInt return __self__.value._capNonSlice();
    @:embedded
    public dynamic function _call(_op:stdgo.GoString, _in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> return __self__.value._call(_op, _in);
    @:embedded
    public dynamic function _bytesSlow():stdgo.Slice<stdgo.GoUInt8> return __self__.value._bytesSlow();
    @:embedded
    public dynamic function _assignTo(_context:stdgo.GoString, _dst:stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>, _target:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.reflect.Reflect_Value.Value return __self__.value._assignTo(_context, _dst, _target);
    @:embedded
    public dynamic function unsafePointer():stdgo._internal.unsafe.Unsafe.UnsafePointer return __self__.value.unsafePointer();
    @:embedded
    public dynamic function unsafeAddr():stdgo.GoUIntptr return __self__.value.unsafeAddr();
    @:embedded
    public dynamic function uint():stdgo.GoUInt64 return __self__.value.uint();
    @:embedded
    public dynamic function type():stdgo._internal.reflect.Reflect_Type_.Type_ return __self__.value.type();
    @:embedded
    public dynamic function trySend(__0:stdgo._internal.reflect.Reflect_Value.Value):Bool return __self__.value.trySend(__0);
    @:embedded
    public dynamic function tryRecv():{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } return __self__.value.tryRecv();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function slice3(_years:stdgo.GoInt, _months:stdgo.GoInt, _days:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.slice3(_years, _months, _days);
    @:embedded
    public dynamic function slice(__0:stdgo.GoInt, __1:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.slice(__0, __1);
    @:embedded
    public dynamic function setZero():Void __self__.value.setZero();
    @:embedded
    public dynamic function setUint(__0:stdgo.GoUInt64):Void __self__.value.setUint(__0);
    @:embedded
    public dynamic function setString(__0:stdgo.GoString):Void __self__.value.setString(__0);
    @:embedded
    public dynamic function setPointer(_x:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void __self__.value.setPointer(_x);
    @:embedded
    public dynamic function setMapIndex(_key:stdgo._internal.reflect.Reflect_Value.Value, _elem:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value.setMapIndex(_key, _elem);
    @:embedded
    public dynamic function setLen(_skip:stdgo.GoInt):Void __self__.value.setLen(_skip);
    @:embedded
    public dynamic function setIterValue(__0:stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>):Void __self__.value.setIterValue(__0);
    @:embedded
    public dynamic function setIterKey(__0:stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>):Void __self__.value.setIterKey(__0);
    @:embedded
    public dynamic function setInt(__0:stdgo.GoInt64):Void __self__.value.setInt(__0);
    @:embedded
    public dynamic function setFloat(__0:stdgo.GoFloat64):Void __self__.value.setFloat(__0);
    @:embedded
    public dynamic function setComplex(__0:stdgo.GoComplex128):Void __self__.value.setComplex(__0);
    @:embedded
    public dynamic function setCap(_skip:stdgo.GoInt):Void __self__.value.setCap(_skip);
    @:embedded
    public dynamic function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.setBytes(__0);
    @:embedded
    public dynamic function setBool(__0:Bool):Void __self__.value.setBool(__0);
    @:embedded
    public dynamic function set(__0:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value.set(__0);
    @:embedded
    public dynamic function send(__0:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value.send(__0);
    @:embedded
    public dynamic function recv():{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; } return __self__.value.recv();
    @:embedded
    public dynamic function pointer():stdgo.GoUIntptr return __self__.value.pointer();
    @:embedded
    public dynamic function overflowUint(__0:stdgo.GoUInt64):Bool return __self__.value.overflowUint(__0);
    @:embedded
    public dynamic function overflowInt(__0:stdgo.GoInt64):Bool return __self__.value.overflowInt(__0);
    @:embedded
    public dynamic function overflowFloat(__0:stdgo.GoFloat64):Bool return __self__.value.overflowFloat(__0);
    @:embedded
    public dynamic function overflowComplex(__0:stdgo.GoComplex128):Bool return __self__.value.overflowComplex(__0);
    @:embedded
    public dynamic function numMethod():stdgo.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function numField():stdgo.GoInt return __self__.value.numField();
    @:embedded
    public dynamic function methodByName(__0:stdgo.GoString):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.methodByName(__0);
    @:embedded
    public dynamic function method(_skip:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.method(_skip);
    @:embedded
    public dynamic function mapRange():stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter> return __self__.value.mapRange();
    @:embedded
    public dynamic function mapKeys():stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> return __self__.value.mapKeys();
    @:embedded
    public dynamic function mapIndex(__0:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.mapIndex(__0);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo._internal.reflect.Reflect_Kind.Kind return __self__.value.kind();
    @:embedded
    public dynamic function isZero():Bool return __self__.value.isZero();
    @:embedded
    public dynamic function isValid():Bool return __self__.value.isValid();
    @:embedded
    public dynamic function isNil():Bool return __self__.value.isNil();
    @:embedded
    public dynamic function interfaceData():stdgo.GoArray<stdgo.GoUIntptr> return __self__.value.interfaceData();
    @:embedded
    public dynamic function interface_():stdgo.AnyInterface return __self__.value.interface_();
    @:embedded
    public dynamic function int_():stdgo.GoInt64 return __self__.value.int_();
    @:embedded
    public dynamic function index(_skip:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.index(_skip);
    @:embedded
    public dynamic function grow(_skip:stdgo.GoInt):Void __self__.value.grow(_skip);
    @:embedded
    public dynamic function float_():stdgo.GoFloat64 return __self__.value.float_();
    @:embedded
    public dynamic function fieldByNameFunc(_match:stdgo.GoString -> Bool):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.fieldByNameFunc(_match);
    @:embedded
    public dynamic function fieldByName(__0:stdgo.GoString):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.fieldByName(__0);
    @:embedded
    public dynamic function fieldByIndexErr(_index:stdgo.Slice<stdgo.GoInt>):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } return __self__.value.fieldByIndexErr(_index);
    @:embedded
    public dynamic function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.fieldByIndex(_index);
    @:embedded
    public dynamic function field(_skip:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.field(_skip);
    @:embedded
    public dynamic function equal(__0:stdgo._internal.reflect.Reflect_Value.Value):Bool return __self__.value.equal(__0);
    @:embedded
    public dynamic function elem():stdgo._internal.reflect.Reflect_Value.Value return __self__.value.elem();
    @:embedded
    public dynamic function convert(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.convert(_t);
    @:embedded
    public dynamic function complex():stdgo.GoComplex128 return __self__.value.complex();
    @:embedded
    public dynamic function comparable_():Bool return __self__.value.comparable_();
    @:embedded
    public dynamic function close():Void __self__.value.close();
    @:embedded
    public dynamic function clear():Void __self__.value.clear();
    @:embedded
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:embedded
    public dynamic function canUint():Bool return __self__.value.canUint();
    @:embedded
    public dynamic function canSet():Bool return __self__.value.canSet();
    @:embedded
    public dynamic function canInterface():Bool return __self__.value.canInterface();
    @:embedded
    public dynamic function canInt():Bool return __self__.value.canInt();
    @:embedded
    public dynamic function canFloat():Bool return __self__.value.canFloat();
    @:embedded
    public dynamic function canConvert(_t:stdgo._internal.reflect.Reflect_Type_.Type_):Bool return __self__.value.canConvert(_t);
    @:embedded
    public dynamic function canComplex():Bool return __self__.value.canComplex();
    @:embedded
    public dynamic function canAddr():Bool return __self__.value.canAddr();
    @:embedded
    public dynamic function callSlice(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> return __self__.value.callSlice(_in);
    @:embedded
    public dynamic function call(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> return __self__.value.call(_in);
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function bool_():Bool return __self__.value.bool_();
    @:embedded
    public dynamic function addr():stdgo._internal.reflect.Reflect_Value.Value return __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_T__struct_60.T__struct_60>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
