package stdgo._internal.encoding.gob;
function _newDecodeStateFromData(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState> {
        var _b = stdgo._internal.encoding.gob.Gob__newDecBuffer._newDecBuffer(_data);
        var _state = stdgo._internal.encoding.gob.Gob__newDecodeState._newDecodeState(_b);
        _state._fieldnum = (-1 : stdgo.GoInt);
        return _state;
    }
