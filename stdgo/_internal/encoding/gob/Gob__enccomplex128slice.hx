package stdgo._internal.encoding.gob;
function _encComplex128Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoComplex128>)) : stdgo.Slice<stdgo.GoComplex128>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoComplex128>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L112"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L114"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L116"
        for (__8 => _x in _slice) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L117"
            if (((_x != ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
                var _rpart = (stdgo._internal.encoding.gob.Gob__floatbits._floatBits((_x : stdgo.GoComplex128).real) : stdgo.GoUInt64);
                var _ipart = (stdgo._internal.encoding.gob.Gob__floatbits._floatBits((_x : stdgo.GoComplex128).imag) : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L120"
                _state._encodeUint(_rpart);
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L121"
                _state._encodeUint(_ipart);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/enc_helpers.go#L124"
        return true;
    }
