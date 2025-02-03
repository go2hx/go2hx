package stdgo.net;
class T_addrPortUDPAddr_static_extension {
    static public function network(_:T_addrPortUDPAddr):String {
        return stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.network(_);
    }
    public static function unmarshalText(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.unmarshalText(__self__, _0);
    }
    public static function unmarshalBinary(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.unmarshalBinary(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr):String {
        return stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.string(__self__);
    }
    public static function port(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr):std.UInt {
        return stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.port(__self__);
    }
    public static function marshalText(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.marshalText(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function marshalBinary(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.marshalBinary(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function isValid(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr):Bool {
        return stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.isValid(__self__);
    }
    public static function appendTo(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr, _0:Array<std.UInt>):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.appendTo(__self__, _0)) i];
    }
    public static function addr(__self__:stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr):Addr {
        return stdgo._internal.net.Net_T_addrPortUDPAddr_static_extension.T_addrPortUDPAddr_static_extension.addr(__self__);
    }
}
