package stdgo._internal.net.http;
function _cloneURL(_u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> {
        if ((_u == null || (_u : Dynamic).__nil__)) {
            return null;
        };
        var _u2 = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        {
            var __tmp__ = (_u : stdgo._internal.net.url.Url_URL.URL)?.__copy__();
            var x = (_u2 : stdgo._internal.net.url.Url_URL.URL);
            x.scheme = __tmp__?.scheme;
            x.opaque = __tmp__?.opaque;
            x.user = __tmp__?.user;
            x.host = __tmp__?.host;
            x.path = __tmp__?.path;
            x.rawPath = __tmp__?.rawPath;
            x.omitHost = __tmp__?.omitHost;
            x.forceQuery = __tmp__?.forceQuery;
            x.rawQuery = __tmp__?.rawQuery;
            x.fragment = __tmp__?.fragment;
            x.rawFragment = __tmp__?.rawFragment;
        };
        if (((@:checkr _u ?? throw "null pointer dereference").user != null && (((@:checkr _u ?? throw "null pointer dereference").user : Dynamic).__nil__ == null || !((@:checkr _u ?? throw "null pointer dereference").user : Dynamic).__nil__))) {
            (@:checkr _u2 ?? throw "null pointer dereference").user = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_Userinfo.Userinfo)) : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>);
            {
                var __tmp__ = ((@:checkr _u ?? throw "null pointer dereference").user : stdgo._internal.net.url.Url_Userinfo.Userinfo)?.__copy__();
                var x = ((@:checkr _u2 ?? throw "null pointer dereference").user : stdgo._internal.net.url.Url_Userinfo.Userinfo);
                x._username = __tmp__?._username;
                x._password = __tmp__?._password;
                x._passwordSet = __tmp__?._passwordSet;
            };
        };
        return _u2;
    }
