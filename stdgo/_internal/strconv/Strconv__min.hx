package stdgo._internal.strconv;
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L573"
        if ((_a < _b : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L574"
            return _a;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L576"
        return _b;
    }
