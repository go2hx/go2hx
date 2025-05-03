package stdgo._internal.net.url;
function user(_username:stdgo.GoString):stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L379"
        return (stdgo.Go.setRef((new stdgo._internal.net.url.Url_userinfo.Userinfo(_username?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), false) : stdgo._internal.net.url.Url_userinfo.Userinfo)) : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
    }
