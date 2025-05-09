package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.Header_asInterface) class Header_static_extension {
    @:keep
    @:tdfield
    static public function addressList( _h:stdgo._internal.net.mail.Mail_header.Header, _key:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo._internal.net.mail.Mail_header.Header = _h;
        var _hdr = (_h.get(_key?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L223"
        if (_hdr == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L224"
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>), _1 : stdgo._internal.net.mail.Mail_errheadernotpresent.errHeaderNotPresent };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L226"
        return stdgo._internal.net.mail.Mail_parseaddresslist.parseAddressList(_hdr?.__copy__());
    }
    @:keep
    @:tdfield
    static public function date( _h:stdgo._internal.net.mail.Mail_header.Header):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo._internal.net.mail.Mail_header.Header = _h;
        var _hdr = (_h.get(("Date" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L214"
        if (_hdr == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L215"
            return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo._internal.net.mail.Mail_errheadernotpresent.errHeaderNotPresent };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L217"
        return stdgo._internal.net.mail.Mail_parsedate.parseDate(_hdr?.__copy__());
    }
    @:keep
    @:tdfield
    static public function get( _h:stdgo._internal.net.mail.Mail_header.Header, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.mail.Mail_header.Header = _h;
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L206"
        return (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).get(_key?.__copy__())?.__copy__();
    }
}
