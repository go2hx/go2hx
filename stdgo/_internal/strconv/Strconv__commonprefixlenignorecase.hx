package stdgo._internal.strconv;
function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoInt {
        var _n = (_prefix.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L22"
        if ((_n > (_s.length) : Bool)) {
            _n = (_s.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L25"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L27"
                if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
//"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L30"
                if (_c != (_prefix[(_i : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L31"
                    return _i;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L34"
        return _n;
    }
