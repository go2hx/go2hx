package stdgo.net.mail;
class Header_static_extension {
    static public function addressList(_h:Header, _key:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_Header_static_extension.Header_static_extension.addressList(_h, _key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function date(_h:Header):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.mail.Mail_Header_static_extension.Header_static_extension.date(_h);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function get(_h:Header, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.mail.Mail_Header_static_extension.Header_static_extension.get(_h, _key);
    }
}
