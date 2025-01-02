package stdgo._internal.net.mail;
function parseAddress(_address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>; var _1 : stdgo.Error; } {
        return @:check2r (stdgo.Go.setRef(({ _s : _address?.__copy__() } : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>)._parseSingleAddress();
    }
