package stdgo.net.netip;
@:structInit @:using(stdgo.net.netip.Netip.Addr_static_extension) abstract Addr(stdgo._internal.net.netip.Netip_Addr.Addr) from stdgo._internal.net.netip.Netip_Addr.Addr to stdgo._internal.net.netip.Netip_Addr.Addr {
    public var _addr(get, set) : T_uint128;
    function get__addr():T_uint128 return this._addr;
    function set__addr(v:T_uint128):T_uint128 {
        this._addr = v;
        return v;
    }
    public var _z(get, set) : stdgo._internal.internal.intern.Intern_Value.Value;
    function get__z():stdgo._internal.internal.intern.Intern_Value.Value return this._z;
    function set__z(v:stdgo._internal.internal.intern.Intern_Value.Value):stdgo._internal.internal.intern.Intern_Value.Value {
        this._z = v;
        return v;
    }
    public function new(?_addr:T_uint128, ?_z:stdgo._internal.internal.intern.Intern_Value.Value) this = new stdgo._internal.net.netip.Netip_Addr.Addr(_addr, _z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.netip.Netip.T_parseAddrError_static_extension) abstract T_parseAddrError(stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError) from stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError to stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _at(get, set) : String;
    function get__at():String return this._at;
    function set__at(v:String):String {
        this._at = v;
        return v;
    }
    public function new(?_in:String, ?_msg:String, ?_at:String) this = new stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError(_in, _msg, _at);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.netip.Netip.AddrPort_static_extension) abstract AddrPort(stdgo._internal.net.netip.Netip_AddrPort.AddrPort) from stdgo._internal.net.netip.Netip_AddrPort.AddrPort to stdgo._internal.net.netip.Netip_AddrPort.AddrPort {
    public var _ip(get, set) : Addr;
    function get__ip():Addr return this._ip;
    function set__ip(v:Addr):Addr {
        this._ip = v;
        return v;
    }
    public var _port(get, set) : std.UInt;
    function get__port():std.UInt return this._port;
    function set__port(v:std.UInt):std.UInt {
        this._port = v;
        return v;
    }
    public function new(?_ip:Addr, ?_port:std.UInt) this = new stdgo._internal.net.netip.Netip_AddrPort.AddrPort(_ip, _port);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
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
        this._bitsPlusOne = v;
        return v;
    }
    public function new(?_ip:Addr, ?_bitsPlusOne:std.UInt) this = new stdgo._internal.net.netip.Netip_Prefix.Prefix(_ip, _bitsPlusOne);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.netip.Netip.T_uint128_static_extension) abstract T_uint128(stdgo._internal.net.netip.Netip_T_uint128.T_uint128) from stdgo._internal.net.netip.Netip_T_uint128.T_uint128 to stdgo._internal.net.netip.Netip_T_uint128.T_uint128 {
    public var _hi(get, set) : haxe.UInt64;
    function get__hi():haxe.UInt64 return this._hi;
    function set__hi(v:haxe.UInt64):haxe.UInt64 {
        this._hi = v;
        return v;
    }
    public var _lo(get, set) : haxe.UInt64;
    function get__lo():haxe.UInt64 return this._lo;
    function set__lo(v:haxe.UInt64):haxe.UInt64 {
        this._lo = v;
        return v;
    }
    public function new(?_hi:haxe.UInt64, ?_lo:haxe.UInt64) this = new stdgo._internal.net.netip.Netip_T_uint128.T_uint128(_hi, _lo);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Addr_static_extension {
    static public function unmarshalBinary(_ip:Addr, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.unmarshalBinary(_ip, _b);
    }
    static public function marshalBinary(_ip:Addr):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension.marshalBinary(_ip);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _marshalBinaryWithTrailingBytes(_ip:Addr, _trailingBytes:StdTypes.Int):Array<std.UInt> {
        return [for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._marshalBinaryWithTrailingBytes(_ip, _trailingBytes)) i];
    }
    static public function unmarshalText(_ip:Addr, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        final _ret = ([for (i in _ret) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._appendTo6(_ip, _ret)) i];
    }
    static public function _string6(_ip:Addr):String {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._string6(_ip);
    }
    static public function _appendTo4(_ip:Addr, _ret:Array<std.UInt>):Array<std.UInt> {
        final _ret = ([for (i in _ret) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._appendTo4(_ip, _ret)) i];
    }
    static public function _string4(_ip:Addr):String {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._string4(_ip);
    }
    static public function appendTo(_ip:Addr, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._v6u16(_ip, _i);
    }
    static public function _v6(_ip:Addr, _i:std.UInt):std.UInt {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._v6(_ip, _i);
    }
    static public function _v4(_ip:Addr, _i:std.UInt):std.UInt {
        return stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension._v4(_ip, _i);
    }
}
class T_parseAddrError_static_extension {
    static public function error(_err:T_parseAddrError):String {
        return stdgo._internal.net.netip.Netip_T_parseAddrError_static_extension.T_parseAddrError_static_extension.error(_err);
    }
}
class AddrPort_static_extension {
    static public function unmarshalBinary(_p:AddrPort, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.unmarshalBinary(_p, _b);
    }
    static public function marshalBinary(_p:AddrPort):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.marshalBinary(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalText(_p:AddrPort, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.unmarshalText(_p, _text);
    }
    static public function marshalText(_p:AddrPort):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension.marshalText(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function appendTo(_p:AddrPort, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
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
class Prefix_static_extension {
    static public function string(_p:Prefix):String {
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.string(_p);
    }
    static public function unmarshalBinary(_p:Prefix, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.unmarshalBinary(_p, _b);
    }
    static public function marshalBinary(_p:Prefix):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.marshalBinary(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalText(_p:Prefix, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.unmarshalText(_p, _text);
    }
    static public function marshalText(_p:Prefix):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension.marshalText(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function appendTo(_p:Prefix, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
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
class T_uint128_static_extension {
    static public function _bitsClearedFrom(_u:T_uint128, _bit:std.UInt):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._bitsClearedFrom(_u, _bit);
    }
    static public function _bitsSetFrom(_u:T_uint128, _bit:std.UInt):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._bitsSetFrom(_u, _bit);
    }
    static public function _halves(_u:T_uint128):haxe.ds.Vector<stdgo.Pointer<haxe.UInt64>> {
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._halves(_u)) i]);
    }
    static public function _addOne(_u:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._addOne(_u);
    }
    static public function _subOne(_u:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._subOne(_u);
    }
    static public function _not(_u:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._not(_u);
    }
    static public function _or(_u:T_uint128, _m:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._or(_u, _m);
    }
    static public function _xor(_u:T_uint128, _m:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._xor(_u, _m);
    }
    static public function _and(_u:T_uint128, _m:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._and(_u, _m);
    }
    static public function _isZero(_u:T_uint128):Bool {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._isZero(_u);
    }
}
/**
    Package netip defines an IP address type that's a small value type.
    Building on that [Addr] type, the package also defines [AddrPort] (an
    IP address and a port) and [Prefix] (an IP address and a bit length
    prefix).
    
    Compared to the [net.IP] type, [Addr] type takes less memory, is immutable,
    and is comparable (supports == and being a map key).
**/
class Netip {
    /**
        IPv6LinkLocalAllNodes returns the IPv6 link-local all nodes multicast
        address ff02::1.
    **/
    static public function ipv6LinkLocalAllNodes():Addr {
        return stdgo._internal.net.netip.Netip_ipv6LinkLocalAllNodes.ipv6LinkLocalAllNodes();
    }
    /**
        IPv6LinkLocalAllRouters returns the IPv6 link-local all routers multicast
        address ff02::2.
    **/
    static public function ipv6LinkLocalAllRouters():Addr {
        return stdgo._internal.net.netip.Netip_ipv6LinkLocalAllRouters.ipv6LinkLocalAllRouters();
    }
    /**
        IPv6Loopback returns the IPv6 loopback address ::1.
    **/
    static public function ipv6Loopback():Addr {
        return stdgo._internal.net.netip.Netip_ipv6Loopback.ipv6Loopback();
    }
    /**
        IPv6Unspecified returns the IPv6 unspecified address "::".
    **/
    static public function ipv6Unspecified():Addr {
        return stdgo._internal.net.netip.Netip_ipv6Unspecified.ipv6Unspecified();
    }
    /**
        IPv4Unspecified returns the IPv4 unspecified address "0.0.0.0".
    **/
    static public function ipv4Unspecified():Addr {
        return stdgo._internal.net.netip.Netip_ipv4Unspecified.ipv4Unspecified();
    }
    /**
        AddrFrom4 returns the address of the IPv4 address given by the bytes in addr.
    **/
    static public function addrFrom4(_addr:haxe.ds.Vector<std.UInt>):Addr {
        final _addr = ([for (i in _addr) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_addrFrom4.addrFrom4(_addr);
    }
    /**
        AddrFrom16 returns the IPv6 address given by the bytes in addr.
        An IPv4-mapped IPv6 address is left as an IPv6 address.
        (Use Unmap to convert them if needed.)
    **/
    static public function addrFrom16(_addr:haxe.ds.Vector<std.UInt>):Addr {
        final _addr = ([for (i in _addr) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_addrFrom16.addrFrom16(_addr);
    }
    /**
        ParseAddr parses s as an IP address, returning the result. The string
        s can be in dotted decimal ("192.0.2.1"), IPv6 ("2001:db8::68"),
        or IPv6 with a scoped addressing zone ("fe80::1cc0:3e8c:119f:c2e1%ens18").
    **/
    static public function parseAddr(_s:String):stdgo.Tuple<Addr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_parseAddr.parseAddr(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustParseAddr calls ParseAddr(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
    **/
    static public function mustParseAddr(_s:String):Addr {
        return stdgo._internal.net.netip.Netip_mustParseAddr.mustParseAddr(_s);
    }
    /**
        AddrFromSlice parses the 4- or 16-byte byte slice as an IPv4 or IPv6 address.
        Note that a net.IP can be passed directly as the []byte argument.
        If slice's length is not 4 or 16, AddrFromSlice returns Addr{}, false.
    **/
    static public function addrFromSlice(_slice:Array<std.UInt>):stdgo.Tuple<Addr, Bool> {
        final _slice = ([for (i in _slice) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.netip.Netip_addrFromSlice.addrFromSlice(_slice);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        AddrPortFrom returns an AddrPort with the provided IP and port.
        It does not allocate.
    **/
    static public function addrPortFrom(_ip:Addr, _port:std.UInt):AddrPort {
        return stdgo._internal.net.netip.Netip_addrPortFrom.addrPortFrom(_ip, _port);
    }
    /**
        ParseAddrPort parses s as an AddrPort.
        
        It doesn't do any name resolution: both the address and the port
        must be numeric.
    **/
    static public function parseAddrPort(_s:String):stdgo.Tuple<AddrPort, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_parseAddrPort.parseAddrPort(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustParseAddrPort calls ParseAddrPort(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
    **/
    static public function mustParseAddrPort(_s:String):AddrPort {
        return stdgo._internal.net.netip.Netip_mustParseAddrPort.mustParseAddrPort(_s);
    }
    /**
        PrefixFrom returns a Prefix with the provided IP address and bit
        prefix length.
        
        It does not allocate. Unlike Addr.Prefix, PrefixFrom does not mask
        off the host bits of ip.
        
        If bits is less than zero or greater than ip.BitLen, Prefix.Bits
        will return an invalid value -1.
    **/
    static public function prefixFrom(_ip:Addr, _bits:StdTypes.Int):Prefix {
        return stdgo._internal.net.netip.Netip_prefixFrom.prefixFrom(_ip, _bits);
    }
    /**
        ParsePrefix parses s as an IP address prefix.
        The string can be in the form "192.168.1.0/24" or "2001:db8::/32",
        the CIDR notation defined in RFC 4632 and RFC 4291.
        IPv6 zones are not permitted in prefixes, and an error will be returned if a
        zone is present.
        
        Note that masked address bits are not zeroed. Use Masked for that.
    **/
    static public function parsePrefix(_s:String):stdgo.Tuple<Prefix, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.netip.Netip_parsePrefix.parsePrefix(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustParsePrefix calls ParsePrefix(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
    **/
    static public function mustParsePrefix(_s:String):Prefix {
        return stdgo._internal.net.netip.Netip_mustParsePrefix.mustParsePrefix(_s);
    }
}