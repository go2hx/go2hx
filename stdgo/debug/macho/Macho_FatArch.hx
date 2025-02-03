package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.FatArch_static_extension) abstract FatArch(stdgo._internal.debug.macho.Macho_FatArch.FatArch) from stdgo._internal.debug.macho.Macho_FatArch.FatArch to stdgo._internal.debug.macho.Macho_FatArch.FatArch {
    public var fatArchHeader(get, set) : FatArchHeader;
    function get_fatArchHeader():FatArchHeader return this.fatArchHeader;
    function set_fatArchHeader(v:FatArchHeader):FatArchHeader {
        this.fatArchHeader = v;
        return v;
    }
    public var file(get, set) : File;
    function get_file():File return this.file;
    function set_file(v:File):File {
        this.file = (v : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        return v;
    }
    public function new(?fatArchHeader:FatArchHeader, ?file:File) this = new stdgo._internal.debug.macho.Macho_FatArch.FatArch(fatArchHeader, (file : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
