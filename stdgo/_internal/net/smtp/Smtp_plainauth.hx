package stdgo._internal.net.smtp;
function plainAuth(_identity:stdgo.GoString, _username:stdgo.GoString, _password:stdgo.GoString, _host:stdgo.GoString):stdgo._internal.net.smtp.Smtp_auth.Auth {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth(_identity?.__copy__(), _username?.__copy__(), _password?.__copy__(), _host?.__copy__()) : stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth)) : stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth>));
    }
