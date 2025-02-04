package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_addrPortUDPAddr_asInterface) class T_addrPortUDPAddr_static_extension {
    @:keep
    @:tdfield
    static public function network( _:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo.GoString throw "T_addrPortUDPAddr:net.network is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function unmarshalText( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_5 __self__.unmarshalText(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function unmarshalBinary( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_5 __self__.unmarshalBinary(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function port( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo.GoUInt16 return @:_5 __self__.port();
    @:embedded
    @:embeddededffieldsffun
    public static function marshalText( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.marshalText();
    @:embedded
    @:embeddededffieldsffun
    public static function marshalBinary( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.marshalBinary();
    @:embedded
    @:embeddededffieldsffun
    public static function isValid( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):Bool return @:_5 __self__.isValid();
    @:embedded
    @:embeddededffieldsffun
    public static function appendTo( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.appendTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function addr( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo._internal.net.netip.Netip_addr.Addr return @:_5 __self__.addr();
}
