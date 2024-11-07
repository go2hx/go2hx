package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_encoderState_asInterface) class T_encoderState_static_extension {
    @:keep
    static public function _update( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>):Void {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState> = _state;
        if ((_instr != null && ((_instr : Dynamic).__nil__ == null || !(_instr : Dynamic).__nil__))) {
            _state._encodeUint(((_instr._field - _state._fieldnum : stdgo.GoInt) : stdgo.GoUInt64));
            _state._fieldnum = _instr._field;
        };
    }
    @:keep
    static public function _encodeInt( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _i:stdgo.GoInt64):Void {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState> = _state;
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        if ((_i < (0i64 : stdgo.GoInt64) : Bool)) {
            _x = ((((-1 ^ _i) << (1i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt64) | (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        } else {
            _x = ((_i << (1i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
        };
        _state._encodeUint(_x);
    }
    @:keep
    static public function _encodeUint( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _x:stdgo.GoUInt64):Void {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState> = _state;
        if ((_x <= (127i64 : stdgo.GoUInt64) : Bool)) {
            _state._b._writeByte((_x : stdgo.GoUInt8));
            return;
        };
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint64((_state._buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        var _bc = (stdgo._internal.math.bits.Bits_leadingZeros64.leadingZeros64(_x) >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt);
        _state._buf[(_bc : stdgo.GoInt)] = ((_bc - (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        _state._b.write((_state._buf.__slice__(_bc, (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
