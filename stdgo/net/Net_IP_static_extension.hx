package stdgo.net;
class IP_static_extension {
    static public function equal(_ip:IP, _x:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.equal(_ip, _x);
    }
    static public function unmarshalText(_ip:IP, _text:Array<std.UInt>):stdgo.Error {
        final _ip = (_ip : stdgo.Ref<stdgo._internal.net.Net_IP.IP>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.unmarshalText(_ip, _text);
    }
    static public function marshalText(_ip:IP):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_IP_static_extension.IP_static_extension.marshalText(_ip);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_ip:IP):String {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.string(_ip);
    }
    static public function mask(_ip:IP, _mask:IPMask):IP {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.mask(_ip, _mask);
    }
    static public function defaultMask(_ip:IP):IPMask {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.defaultMask(_ip);
    }
    static public function to16(_ip:IP):IP {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.to16(_ip);
    }
    static public function to4(_ip:IP):IP {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.to4(_ip);
    }
    static public function isGlobalUnicast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isGlobalUnicast(_ip);
    }
    static public function isLinkLocalUnicast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isLinkLocalUnicast(_ip);
    }
    static public function isLinkLocalMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isLinkLocalMulticast(_ip);
    }
    static public function isInterfaceLocalMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isInterfaceLocalMulticast(_ip);
    }
    static public function isMulticast(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isMulticast(_ip);
    }
    static public function isPrivate(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isPrivate(_ip);
    }
    static public function isLoopback(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isLoopback(_ip);
    }
    static public function isUnspecified(_ip:IP):Bool {
        return stdgo._internal.net.Net_IP_static_extension.IP_static_extension.isUnspecified(_ip);
    }
}
