package stdgo._internal.text.scanner;
function _invalidSep(_x:stdgo.GoString):stdgo.GoInt {
        var _x1 = (32 : stdgo.GoInt32);
        var _d = (46 : stdgo.GoInt32);
        var _i = (0 : stdgo.GoInt);
        if ((((_x.length) >= (2 : stdgo.GoInt) : Bool) && (_x[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _x1 = stdgo._internal.text.scanner.Scanner__lower._lower((_x[(1 : stdgo.GoInt)] : stdgo.GoInt32));
            if (((_x1 == ((120 : stdgo.GoInt32)) || _x1 == ((111 : stdgo.GoInt32)) : Bool) || (_x1 == (98 : stdgo.GoInt32)) : Bool)) {
                _d = (48 : stdgo.GoInt32);
                _i = (2 : stdgo.GoInt);
            };
        };
        while ((_i < (_x.length) : Bool)) {
            var _p = (_d : stdgo.GoInt32);
_d = (_x[(_i : stdgo.GoInt)] : stdgo.GoInt32);
if (_d == ((95 : stdgo.GoInt32))) {
                if (_p != ((48 : stdgo.GoInt32))) {
                    return _i;
                };
            } else if ((stdgo._internal.text.scanner.Scanner__isdecimal._isDecimal(_d) || (_x1 == ((120 : stdgo.GoInt32)) && stdgo._internal.text.scanner.Scanner__ishex._isHex(_d) : Bool) : Bool)) {
                _d = (48 : stdgo.GoInt32);
            } else {
                if (_p == ((95 : stdgo.GoInt32))) {
                    return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _d = (46 : stdgo.GoInt32);
            };
            _i++;
        };
        if (_d == ((95 : stdgo.GoInt32))) {
            return ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
