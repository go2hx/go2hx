package stdgo._internal.encoding.gob;
function _decUintptrSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoUIntptr>)) : stdgo.Slice<stdgo.GoUIntptr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoUIntptr>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L514"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L516"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L518"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L519"
                if ((@:checkr _state ?? throw "null pointer dereference")._b.len() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L520"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding uintptr array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L522"
                if ((_i >= (_slice.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L524"
                    stdgo._internal.encoding.gob.Gob__growslice._growSlice(_v.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoUIntptr>>), _length);
                };
var _x = (_state._decodeUint() : stdgo.GoUInt64);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L527"
                if ((((new stdgo.GoUIntptr(4294967295) : stdgo.GoUIntptr) : stdgo.GoUInt64) < _x : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L528"
                    stdgo._internal.encoding.gob.Gob__error_._error_(_ovfl);
                };
_slice[(_i : stdgo.GoInt)] = (new stdgo.GoUIntptr(_x) : stdgo.GoUIntptr);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L532"
        return true;
    }
