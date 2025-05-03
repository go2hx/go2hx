package stdgo._internal.net.smtp;
function cRAMMD5Auth(_username:stdgo.GoString, _secret:stdgo.GoString):stdgo._internal.net.smtp.Smtp_auth.Auth {
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/auth.go#L94"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth(_username?.__copy__(), _secret?.__copy__()) : stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth>));
    }
