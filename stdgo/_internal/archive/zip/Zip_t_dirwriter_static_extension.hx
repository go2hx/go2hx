package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_dirWriter_asInterface) class T_dirWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _:stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L509"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L510"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L512"
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("zip: write to directory" : stdgo.GoString)) };
    }
}
