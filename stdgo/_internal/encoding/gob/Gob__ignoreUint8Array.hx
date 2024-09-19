package stdgo._internal.encoding.gob;
function _ignoreUint8Array(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var __tmp__ = _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("slice length too large" : stdgo.GoString));
        };
        var _bn = (_state._b.len() : stdgo.GoInt);
        if ((_bn < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid slice length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        _state._b.drop(_n);
    }
