package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.T_nestedError_asInterface) class T_nestedError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError> = _e;
        return ((_e._s + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e._err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
