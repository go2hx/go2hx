package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_dirWriter_asInterface) class T_dirWriter_static_extension {
    @:keep
    static public function write( _:stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.archive.zip.Zip_T_dirWriter.T_dirWriter = _?.__copy__();
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("zip: write to directory" : stdgo.GoString)) };
    }
}
