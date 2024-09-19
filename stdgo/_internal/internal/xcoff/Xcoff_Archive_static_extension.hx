package stdgo._internal.internal.xcoff;
@:keep @:allow(stdgo._internal.internal.xcoff.Xcoff.Archive_asInterface) class Archive_static_extension {
    @:keep
    static public function getFile( _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>; var _1 : stdgo.Error; } {
        @:recv var _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive> = _arch;
        for (__0 => _mem in _arch.members) {
            if (_mem.memberHeader.name == (_name)) {
                return stdgo._internal.internal.xcoff.Xcoff_newFile.newFile(stdgo.Go.asInterface(_mem._sr));
            };
        };
        return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unknown member %s in archive" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
    }
    @:keep
    static public function close( _a:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive>):stdgo.Error {
        @:recv var _a:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive> = _a;
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_a._closer != null) {
            _err = _a._closer.close();
            _a._closer = (null : stdgo._internal.io.Io_Closer.Closer);
        };
        return _err;
    }
}
