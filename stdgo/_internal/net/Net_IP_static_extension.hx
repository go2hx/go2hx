package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.IP_asInterface) class IP_static_extension {
    @:keep
    static public function equal( _ip:stdgo._internal.net.Net_IP.IP, _x:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.equal is not yet implemented";
    @:keep
    static public function unmarshalText( _ip:stdgo.Ref<stdgo._internal.net.Net_IP.IP>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error throw "IP:net.unmarshalText is not yet implemented";
    @:keep
    static public function marshalText( _ip:stdgo._internal.net.Net_IP.IP):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "IP:net.marshalText is not yet implemented";
    @:keep
    static public function string( _ip:stdgo._internal.net.Net_IP.IP):stdgo.GoString throw "IP:net.string is not yet implemented";
    @:keep
    static public function mask( _ip:stdgo._internal.net.Net_IP.IP, _mask:stdgo._internal.net.Net_IPMask.IPMask):stdgo._internal.net.Net_IP.IP throw "IP:net.mask is not yet implemented";
    @:keep
    static public function defaultMask( _ip:stdgo._internal.net.Net_IP.IP):stdgo._internal.net.Net_IPMask.IPMask throw "IP:net.defaultMask is not yet implemented";
    @:keep
    static public function to16( _ip:stdgo._internal.net.Net_IP.IP):stdgo._internal.net.Net_IP.IP throw "IP:net.to16 is not yet implemented";
    @:keep
    static public function to4( _ip:stdgo._internal.net.Net_IP.IP):stdgo._internal.net.Net_IP.IP throw "IP:net.to4 is not yet implemented";
    @:keep
    static public function isGlobalUnicast( _ip:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.isGlobalUnicast is not yet implemented";
    @:keep
    static public function isLinkLocalUnicast( _ip:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.isLinkLocalUnicast is not yet implemented";
    @:keep
    static public function isLinkLocalMulticast( _ip:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.isLinkLocalMulticast is not yet implemented";
    @:keep
    static public function isInterfaceLocalMulticast( _ip:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.isInterfaceLocalMulticast is not yet implemented";
    @:keep
    static public function isMulticast( _ip:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.isMulticast is not yet implemented";
    @:keep
    static public function isPrivate( _ip:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.isPrivate is not yet implemented";
    @:keep
    static public function isLoopback( _ip:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.isLoopback is not yet implemented";
    @:keep
    static public function isUnspecified( _ip:stdgo._internal.net.Net_IP.IP):Bool throw "IP:net.isUnspecified is not yet implemented";
}