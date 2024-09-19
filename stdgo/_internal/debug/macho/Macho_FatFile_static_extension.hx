package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.FatFile_asInterface) class FatFile_static_extension {
    @:keep
    static public function close( _ff:stdgo.Ref<stdgo._internal.debug.macho.Macho_FatFile.FatFile>):stdgo.Error {
        @:recv var _ff:stdgo.Ref<stdgo._internal.debug.macho.Macho_FatFile.FatFile> = _ff;
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_ff._closer != null) {
            _err = _ff._closer.close();
            _ff._closer = (null : stdgo._internal.io.Io_Closer.Closer);
        };
        return _err;
    }
}
