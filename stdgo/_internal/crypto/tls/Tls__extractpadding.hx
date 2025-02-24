package stdgo._internal.crypto.tls;
function _extractPadding(_payload:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt8; } {
        var _toRemove = (0 : stdgo.GoInt), _good = (0 : stdgo.GoUInt8);
        if (((_payload.length) < (1 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt8; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoUInt8) };
                _toRemove = __tmp__._0;
                _good = __tmp__._1;
                __tmp__;
            };
        };
        var _paddingLen = (_payload[((_payload.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
        var _t = ((((_payload.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) - (_paddingLen : stdgo.GoUInt) : stdgo.GoUInt);
        _good = (((-1 ^ _t : stdgo.GoInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8);
        var _toCheck = (256 : stdgo.GoInt);
        if ((_toCheck > (_payload.length) : Bool)) {
            _toCheck = (_payload.length);
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _toCheck : Bool)) {
                var _t = ((_paddingLen : stdgo.GoUInt) - (_i : stdgo.GoUInt) : stdgo.GoUInt);
var _mask = (((-1 ^ _t : stdgo.GoInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoUInt8);
var _b = (_payload[(((_payload.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)] : stdgo.GoUInt8);
_good = (_good & (((((_mask & _paddingLen : stdgo.GoUInt8) ^ (_mask & _b : stdgo.GoUInt8) : stdgo.GoUInt8)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _i++;
            };
        };
        _good = (_good & ((_good << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _good = (_good & ((_good << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _good = (_good & ((_good << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _good = (((_good : stdgo.GoInt8) >> (7i64 : stdgo.GoUInt64) : stdgo.GoInt8) : stdgo.GoUInt8);
        _paddingLen = (_paddingLen & (_good) : stdgo.GoUInt8);
        _toRemove = ((_paddingLen : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        return { _0 : _toRemove, _1 : _good };
    }
