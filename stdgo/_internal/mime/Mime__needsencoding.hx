package stdgo._internal.mime;
function _needsEncoding(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L43"
        for (__0 => _b in _s) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L44"
            if (((((_b < (32 : stdgo.GoInt32) : Bool) || (_b > (126 : stdgo.GoInt32) : Bool) : Bool)) && (_b != (9 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L45"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L48"
        return false;
    }
