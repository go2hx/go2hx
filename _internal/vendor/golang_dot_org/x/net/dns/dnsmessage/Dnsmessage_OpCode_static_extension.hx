package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.OpCode_asInterface) class OpCode_static_extension {
    @:keep
    static public function goString( _o:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OpCode.OpCode):stdgo.GoString {
        @:recv var _o:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OpCode.OpCode = _o;
        return _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16((_o : stdgo.GoUInt16))?.__copy__();
    }
}
