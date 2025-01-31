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
function plainAuth(_identity:stdgo.GoString, _username:stdgo.GoString, _password:stdgo.GoString, _host:stdgo.GoString):stdgo._internal.net.smtp.Smtp_Auth.Auth {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth(_identity?.__copy__(), _username?.__copy__(), _password?.__copy__(), _host?.__copy__()) : stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth>));
    }
