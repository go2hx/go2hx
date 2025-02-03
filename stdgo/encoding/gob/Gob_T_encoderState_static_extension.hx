package stdgo.encoding.gob;
class T_encoderState_static_extension {
    static public function _update(_state:T_encoderState, _instr:T_encInstr):Void {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        final _instr = (_instr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>);
        stdgo._internal.encoding.gob.Gob_T_encoderState_static_extension.T_encoderState_static_extension._update(_state, _instr);
    }
    static public function _encodeInt(_state:T_encoderState, _i:haxe.Int64):Void {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        final _i = (_i : stdgo.GoInt64);
        stdgo._internal.encoding.gob.Gob_T_encoderState_static_extension.T_encoderState_static_extension._encodeInt(_state, _i);
    }
    static public function _encodeUint(_state:T_encoderState, _x:haxe.UInt64):Void {
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.encoding.gob.Gob_T_encoderState_static_extension.T_encoderState_static_extension._encodeUint(_state, _x);
    }
}
