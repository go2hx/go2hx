package stdgo._internal.html.template;
function _isJSIdentPart(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L384"
        if (_r == ((36 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L386"
            return true;
        } else if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L388"
            return true;
        } else if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L390"
            return true;
        } else if (_r == ((95 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L392"
            return true;
        } else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L394"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L396"
        return false;
    }
