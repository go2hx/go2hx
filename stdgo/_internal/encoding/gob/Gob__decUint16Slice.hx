package stdgo._internal.encoding.gob;
function _decUint16Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoUInt16>)) : stdgo.Slice<stdgo.GoUInt16>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoUInt16>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _length : Bool), _i++, {
                if (_state._b.len() == ((0 : stdgo.GoInt))) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding uint16 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
                if ((_i >= (_slice.length) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__growSlice._growSlice(_v?.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt16>>), _length);
                };
                var _x = (_state._decodeUint() : stdgo.GoUInt64);
                if (((65535i64 : stdgo.GoUInt64) < _x : Bool)) {
                    stdgo._internal.encoding.gob.Gob__error_._error_(_ovfl);
                };
                _slice[(_i : stdgo.GoInt)] = (_x : stdgo.GoUInt16);
            });
        };
        return true;
    }