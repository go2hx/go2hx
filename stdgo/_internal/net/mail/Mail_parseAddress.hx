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
function parseAddress(_address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>; var _1 : stdgo.Error; } {
        return @:check2r (stdgo.Go.setRef(({ _s : _address?.__copy__() } : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser)) : stdgo.Ref<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>)._parseSingleAddress();
    }
