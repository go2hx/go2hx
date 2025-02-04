package stdgo._internal.encoding.gob;
function _newDecodeStateFromData(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> {
        var _b = stdgo._internal.encoding.gob.Gob__newdecbuffer._newDecBuffer(_data);
        var _state = stdgo._internal.encoding.gob.Gob__newdecodestate._newDecodeState(_b);
        (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
        return _state;
    }
