package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_zeroWriter_asInterface) class T_zeroWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _:stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter = _?.__copy__();
        for (_i => _c in _b) {
            if (_c != ((0 : stdgo.GoUInt8))) {
                return { _0 : _i, _1 : stdgo._internal.archive.tar.Tar__errwritehole._errWriteHole };
            };
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
