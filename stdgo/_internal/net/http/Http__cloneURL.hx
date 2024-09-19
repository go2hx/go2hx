package stdgo._internal.net.http;
function _cloneURL(_u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> {
        if (_u == null || (_u : Dynamic).__nil__) {
            return null;
        };
        var _u2 = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        {
            var __tmp__ = (_u : stdgo._internal.net.url.Url_URL.URL)?.__copy__();
            (_u2 : stdgo._internal.net.url.Url_URL.URL).scheme = __tmp__.scheme;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).opaque = __tmp__.opaque;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).user = __tmp__.user;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).host = __tmp__.host;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).path = __tmp__.path;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).rawPath = __tmp__.rawPath;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).omitHost = __tmp__.omitHost;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).forceQuery = __tmp__.forceQuery;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).rawQuery = __tmp__.rawQuery;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).fragment = __tmp__.fragment;
            (_u2 : stdgo._internal.net.url.Url_URL.URL).rawFragment = __tmp__.rawFragment;
        };
        if (_u.user != null && ((_u.user : Dynamic).__nil__ == null || !(_u.user : Dynamic).__nil__)) {
            _u2.user = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_Userinfo.Userinfo)) : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>);
            {
                var __tmp__ = (_u.user : stdgo._internal.net.url.Url_Userinfo.Userinfo)?.__copy__();
                (_u2.user : stdgo._internal.net.url.Url_Userinfo.Userinfo)._username = __tmp__._username;
                (_u2.user : stdgo._internal.net.url.Url_Userinfo.Userinfo)._password = __tmp__._password;
                (_u2.user : stdgo._internal.net.url.Url_Userinfo.Userinfo)._passwordSet = __tmp__._passwordSet;
            };
        };
        return _u2;
    }
