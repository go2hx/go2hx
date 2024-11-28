package stdgo._internal.time;
function _leadingFraction(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; var _2 : stdgo.GoString; } {
        var _x = (0 : stdgo.GoUInt64), _scale = (0 : stdgo.GoFloat64), _rem = ("" : stdgo.GoString);
        var _i = (0 : stdgo.GoInt);
        _scale = (1 : stdgo.GoFloat64);
        var _overflow = (false : Bool);
        while ((_i < (_s.length) : Bool)) {
            var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                break;
            };
if (_overflow) {
                {
                    _i++;
                    continue;
                };
            };
if ((_x > (922337203685477580i64 : stdgo.GoUInt64) : Bool)) {
                _overflow = true;
                {
                    _i++;
                    continue;
                };
            };
var _y = (((_x * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c : stdgo.GoUInt64) : stdgo.GoUInt64) - (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
if ((_y > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                _overflow = true;
                {
                    _i++;
                    continue;
                };
            };
_x = _y;
_scale = (_scale * (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
            _i++;
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; var _2 : stdgo.GoString; } = { _0 : _x, _1 : _scale, _2 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__() };
            _x = __tmp__._0;
            _scale = __tmp__._1;
            _rem = __tmp__._2;
            __tmp__;
        };
    }
