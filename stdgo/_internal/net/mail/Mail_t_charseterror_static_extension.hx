package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.T_charsetError_asInterface) class T_charsetError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.mail.Mail_t_charseterror.T_charsetError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.mail.Mail_t_charseterror.T_charsetError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("charset not supported: %q" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoString)))?.__copy__();
    }
}
