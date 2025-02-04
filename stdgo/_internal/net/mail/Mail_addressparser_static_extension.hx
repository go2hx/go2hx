package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.AddressParser_asInterface) class AddressParser_static_extension {
    @:keep
    @:tdfield
    static public function parseList( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_addressparser.AddressParser>, _list:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_addressparser.AddressParser> = _p;
        return @:check2r (stdgo.Go.setRef(({ _s : _list?.__copy__(), _dec : (@:checkr _p ?? throw "null pointer dereference").wordDecoder } : stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>)._parseAddressList();
    }
    @:keep
    @:tdfield
    static public function parse( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_addressparser.AddressParser>, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_addressparser.AddressParser> = _p;
        return @:check2r (stdgo.Go.setRef(({ _s : _address?.__copy__(), _dec : (@:checkr _p ?? throw "null pointer dereference").wordDecoder } : stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>)._parseSingleAddress();
    }
}
