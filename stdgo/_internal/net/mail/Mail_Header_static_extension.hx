package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.Header_asInterface) class Header_static_extension {
    @:keep
    static public function addressList( _h:stdgo._internal.net.mail.Mail_Header.Header, _key:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo._internal.net.mail.Mail_Header.Header = _h;
        var _hdr = (_h.get(_key?.__copy__())?.__copy__() : stdgo.GoString);
        if (_hdr == (stdgo.Go.str())) {
            return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>), _1 : stdgo._internal.net.mail.Mail_errHeaderNotPresent.errHeaderNotPresent };
        };
        return stdgo._internal.net.mail.Mail_parseAddressList.parseAddressList(_hdr?.__copy__());
    }
    @:keep
    static public function date( _h:stdgo._internal.net.mail.Mail_Header.Header):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo._internal.net.mail.Mail_Header.Header = _h;
        var _hdr = (_h.get(("Date" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_hdr == (stdgo.Go.str())) {
            return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo._internal.net.mail.Mail_errHeaderNotPresent.errHeaderNotPresent };
        };
        return stdgo._internal.net.mail.Mail_parseDate.parseDate(_hdr?.__copy__());
    }
    @:keep
    static public function get( _h:stdgo._internal.net.mail.Mail_Header.Header, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.mail.Mail_Header.Header = _h;
        return (_h : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader).get(_key?.__copy__())?.__copy__();
    }
}
