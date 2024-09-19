package stdgo._internal.internal.xcoff;
@:structInit class ArchiveHeader {
    public var _magic : stdgo.GoString = "";
    public function new(?_magic:stdgo.GoString) {
        if (_magic != null) this._magic = _magic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ArchiveHeader(_magic);
    }
}
