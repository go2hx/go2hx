package stdgo._internal.time;
function _getnum3(_s:stdgo.GoString, _fixed:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _i = __1, _n = __0;
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (3 : stdgo.GoInt) : Bool) && stdgo._internal.time.Time__isDigit._isDigit(_s?.__copy__(), _i) : Bool), _i++, {
                _n = ((_n * (10 : stdgo.GoInt) : stdgo.GoInt) + ((_s[(_i : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : stdgo.GoInt);
            });
        };
        if (((_i == (0 : stdgo.GoInt)) || (_fixed && _i != ((3 : stdgo.GoInt)) : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : _s?.__copy__(), _2 : stdgo._internal.time.Time__errBad._errBad };
        };
        return { _0 : _n, _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
    }
