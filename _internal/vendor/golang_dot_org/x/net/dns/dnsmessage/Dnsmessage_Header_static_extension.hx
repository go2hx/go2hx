package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Header_asInterface) class Header_static_extension {
    @:keep
    static public function goString( _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header> = _m;
        return (((((((((((((((((((((((("dnsmessage.Header{ID: " : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16(_m.id)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Response: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printBool._printBool(_m.response)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("OpCode: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _m.opCode.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Authoritative: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printBool._printBool(_m.authoritative)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Truncated: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printBool._printBool(_m.truncated)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("RecursionDesired: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printBool._printBool(_m.recursionDesired)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("RecursionAvailable: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printBool._printBool(_m.recursionAvailable)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("RCode: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _m.rcode.goString()?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _pack( _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } {
        @:recv var _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header> = _m;
        var _id = (0 : stdgo.GoUInt16), _bits = (0 : stdgo.GoUInt16);
        _id = _m.id;
        _bits = (((_m.opCode : stdgo.GoUInt16) << (11i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_m.rcode : stdgo.GoUInt16) : stdgo.GoUInt16);
        if (_m.recursionAvailable) {
            _bits = (_bits | ((128 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        if (_m.recursionDesired) {
            _bits = (_bits | ((256 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        if (_m.truncated) {
            _bits = (_bits | ((512 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        if (_m.authoritative) {
            _bits = (_bits | ((1024 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        if (_m.response) {
            _bits = (_bits | ((32768 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        if (_m.authenticData) {
            _bits = (_bits | ((32 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        if (_m.checkingDisabled) {
            _bits = (_bits | ((16 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        return { _0 : _id, _1 : _bits };
    }
}
