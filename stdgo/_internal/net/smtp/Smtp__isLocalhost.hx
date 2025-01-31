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
function _isLocalhost(_name:stdgo.GoString):Bool {
        return ((_name == (("localhost" : stdgo.GoString)) || _name == (("127.0.0.1" : stdgo.GoString)) : Bool) || (_name == ("::1" : stdgo.GoString)) : Bool);
    }
