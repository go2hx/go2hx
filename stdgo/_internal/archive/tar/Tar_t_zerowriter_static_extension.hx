package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_zeroWriter_asInterface) class T_zeroWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _:stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.archive.tar.Tar_t_zerowriter.T_zeroWriter = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L640"
        for (_i => _c in _b) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L641"
            if (_c != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L642"
                return { _0 : _i, _1 : stdgo._internal.archive.tar.Tar__errwritehole._errWriteHole };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/writer.go#L645"
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
