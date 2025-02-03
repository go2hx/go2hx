package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.UncommonType_static_extension) abstract UncommonType(stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) from stdgo._internal.internal.abi.Abi_UncommonType.UncommonType to stdgo._internal.internal.abi.Abi_UncommonType.UncommonType {
    public var pkgPath(get, set) : NameOff;
    function get_pkgPath():NameOff return this.pkgPath;
    function set_pkgPath(v:NameOff):NameOff {
        this.pkgPath = v;
        return v;
    }
    public var mcount(get, set) : std.UInt;
    function get_mcount():std.UInt return this.mcount;
    function set_mcount(v:std.UInt):std.UInt {
        this.mcount = (v : stdgo.GoUInt16);
        return v;
    }
    public var xcount(get, set) : std.UInt;
    function get_xcount():std.UInt return this.xcount;
    function set_xcount(v:std.UInt):std.UInt {
        this.xcount = (v : stdgo.GoUInt16);
        return v;
    }
    public var moff(get, set) : std.UInt;
    function get_moff():std.UInt return this.moff;
    function set_moff(v:std.UInt):std.UInt {
        this.moff = (v : stdgo.GoUInt32);
        return v;
    }
    public var __1(get, set) : std.UInt;
    function get___1():std.UInt return this.__1;
    function set___1(v:std.UInt):std.UInt {
        this.__1 = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?pkgPath:NameOff, ?mcount:std.UInt, ?xcount:std.UInt, ?moff:std.UInt, ?__1:std.UInt) this = new stdgo._internal.internal.abi.Abi_UncommonType.UncommonType(pkgPath, (mcount : stdgo.GoUInt16), (xcount : stdgo.GoUInt16), (moff : stdgo.GoUInt32), (__1 : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
