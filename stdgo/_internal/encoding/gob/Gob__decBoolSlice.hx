package stdgo._internal.encoding.gob;
function _decBoolSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<Bool>)) : stdgo.Slice<Bool>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<Bool>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        var _slice__pointer__ = (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<Bool>>);
        var _slice__pointer__ = (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<Bool>>);
        var _slice__pointer__ = (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<Bool>>);
        var _slice__pointer__ = (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<Bool>>);
        if (!_ok) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                if (_state._b.len() == ((0 : stdgo.GoInt))) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding bool array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
if ((_i >= (_slice.length) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__growSlice._growSlice(_v.__copy__(), _slice__pointer__, _length);
                };
_slice[(_i : stdgo.GoInt)] = _state._decodeUint() != ((0i64 : stdgo.GoUInt64));
                _i++;
            };
        };
        return true;
    }
