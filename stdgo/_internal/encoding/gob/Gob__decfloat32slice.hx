package stdgo._internal.encoding.gob;
function _decFloat32Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoFloat32>)) : stdgo.Slice<stdgo.GoFloat32>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoFloat32>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L147"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L149"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L151"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L152"
                if ((@:checkr _state ?? throw "null pointer dereference")._b.len() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L153"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding float32 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L155"
                if ((_i >= (_slice.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L157"
                    stdgo._internal.encoding.gob.Gob__growslice._growSlice(_v.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoFloat32>>), _length);
                };
_slice[(_i : stdgo.GoInt)] = (stdgo._internal.encoding.gob.Gob__float32frombits._float32FromBits(_state._decodeUint(), _ovfl) : stdgo.GoFloat32);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L161"
        return true;
    }
