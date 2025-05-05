package stdgo._internal.time;
function _fmtFrac(_buf:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64, _prec:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt64; } {
        var _nw = (0 : stdgo.GoInt), _nv = (0 : stdgo.GoUInt64);
        var _w = (_buf.length : stdgo.GoInt);
        var _print = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L725"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _prec : Bool)) {
                var _digit = (_v % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
_print = (_print || (_digit != (0i64 : stdgo.GoUInt64)) : Bool);
//"file:///home/runner/.go/go1.21.3/src/time/time.go#L728"
                if (_print) {
                    //"file:///home/runner/.go/go1.21.3/src/time/time.go#L729"
                    _w--;
                    _buf[(_w : stdgo.GoInt)] = ((_digit : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                };
_v = (_v / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L734"
        if (_print) {
            //"file:///home/runner/.go/go1.21.3/src/time/time.go#L735"
            _w--;
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L738"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt64; } = { _0 : _w, _1 : _v };
            _nw = __tmp__._0;
            _nv = __tmp__._1;
            __tmp__;
        };
    }
