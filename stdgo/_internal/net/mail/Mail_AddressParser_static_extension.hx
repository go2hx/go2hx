package stdgo._internal.net.mail;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.net.mail.Mail.AddressParser_asInterface) class AddressParser_static_extension {
    @:keep
    @:tdfield
    static public function parseList( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser>, _list:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser> = _p;
        return @:check2r (stdgo.Go.setRef(({ _s : _list?.__copy__(), _dec : (@:checkr _p ?? throw "null pointer dereference").wordDecoder } : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>)._parseAddressList();
    }
    @:keep
    @:tdfield
    static public function parse( _p:stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser>, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.mail.Mail_AddressParser.AddressParser> = _p;
        return @:check2r (stdgo.Go.setRef(({ _s : _address?.__copy__(), _dec : (@:checkr _p ?? throw "null pointer dereference").wordDecoder } : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>)._parseSingleAddress();
    }
}
