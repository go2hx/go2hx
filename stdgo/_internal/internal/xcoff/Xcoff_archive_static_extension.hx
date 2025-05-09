package stdgo._internal.internal.xcoff;
@:keep @:allow(stdgo._internal.internal.xcoff.Xcoff.Archive_asInterface) class Archive_static_extension {
    @:keep
    @:tdfield
    static public function getFile( _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>; var _1 : stdgo.Error; } {
        @:recv var _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive> = _arch;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L220"
        for (__0 => _mem in (@:checkr _arch ?? throw "null pointer dereference").members) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L221"
            if ((@:checkr _mem ?? throw "null pointer dereference").memberHeader.name == (_name)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L222"
                return stdgo._internal.internal.xcoff.Xcoff_newfile.newFile(stdgo.Go.asInterface((@:checkr _mem ?? throw "null pointer dereference")._sr));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L225"
        return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unknown member %s in archive" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
    }
    @:keep
    @:tdfield
    static public function close( _a:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive>):stdgo.Error {
        @:recv var _a:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive> = _a;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L95"
        if ((@:checkr _a ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _a ?? throw "null pointer dereference")._closer.close();
            (@:checkr _a ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L99"
        return _err;
    }
}
