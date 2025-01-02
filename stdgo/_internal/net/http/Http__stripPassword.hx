package stdgo._internal.net.http;
function _stripPassword(_u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        var __tmp__ = @:check2r (@:checkr _u ?? throw "null pointer dereference").user.password(), __137:stdgo.GoString = __tmp__._0, _passSet:Bool = __tmp__._1;
        if (_passSet) {
            return stdgo._internal.strings.Strings_replace.replace((@:check2r _u.string() : stdgo.GoString)?.__copy__(), ((@:check2r (@:checkr _u ?? throw "null pointer dereference").user.string() : stdgo.GoString) + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (@:check2r (@:checkr _u ?? throw "null pointer dereference").user.username() + (":***@" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt))?.__copy__();
        };
        return (@:check2r _u.string() : stdgo.GoString)?.__copy__();
    }
