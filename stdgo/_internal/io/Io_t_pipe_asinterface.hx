package stdgo._internal.io;
class T_pipe_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeCloseError():stdgo.Error return @:_0 __self__.value._writeCloseError();
    @:keep
    @:tdfield
    public dynamic function _readCloseError():stdgo.Error return @:_0 __self__.value._readCloseError();
    @:keep
    @:tdfield
    public dynamic function _closeWrite(_err:stdgo.Error):stdgo.Error return @:_0 __self__.value._closeWrite(_err);
    @:keep
    @:tdfield
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._write(_b);
    @:keep
    @:tdfield
    public dynamic function _closeRead(_err:stdgo.Error):stdgo.Error return @:_0 __self__.value._closeRead(_err);
    @:keep
    @:tdfield
    public dynamic function _read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.io.Io_t_pipepointer.T_pipePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
