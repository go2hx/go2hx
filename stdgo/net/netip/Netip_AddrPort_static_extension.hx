package stdgo.net.netip;
class AddrPort_static_extension {
    static public function unmarshalBinary(_p:AddrPort, _b:Array<std.UInt>):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.netip.Netip_AddrPort.AddrPort>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.unmarshalBinary(_p, _b);
    }
    static public function marshalBinary(_p:AddrPort):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.marshalBinary(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalText(_p:AddrPort, _text:Array<std.UInt>):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.netip.Netip_AddrPort.AddrPort>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.unmarshalText(_p, _text);
    }
    static public function marshalText(_p:AddrPort):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.marshalText(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function appendTo(_p:AddrPort, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.appendTo(_p, _b)) i];
    }
    static public function string(_p:AddrPort):String {
        return stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.string(_p);
    }
    static public function isValid(_p:AddrPort):Bool {
        return stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.isValid(_p);
    }
    static public function port(_p:AddrPort):std.UInt {
        return stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.port(_p);
    }
    static public function addr(_p:AddrPort):Addr {
        return stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.addr(_p);
    }
}
