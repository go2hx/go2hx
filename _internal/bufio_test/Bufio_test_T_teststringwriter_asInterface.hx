package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
class T_teststringwriter_asInterface {
    @:keep
    public dynamic function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _write:stdgo.GoString, _writeString:stdgo.GoString):Void __self__.value._check(_t, _write, _writeString);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
