package stdgo._internal.encoding.gob;
function _decBoolSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<Bool>)) : stdgo.Slice<Bool>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<Bool>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L62"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L64"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L66"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L67"
                if ((@:checkr _state ?? throw "null pointer dereference")._b.len() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L68"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding bool array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L70"
                if ((_i >= (_slice.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L72"
                    stdgo._internal.encoding.gob.Gob__growslice._growSlice(_v.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<Bool>>), _length);
                };
_slice[(_i : stdgo.GoInt)] = _state._decodeUint() != ((0i64 : stdgo.GoUInt64));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L76"
        return true;
    }
