package stdgo._internal.net.http;
function _stripPassword(_u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        var __tmp__ = _u.user.password(), __132:stdgo.GoString = __tmp__._0, _passSet:Bool = __tmp__._1;
        if (_passSet) {
            return stdgo._internal.strings.Strings_replace.replace((_u.string() : stdgo.GoString)?.__copy__(), ((_u.user.string() : stdgo.GoString) + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_u.user.username() + (":***@" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt))?.__copy__();
        };
        return (_u.string() : stdgo.GoString)?.__copy__();
    }
