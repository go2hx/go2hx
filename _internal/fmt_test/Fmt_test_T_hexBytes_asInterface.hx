package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
class T_hexBytes_asInterface {
    @:keep
    public dynamic function scan(_ss:stdgo._internal.fmt.Fmt_ScanState.ScanState, _verb:stdgo.GoInt32):stdgo.Error return __self__.value.scan(_ss, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.fmt_test.Fmt_test_T_hexBytes.T_hexBytes>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
