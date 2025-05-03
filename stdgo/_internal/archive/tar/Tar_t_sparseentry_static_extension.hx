package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_sparseEntry_asInterface) class T_sparseEntry_static_extension {
    @:keep
    @:tdfield
    static public function _endOffset( _s:stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry):stdgo.GoInt64 {
        @:recv var _s:stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry = _s?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L214"
        return (_s.offset + _s.length_ : stdgo.GoInt64);
    }
}
