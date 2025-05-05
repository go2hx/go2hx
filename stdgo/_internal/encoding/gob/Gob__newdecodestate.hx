package stdgo._internal.encoding.gob;
function _newDecodeState(_buf:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
        (@:checkr _d ?? throw "null pointer dereference")._b = _buf;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L128"
        return _d;
    }
