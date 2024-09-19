package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_FatFile_static_extension.FatFile_static_extension) class FatFile {
    public var magic : stdgo.GoUInt32 = 0;
    public var arches : stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch> = (null : stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch>);
    public var _closer : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public function new(?magic:stdgo.GoUInt32, ?arches:stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch>, ?_closer:stdgo._internal.io.Io_Closer.Closer) {
        if (magic != null) this.magic = magic;
        if (arches != null) this.arches = arches;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FatFile(magic, arches, _closer);
    }
}