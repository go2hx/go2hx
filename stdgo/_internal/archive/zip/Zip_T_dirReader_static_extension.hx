package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_dirReader_asInterface) class T_dirReader_static_extension {
    @:keep
    static public function close( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader> = _r;
        return (null : stdgo.Error);
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader>, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader> = _r;
        return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
    }
}