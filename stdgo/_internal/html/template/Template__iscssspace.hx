package stdgo._internal.html.template;
function _isCSSSpace(_b:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L150"
        {
            final __value__ = _b;
            if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L152"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L154"
        return false;
    }
