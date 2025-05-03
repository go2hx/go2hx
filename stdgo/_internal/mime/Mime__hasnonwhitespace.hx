package stdgo._internal.mime;
function _hasNonWhitespace(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L349"
        for (__0 => _b in _s) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L350"
            {
                final __value__ = _b;
                if (__value__ == ((32 : stdgo.GoInt32)) || __value__ == ((9 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32))) {} else {
                    //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L355"
                    return true;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L358"
        return false;
    }
