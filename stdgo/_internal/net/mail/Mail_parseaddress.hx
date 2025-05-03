package stdgo._internal.net.mail;
function parseAddress(_address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L239"
        return (stdgo.Go.setRef(({ _s : _address?.__copy__() } : stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_t_addrparser.T_addrParser>)._parseSingleAddress();
    }
