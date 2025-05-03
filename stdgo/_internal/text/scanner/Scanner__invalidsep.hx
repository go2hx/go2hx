package stdgo._internal.text.scanner;
function _invalidSep(_x:stdgo.GoString):stdgo.GoInt {
        var _x1 = (32 : stdgo.GoInt32);
        var _d = (46 : stdgo.GoInt32);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L505"
        if ((((_x.length) >= (2 : stdgo.GoInt) : Bool) && (_x[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _x1 = stdgo._internal.text.scanner.Scanner__lower._lower((_x[(1 : stdgo.GoInt)] : stdgo.GoInt32));
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L507"
            if (((_x1 == ((120 : stdgo.GoInt32)) || _x1 == ((111 : stdgo.GoInt32)) : Bool) || (_x1 == (98 : stdgo.GoInt32)) : Bool)) {
                _d = (48 : stdgo.GoInt32);
                _i = (2 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L514"
        while ((_i < (_x.length) : Bool)) {
            var _p = (_d : stdgo.GoInt32);
_d = (_x[(_i : stdgo.GoInt)] : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L517"
            if (_d == ((95 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L519"
                if (_p != ((48 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L520"
                    return _i;
                };
            } else if ((stdgo._internal.text.scanner.Scanner__isdecimal._isDecimal(_d) || (_x1 == ((120 : stdgo.GoInt32)) && stdgo._internal.text.scanner.Scanner__ishex._isHex(_d) : Bool) : Bool)) {
                _d = (48 : stdgo.GoInt32);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L525"
                if (_p == ((95 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L526"
                    return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _d = (46 : stdgo.GoInt32);
            };
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L531"
        if (_d == ((95 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L532"
            return ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L535"
        return (-1 : stdgo.GoInt);
    }
