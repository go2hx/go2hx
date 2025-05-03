package stdgo._internal.encoding.gob;
function _decString(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var __tmp__ = _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L415"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L416"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad %s slice length: %d" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
        };
        var _data = (@:checkr _state ?? throw "null pointer dereference")._b.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L420"
        if (((_data.length) < _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L421"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid string length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_data.length)));
        };
        var _s = (((_data.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L424"
        (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L425"
        _value.setString(_s?.__copy__());
    }
