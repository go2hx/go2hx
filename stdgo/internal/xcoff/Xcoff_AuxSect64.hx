package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.AuxSect64_static_extension) abstract AuxSect64(stdgo._internal.internal.xcoff.Xcoff_AuxSect64.AuxSect64) from stdgo._internal.internal.xcoff.Xcoff_AuxSect64.AuxSect64 to stdgo._internal.internal.xcoff.Xcoff_AuxSect64.AuxSect64 {
    public var xscnlen(get, set) : haxe.UInt64;
    function get_xscnlen():haxe.UInt64 return this.xscnlen;
    function set_xscnlen(v:haxe.UInt64):haxe.UInt64 {
        this.xscnlen = (v : stdgo.GoUInt64);
        return v;
    }
    public var xnreloc(get, set) : haxe.UInt64;
    function get_xnreloc():haxe.UInt64 return this.xnreloc;
    function set_xnreloc(v:haxe.UInt64):haxe.UInt64 {
        this.xnreloc = (v : stdgo.GoUInt64);
        return v;
    }
    public var _pad(get, set) : std.UInt;
    function get__pad():std.UInt return this._pad;
    function set__pad(v:std.UInt):std.UInt {
        this._pad = (v : stdgo.GoUInt8);
        return v;
    }
    public var xauxtype(get, set) : std.UInt;
    function get_xauxtype():std.UInt return this.xauxtype;
    function set_xauxtype(v:std.UInt):std.UInt {
        this.xauxtype = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?xscnlen:haxe.UInt64, ?xnreloc:haxe.UInt64, ?_pad:std.UInt, ?xauxtype:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_AuxSect64.AuxSect64((xscnlen : stdgo.GoUInt64), (xnreloc : stdgo.GoUInt64), (_pad : stdgo.GoUInt8), (xauxtype : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
