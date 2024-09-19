package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_nopCloser_asInterface) class T_nopCloser_static_extension {
    @:keep
    static public function close( _w:stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser):stdgo.Error {
        @:recv var _w:stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser = _w?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    public static function write( __self__:stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(__0);
}
