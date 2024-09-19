package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_nopCloser_asInterface) class T_nopCloser_static_extension {
    @:keep
    static public function close( _:stdgo._internal.io.Io_T_nopCloser.T_nopCloser):stdgo.Error {
        @:recv var _:stdgo._internal.io.Io_T_nopCloser.T_nopCloser = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    public static function read( __self__:stdgo._internal.io.Io_T_nopCloser.T_nopCloser, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
}
