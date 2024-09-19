package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.AddressParser_asInterface) class AddressParser_static_extension {
    @:keep
    static public function parseList( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser>, _list:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser> = _p;
        return (stdgo.Go.setRef(({ _s : _list?.__copy__(), _dec : _p.wordDecoder } : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>)._parseAddressList();
    }
    @:keep
    static public function parse( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser>, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser> = _p;
        return (stdgo.Go.setRef(({ _s : _address?.__copy__(), _dec : _p.wordDecoder } : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>)._parseSingleAddress();
    }
}
