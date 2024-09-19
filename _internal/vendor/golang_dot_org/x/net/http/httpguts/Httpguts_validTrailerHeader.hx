package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function validTrailerHeader(_name:stdgo.GoString):Bool {
        _name = stdgo._internal.net.textproto.Textproto_canonicalMIMEHeaderKey.canonicalMIMEHeaderKey(_name?.__copy__())?.__copy__();
        if ((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("If-" : stdgo.GoString)) || (_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__badTrailer._badTrailer[_name] ?? false) : Bool)) {
            return false;
        };
        return true;
    }
