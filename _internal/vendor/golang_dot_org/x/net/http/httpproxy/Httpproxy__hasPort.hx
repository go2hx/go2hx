package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
function _hasPort(_s:stdgo.GoString):Bool {
        return (stdgo._internal.strings.Strings_lastIndex.lastIndex(_s?.__copy__(), (":" : stdgo.GoString)) > stdgo._internal.strings.Strings_lastIndex.lastIndex(_s?.__copy__(), ("]" : stdgo.GoString)) : Bool);
    }
