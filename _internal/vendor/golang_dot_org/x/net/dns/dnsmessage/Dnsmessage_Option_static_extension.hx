package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Option_asInterface) class Option_static_extension {
    @:keep
    static public function goString( _o:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option>):stdgo.GoString {
        @:recv var _o:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option> = _o;
        return (((((("dnsmessage.Option{Code: " : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printUint16._printUint16(_o.code)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Data: []byte{" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printByteSlice._printByteSlice(_o.data)?.__copy__() : stdgo.GoString) + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
