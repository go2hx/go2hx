package stdgo._internal.encoding.gob;
function _decComplex128Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoComplex128>)) : stdgo.Slice<stdgo.GoComplex128>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoComplex128>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _length : Bool), _i++, {
                if (_state._b.len() == ((0 : stdgo.GoInt))) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding complex128 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if ((_i >= (_slice.length) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__growSlice._growSlice(_v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoComplex128>>), _length);
                };
                var _real = (stdgo._internal.encoding.gob.Gob__float64FromBits._float64FromBits(_state._decodeUint()) : stdgo.GoFloat64);
                var _imag = (stdgo._internal.encoding.gob.Gob__float64FromBits._float64FromBits(_state._decodeUint()) : stdgo.GoFloat64);
                _slice[(_i : stdgo.GoInt)] = new stdgo.GoComplex128(_real, _imag);
            });
        };
        return true;
    }