package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_nopCloser_asInterface) class T_nopCloser_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo._internal.archive.zip.Zip_t_nopcloser.T_nopCloser):stdgo.Error {
        @:recv var _w:stdgo._internal.archive.zip.Zip_t_nopcloser.T_nopCloser = _w?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.archive.zip.Zip_t_nopcloser.T_nopCloser, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
}
