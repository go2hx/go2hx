package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_t_relocinfo_static_extension.T_relocInfo_static_extension) class T_relocInfo {
    public var addr : stdgo.GoUInt32 = 0;
    public var symnum : stdgo.GoUInt32 = 0;
    public function new(?addr:stdgo.GoUInt32, ?symnum:stdgo.GoUInt32) {
        if (addr != null) this.addr = addr;
        if (symnum != null) this.symnum = symnum;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_relocInfo(addr, symnum);
    }
}
