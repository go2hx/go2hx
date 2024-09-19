package stdgo._internal.net.smtp;
function crammd5auth(_username:stdgo.GoString, _secret:stdgo.GoString):stdgo._internal.net.smtp.Smtp_Auth.Auth {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth(_username?.__copy__(), _secret?.__copy__()) : stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth>));
    }
