package stdgo._internal.strconv;
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L580"
        if ((_a > _b : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L581"
            return _a;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L583"
        return _b;
    }
