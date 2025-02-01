package stdgo._internal.net.internal.socktest;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.syscall.Syscall;
class T_stats_asInterface {
    @:keep
    @:tdfield
    public dynamic function _getLocked(_c:stdgo._internal.net.internal.socktest.Socktest_Cookie.Cookie):stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Stat.Stat> return @:_0 __self__.value._getLocked(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.internal.socktest.Socktest_T_statsPointer.T_statsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
