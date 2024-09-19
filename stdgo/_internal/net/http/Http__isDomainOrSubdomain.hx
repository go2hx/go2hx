package stdgo._internal.net.http;
function _isDomainOrSubdomain(_sub:stdgo.GoString, _parent:stdgo.GoString):Bool {
        if (_sub == (_parent)) {
            return true;
        };
        if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_sub?.__copy__(), _parent?.__copy__())) {
            return false;
        };
        return _sub[(((_sub.length) - (_parent.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8));
    }
