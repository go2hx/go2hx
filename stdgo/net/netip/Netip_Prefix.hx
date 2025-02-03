package stdgo.net.netip;
@:structInit @:using(stdgo.net.netip.Netip.Prefix_static_extension) abstract Prefix(stdgo._internal.net.netip.Netip_Prefix.Prefix) from stdgo._internal.net.netip.Netip_Prefix.Prefix to stdgo._internal.net.netip.Netip_Prefix.Prefix {
    public var _ip(get, set) : Addr;
    function get__ip():Addr return this._ip;
    function set__ip(v:Addr):Addr {
        this._ip = v;
        return v;
    }
    public var _bitsPlusOne(get, set) : std.UInt;
    function get__bitsPlusOne():std.UInt return this._bitsPlusOne;
    function set__bitsPlusOne(v:std.UInt):std.UInt {
        this._bitsPlusOne = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_ip:Addr, ?_bitsPlusOne:std.UInt) this = new stdgo._internal.net.netip.Netip_Prefix.Prefix(_ip, (_bitsPlusOne : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
