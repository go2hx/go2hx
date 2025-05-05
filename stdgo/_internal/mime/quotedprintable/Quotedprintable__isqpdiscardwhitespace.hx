package stdgo._internal.mime.quotedprintable;
function _isQPDiscardWhitespace(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L58"
        {
            final __value__ = _r;
            if (__value__ == ((10 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32)) || __value__ == ((32 : stdgo.GoInt32)) || __value__ == ((9 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L60"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/quotedprintable/reader.go#L62"
        return false;
    }
