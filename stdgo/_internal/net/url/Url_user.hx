package stdgo._internal.net.url;
function user(_username:stdgo.GoString):stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo> {
        return (stdgo.Go.setRef((new stdgo._internal.net.url.Url_Userinfo.Userinfo(_username?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.net.url.Url_Userinfo.Userinfo)) : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>);
    }
