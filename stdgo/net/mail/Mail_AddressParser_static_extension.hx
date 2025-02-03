package stdgo.net.mail;
class AddressParser_static_extension {
    static public function parseList(_p:AddressParser, _list:String):stdgo.Tuple<Array<Address>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser>);
        final _list = (_list : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_AddressParser_static_extension.AddressParser_static_extension.parseList(_p, _list);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function parse(_p:AddressParser, _address:String):stdgo.Tuple<Address, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser>);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.mail.Mail_AddressParser_static_extension.AddressParser_static_extension.parse(_p, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
