package stdgo._internal.encoding.gob;
function _newDecodeState(_buf:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        _d._b = _buf;
        return _d;
    }
