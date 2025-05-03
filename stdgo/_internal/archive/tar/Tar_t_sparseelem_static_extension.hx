package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_sparseElem_asInterface) class T_sparseElem_static_extension {
    @:keep
    @:tdfield
    static public function _length( _s:stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem = _s;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L307"
        return ((_s.__slice__((12 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem).__slice__(0, (12 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem);
    }
    @:keep
    @:tdfield
    static public function _offset( _s:stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem = _s;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L306"
        return ((_s.__slice__((0 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem).__slice__(0, (12 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_t_sparseelem.T_sparseElem);
    }
}
