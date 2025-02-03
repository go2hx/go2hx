package stdgo.net.netip;
class Prefix_static_extension {
    static public function string(_p:Prefix):String {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.string(_p);
    }
    static public function unmarshalBinary(_p:Prefix, _b:Array<std.UInt>):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.netip.Netip_Prefix.Prefix>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.unmarshalBinary(_p, _b);
    }
    static public function marshalBinary(_p:Prefix):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.marshalBinary(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalText(_p:Prefix, _text:Array<std.UInt>):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.netip.Netip_Prefix.Prefix>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.unmarshalText(_p, _text);
    }
    static public function marshalText(_p:Prefix):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.marshalText(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function appendTo(_p:Prefix, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.appendTo(_p, _b)) i];
    }
    static public function overlaps(_p:Prefix, _o:Prefix):Bool {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.overlaps(_p, _o);
    }
    static public function contains(_p:Prefix, _ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.contains(_p, _ip);
    }
    static public function masked(_p:Prefix):Prefix {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.masked(_p);
    }
    static public function isSingleIP(_p:Prefix):Bool {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.isSingleIP(_p);
    }
    static public function _isZero(_p:Prefix):Bool {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension._isZero(_p);
    }
    static public function isValid(_p:Prefix):Bool {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.isValid(_p);
    }
    static public function bits(_p:Prefix):StdTypes.Int {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.bits(_p);
    }
    static public function addr(_p:Prefix):Addr {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.addr(_p);
    }
}
