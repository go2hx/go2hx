package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.T_relocInfo_static_extension) abstract T_relocInfo(stdgo._internal.debug.macho.Macho_T_relocInfo.T_relocInfo) from stdgo._internal.debug.macho.Macho_T_relocInfo.T_relocInfo to stdgo._internal.debug.macho.Macho_T_relocInfo.T_relocInfo {
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var symnum(get, set) : std.UInt;
    function get_symnum():std.UInt return this.symnum;
    function set_symnum(v:std.UInt):std.UInt {
        this.symnum = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?addr:std.UInt, ?symnum:std.UInt) this = new stdgo._internal.debug.macho.Macho_T_relocInfo.T_relocInfo((addr : stdgo.GoUInt32), (symnum : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
