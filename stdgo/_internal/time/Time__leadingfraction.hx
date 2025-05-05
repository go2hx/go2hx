package stdgo._internal.time;
function _leadingFraction(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; var _2 : stdgo.GoString; } {
        var _x = (0 : stdgo.GoUInt64), _scale = (0 : stdgo.GoFloat64), _rem = ("" : stdgo.GoString);
        var _i = (0 : stdgo.GoInt);
        _scale = (1 : stdgo.GoFloat64);
        var _overflow = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1549"
        while ((_i < (_s.length) : Bool)) {
            var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/time/format.go#L1551"
            if (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1552"
                break;
            };
//"file:///home/runner/.go/go1.21.3/src/time/format.go#L1554"
            if (_overflow) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1555"
                {
                    _i++;
                    continue;
                };
            };
//"file:///home/runner/.go/go1.21.3/src/time/format.go#L1557"
            if ((_x > (922337203685477580i64 : stdgo.GoUInt64) : Bool)) {
                _overflow = true;
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1560"
                {
                    _i++;
                    continue;
                };
            };
var _y = (((_x * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c : stdgo.GoUInt64) : stdgo.GoUInt64) - (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
//"file:///home/runner/.go/go1.21.3/src/time/format.go#L1563"
            if ((_y > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                _overflow = true;
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1565"
                {
                    _i++;
                    continue;
                };
            };
_x = _y;
_scale = (_scale * ((10 : stdgo.GoFloat64)) : stdgo.GoFloat64);
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1570"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; var _2 : stdgo.GoString; } = { _0 : _x, _1 : _scale, _2 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__() };
            _x = __tmp__._0;
            _scale = __tmp__._1;
            _rem = __tmp__._2;
            __tmp__;
        };
    }
