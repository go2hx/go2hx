package stdgo.net.netip;
class Addr_static_extension {
    static public function unmarshalBinary(_ip:Addr, _b:Array<std.UInt>):stdgo.Error {
        final _ip = (_ip : stdgo.Ref<stdgo._internal.net.netip.Netip_Addr.Addr>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.unmarshalBinary(_ip, _b);
    }
    static public function marshalBinary(_ip:Addr):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.marshalBinary(_ip);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _marshalBinaryWithTrailingBytes(_ip:Addr, _trailingBytes:StdTypes.Int):Array<std.UInt> {
        final _trailingBytes = (_trailingBytes : stdgo.GoInt);
        return [for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._marshalBinaryWithTrailingBytes(_ip, _trailingBytes)) i];
    }
    static public function unmarshalText(_ip:Addr, _text:Array<std.UInt>):stdgo.Error {
        final _ip = (_ip : stdgo.Ref<stdgo._internal.net.netip.Netip_Addr.Addr>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.unmarshalText(_ip, _text);
    }
    static public function marshalText(_ip:Addr):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.marshalText(_ip);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function stringExpanded(_ip:Addr):String {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.stringExpanded(_ip);
    }
    static public function _appendTo6(_ip:Addr, _ret:Array<std.UInt>):Array<std.UInt> {
        final _ret = ([for (i in _ret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._appendTo6(_ip, _ret)) i];
    }
    static public function _string6(_ip:Addr):String {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._string6(_ip);
    }
    static public function _appendTo4(_ip:Addr, _ret:Array<std.UInt>):Array<std.UInt> {
        final _ret = ([for (i in _ret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._appendTo4(_ip, _ret)) i];
    }
    static public function _string4(_ip:Addr):String {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._string4(_ip);
    }
    static public function appendTo(_ip:Addr, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.appendTo(_ip, _b)) i];
    }
    static public function string(_ip:Addr):String {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.string(_ip);
    }
    static public function prev(_ip:Addr):Addr {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.prev(_ip);
    }
    static public function next(_ip:Addr):Addr {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.next(_ip);
    }
    static public function asSlice(_ip:Addr):Array<std.UInt> {
        return [for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.asSlice(_ip)) i];
    }
    static public function as4(_ip:Addr):haxe.ds.Vector<std.UInt> {
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.as4(_ip)) i]);
    }
    static public function as16(_ip:Addr):haxe.ds.Vector<std.UInt> {
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.as16(_ip)) i]);
    }
    static public function prefix(_ip:Addr, _b:StdTypes.Int):stdgo.Tuple<Prefix, stdgo.Error> {
        final _b = (_b : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.prefix(_ip, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isUnspecified(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isUnspecified(_ip);
    }
    static public function isPrivate(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isPrivate(_ip);
    }
    static public function isGlobalUnicast(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isGlobalUnicast(_ip);
    }
    static public function isLinkLocalMulticast(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isLinkLocalMulticast(_ip);
    }
    static public function isInterfaceLocalMulticast(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isInterfaceLocalMulticast(_ip);
    }
    static public function isMulticast(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isMulticast(_ip);
    }
    static public function isLoopback(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isLoopback(_ip);
    }
    static public function isLinkLocalUnicast(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isLinkLocalUnicast(_ip);
    }
    static public function _hasZone(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._hasZone(_ip);
    }
    static public function _withoutZone(_ip:Addr):Addr {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._withoutZone(_ip);
    }
    static public function withZone(_ip:Addr, _zone:String):Addr {
        final _zone = (_zone : stdgo.GoString);
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.withZone(_ip, _zone);
    }
    static public function unmap(_ip:Addr):Addr {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.unmap(_ip);
    }
    static public function is6(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.is6(_ip);
    }
    static public function is4In6(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.is4In6(_ip);
    }
    static public function is4(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.is4(_ip);
    }
    static public function less(_ip:Addr, _ip2:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.less(_ip, _ip2);
    }
    static public function compare(_ip:Addr, _ip2:Addr):StdTypes.Int {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.compare(_ip, _ip2);
    }
    static public function zone(_ip:Addr):String {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.zone(_ip);
    }
    static public function bitLen(_ip:Addr):StdTypes.Int {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.bitLen(_ip);
    }
    static public function isValid(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.isValid(_ip);
    }
    static public function _isZero(_ip:Addr):Bool {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._isZero(_ip);
    }
    static public function _v6u16(_ip:Addr, _i:std.UInt):std.UInt {
        final _i = (_i : stdgo.GoUInt8);
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._v6u16(_ip, _i);
    }
    static public function _v6(_ip:Addr, _i:std.UInt):std.UInt {
        final _i = (_i : stdgo.GoUInt8);
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._v6(_ip, _i);
    }
    static public function _v4(_ip:Addr, _i:std.UInt):std.UInt {
        final _i = (_i : stdgo.GoUInt8);
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._v4(_ip, _i);
    }
}
