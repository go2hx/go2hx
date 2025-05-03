package stdgo._internal.strconv;
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L257"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L258"
                if ((_i >= (_b.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L259"
                    return true;
                };
//"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L261"
                if (_b[(_i : stdgo.GoInt)] != (_s[(_i : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L262"
                    return (_b[(_i : stdgo.GoInt)] < _s[(_i : stdgo.GoInt)] : Bool);
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L265"
        return false;
    }
