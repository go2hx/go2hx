package stdgo._internal.encoding.gob;
function _newEncoderState(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L132"
        _b.reset();
        var _state = (stdgo.Go.setRef(({ _enc : null, _b : _b } : stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
        (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L135"
        return _state;
    }
