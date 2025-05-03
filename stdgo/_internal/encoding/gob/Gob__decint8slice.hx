package stdgo._internal.encoding.gob;
function _decInt8Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoInt8>)) : stdgo.Slice<stdgo.GoInt8>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoInt8>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L322"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L324"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L326"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L327"
                if ((@:checkr _state ?? throw "null pointer dereference")._b.len() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L328"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding int8 array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L330"
                if ((_i >= (_slice.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L332"
                    stdgo._internal.encoding.gob.Gob__growslice._growSlice(_v.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoInt8>>), _length);
                };
var _x = (_state._decodeInt() : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L335"
                if (((_x < (-128i64 : stdgo.GoInt64) : Bool) || ((127i64 : stdgo.GoInt64) < _x : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L336"
                    stdgo._internal.encoding.gob.Gob__error_._error_(_ovfl);
                };
_slice[(_i : stdgo.GoInt)] = (_x : stdgo.GoInt8);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L340"
        return true;
    }
