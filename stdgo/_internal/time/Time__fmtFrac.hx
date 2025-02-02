package stdgo._internal.time;
function _fmtFrac(_buf:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64, _prec:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt64; } {
        var _nw = (0 : stdgo.GoInt), _nv = (0 : stdgo.GoUInt64);
        var _w = (_buf.length : stdgo.GoInt);
        var _print = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _prec : Bool)) {
                var _digit = (_v % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
_print = (_print || (_digit != (0i64 : stdgo.GoUInt64)) : Bool);
if (_print) {
                    _w--;
                    _buf[(_w : stdgo.GoInt)] = ((_digit : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                };
_v = (_v / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        if (_print) {
            _w--;
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt64; } = { _0 : _w, _1 : _v };
            _nw = __tmp__._0;
            _nv = __tmp__._1;
            __tmp__;
        };
    }
