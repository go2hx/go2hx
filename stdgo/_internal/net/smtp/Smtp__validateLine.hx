package stdgo._internal.net.smtp;
import stdgo._internal.net.Net;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.encoding.base64.Base64;
function _validateLine(_line:stdgo.GoString):stdgo.Error {
        if (stdgo._internal.strings.Strings_containsAny.containsAny(_line?.__copy__(), ("\n\r" : stdgo.GoString))) {
            return stdgo._internal.errors.Errors_new_.new_(("smtp: A line must not contain CR or LF" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
