package stdgo._internal.strconv;
function setOptimize(_b:Bool):Bool {
        var _old = (stdgo._internal.strconv.Strconv__optimize._optimize : Bool);
        stdgo._internal.strconv.Strconv__optimize._optimize = _b;
        //"file:///home/runner/.go/go1.21.3/src/strconv/internal_test.go#L18"
        return _old;
    }
