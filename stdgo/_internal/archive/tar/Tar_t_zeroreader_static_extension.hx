package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_zeroReader_asInterface) class T_zeroReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.archive.tar.Tar_t_zeroreader.T_zeroReader, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.archive.tar.Tar_t_zeroreader.T_zeroReader = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L814"
        for (_i => _ in _b) {
            _b[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L817"
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
