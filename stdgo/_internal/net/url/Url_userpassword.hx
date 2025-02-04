package stdgo._internal.net.url;
function userPassword(_username:stdgo.GoString, _password:stdgo.GoString):stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> {
        return (stdgo.Go.setRef((new stdgo._internal.net.url.Url_userinfo.Userinfo(_username?.__copy__(), _password?.__copy__(), true) : stdgo._internal.net.url.Url_userinfo.Userinfo)) : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
    }
