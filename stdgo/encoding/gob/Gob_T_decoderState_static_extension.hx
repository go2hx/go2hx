package stdgo.encoding.gob;
class T_decoderState_static_extension {
    static public function _getLength(_state:T_decoderState):stdgo.Tuple<StdTypes.Int, Bool> {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_decoderState_static_extension.T_decoderState_static_extension._getLength(_state);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decodeInt(_state:T_decoderState):haxe.Int64 {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        return stdgo._internal.encoding.gob.Gob_T_decoderState_static_extension.T_decoderState_static_extension._decodeInt(_state);
    }
    static public function _decodeUint(_state:T_decoderState):haxe.UInt64 {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        return stdgo._internal.encoding.gob.Gob_T_decoderState_static_extension.T_decoderState_static_extension._decodeUint(_state);
    }
}
