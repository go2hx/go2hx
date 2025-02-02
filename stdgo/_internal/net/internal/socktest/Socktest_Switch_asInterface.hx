package stdgo._internal.net.internal.socktest;
class Switch_asInterface {
    @:keep
    @:tdfield
    public dynamic function getsockoptInt(_s:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.getsockoptInt(_s, _level, _opt);
    @:keep
    @:tdfield
    public dynamic function accept(_s:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.Error; } return @:_0 __self__.value.accept(_s);
    @:keep
    @:tdfield
    public dynamic function listen(_s:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.listen(_s, _backlog);
    @:keep
    @:tdfield
    public dynamic function connect(_s:stdgo.GoInt, _sa:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Error return @:_0 __self__.value.connect(_s, _sa);
    @:keep
    @:tdfield
    public dynamic function close(_s:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.close(_s);
    @:keep
    @:tdfield
    public dynamic function socket(_family:stdgo.GoInt, _sotype:stdgo.GoInt, _proto:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.socket(_family, _sotype, _proto);
    @:keep
    @:tdfield
    public dynamic function _addLocked(_s:stdgo.GoInt, _family:stdgo.GoInt, _sotype:stdgo.GoInt, _proto:stdgo.GoInt):stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Status.Status> return @:_0 __self__.value._addLocked(_s, _family, _sotype, _proto);
    @:keep
    @:tdfield
    public dynamic function _sockso(_s:stdgo.GoInt):stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Status.Status> return @:_0 __self__.value._sockso(_s);
    @:keep
    @:tdfield
    public dynamic function set(_t:stdgo._internal.net.internal.socktest.Socktest_FilterType.FilterType, _f:stdgo._internal.net.internal.socktest.Socktest_Filter.Filter):Void @:_0 __self__.value.set(_t, _f);
    @:keep
    @:tdfield
    public dynamic function sockets():stdgo._internal.net.internal.socktest.Socktest_Sockets.Sockets return @:_0 __self__.value.sockets();
    @:keep
    @:tdfield
    public dynamic function stats():stdgo.Slice<stdgo._internal.net.internal.socktest.Socktest_Stat.Stat> return @:_0 __self__.value.stats();
    @:keep
    @:tdfield
    public dynamic function _init():Void @:_0 __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.internal.socktest.Socktest_SwitchPointer.SwitchPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
