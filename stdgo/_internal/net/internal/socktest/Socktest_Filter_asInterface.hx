package stdgo._internal.net.internal.socktest;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.syscall.Syscall;
class Filter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _apply(_st:stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Status.Status>):{ var _0 : stdgo._internal.net.internal.socktest.Socktest_AfterFilter.AfterFilter; var _1 : stdgo.Error; } return @:_0 __self__.value._apply(_st);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.internal.socktest.Socktest_FilterPointer.FilterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
