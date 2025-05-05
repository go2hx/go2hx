package stdgo._internal.encoding.gob;
function _decStringSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L353"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L355"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L357"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L358"
                if ((@:checkr _state ?? throw "null pointer dereference")._b.len() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L359"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding string array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L361"
                if ((_i >= (_slice.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L363"
                    stdgo._internal.encoding.gob.Gob__growslice._growSlice(_v.__copy__(), (stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>), _length);
                };
var _u = (_state._decodeUint() : stdgo.GoUInt64);
var _n = (_u : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L367"
                if ((((_n < (0 : stdgo.GoInt) : Bool) || (_n : stdgo.GoUInt64) != (_u) : Bool) || (_n > (@:checkr _state ?? throw "null pointer dereference")._b.len() : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L368"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("length of string exceeds input size (%d bytes)" : stdgo.GoString), stdgo.Go.toInterface(_u));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L370"
                if ((_n > (@:checkr _state ?? throw "null pointer dereference")._b.len() : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L371"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("string data too long for buffer: %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
var _data = (@:checkr _state ?? throw "null pointer dereference")._b.bytes();
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L375"
                if (((_data.length) < _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L376"
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid string length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_data.length)));
                };
_slice[(_i : stdgo.GoInt)] = ((_data.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__();
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L379"
                (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/dec_helpers.go#L381"
        return true;
    }
