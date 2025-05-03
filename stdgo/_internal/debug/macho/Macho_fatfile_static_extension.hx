package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.FatFile_asInterface) class FatFile_static_extension {
    @:keep
    @:tdfield
    static public function close( _ff:stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile>):stdgo.Error {
        @:recv var _ff:stdgo.Ref<stdgo._internal.debug.macho.Macho_fatfile.FatFile> = _ff;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/fat.go#L148"
        if ((@:checkr _ff ?? throw "null pointer dereference")._closer != null) {
            _err = (@:checkr _ff ?? throw "null pointer dereference")._closer.close();
            (@:checkr _ff ?? throw "null pointer dereference")._closer = (null : stdgo._internal.io.Io_closer.Closer);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/fat.go#L152"
        return _err;
    }
}
