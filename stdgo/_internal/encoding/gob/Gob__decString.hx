package stdgo._internal.encoding.gob;
function _decString(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var __tmp__ = _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad %s slice length: %d" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
        };
        var _data = _state._b.bytes();
        if (((_data.length) < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid string length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_data.length)));
        };
        var _s = (((_data.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _state._b.drop(_n);
        _value.setString(_s?.__copy__());
    }
