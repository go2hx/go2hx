package stdgo._internal.strconv;
function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoInt {
        var _n = (_prefix.length : stdgo.GoInt);
        if ((_n > (_s.length) : Bool)) {
            _n = (_s.length);
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
if (_c != (_prefix[(_i : stdgo.GoInt)])) {
                    return _i;
                };
                _i++;
            };
        };
        return _n;
    }
