package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension) class T_addrPortUDPAddr {
    @:embedded
    public var addrPort : stdgo._internal.net.netip.Netip_addrport.AddrPort = ({} : stdgo._internal.net.netip.Netip_addrport.AddrPort);
    public function new(?addrPort:stdgo._internal.net.netip.Netip_addrport.AddrPort) {
        if (addrPort != null) this.addrPort = addrPort;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var addr(get, never) : () -> stdgo._internal.net.netip.Netip_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_addr():() -> stdgo._internal.net.netip.Netip_addr.Addr return @:check31 (this.addrPort ?? throw "null pointer dereference").addr;
    public var appendTo(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_appendTo():stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this.addrPort ?? throw "null pointer dereference").appendTo;
    public var isValid(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isValid():() -> Bool return @:check31 (this.addrPort ?? throw "null pointer dereference").isValid;
    public var marshalBinary(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_marshalBinary():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.addrPort ?? throw "null pointer dereference").marshalBinary;
    public var marshalText(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_marshalText():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.addrPort ?? throw "null pointer dereference").marshalText;
    public var port(get, never) : () -> stdgo.GoUInt16;
    @:embedded
    @:embeddededffieldsffun
    public function get_port():() -> stdgo.GoUInt16 return @:check31 (this.addrPort ?? throw "null pointer dereference").port;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.addrPort ?? throw "null pointer dereference").string;
    public var unmarshalBinary(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unmarshalBinary():stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error return @:check32 this.addrPort.unmarshalBinary;
    public var unmarshalText(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_unmarshalText():stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error return @:check32 this.addrPort.unmarshalText;
    public function __copy__() {
        return new T_addrPortUDPAddr(addrPort);
    }
}
