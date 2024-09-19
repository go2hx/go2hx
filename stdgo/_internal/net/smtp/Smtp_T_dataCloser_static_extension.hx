package stdgo._internal.net.smtp;
@:keep @:allow(stdgo._internal.net.smtp.Smtp.T_dataCloser_asInterface) class T_dataCloser_static_extension {
    @:keep
    static public function close( _d:stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser> = _d;
        _d.writeCloser.close();
        var __tmp__ = _d._c.text.readResponse((250 : stdgo.GoInt)), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:embedded
    public static function write( __self__:stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
}
