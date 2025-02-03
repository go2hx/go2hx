package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.FatFile_static_extension) abstract FatFile(stdgo._internal.debug.macho.Macho_FatFile.FatFile) from stdgo._internal.debug.macho.Macho_FatFile.FatFile to stdgo._internal.debug.macho.Macho_FatFile.FatFile {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt32);
        return v;
    }
    public var arches(get, set) : Array<FatArch>;
    function get_arches():Array<FatArch> return [for (i in this.arches) i];
    function set_arches(v:Array<FatArch>):Array<FatArch> {
        this.arches = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?magic:std.UInt, ?arches:Array<FatArch>, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.debug.macho.Macho_FatFile.FatFile((magic : stdgo.GoUInt32), ([for (i in arches) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_FatArch.FatArch>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
