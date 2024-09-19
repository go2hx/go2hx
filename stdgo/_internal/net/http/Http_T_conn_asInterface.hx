package stdgo._internal.net.http;
class T_conn_asInterface {
    @:keep
    public dynamic function _serve(_ctx:stdgo._internal.context.Context_Context.Context):Void __self__.value._serve(_ctx);
    @:keep
    public dynamic function _getState():{ var _0 : stdgo._internal.net.http.Http_ConnState.ConnState; var _1 : stdgo.GoInt64; } return __self__.value._getState();
    @:keep
    public dynamic function _setState(_nc:stdgo._internal.net.Net_Conn.Conn, _state:stdgo._internal.net.http.Http_ConnState.ConnState, _runHook:Bool):Void __self__.value._setState(_nc, _state, _runHook);
    @:keep
    public dynamic function _closeWriteAndWait():Void __self__.value._closeWriteAndWait();
    @:keep
    public dynamic function _close():Void __self__.value._close();
    @:keep
    public dynamic function _finalFlush():Void __self__.value._finalFlush();
    @:keep
    public dynamic function _readRequest(_ctx:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>; var _1 : stdgo.Error; } return __self__.value._readRequest(_ctx);
    @:keep
    public dynamic function _hijackLocked():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } return __self__.value._hijackLocked();
    @:keep
    public dynamic function _hijacked():Bool return __self__.value._hijacked();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_conn.T_conn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
