package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_encoderState_asInterface) class T_encoderState_static_extension {
    @:keep
    @:tdfield
    static public function _update( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>):Void {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> = _state;
        if ((_instr != null && ((_instr : Dynamic).__nil__ == null || !(_instr : Dynamic).__nil__))) {
            @:check2r _state._encodeUint((((@:checkr _instr ?? throw "null pointer dereference")._field - (@:checkr _state ?? throw "null pointer dereference")._fieldnum : stdgo.GoInt) : stdgo.GoUInt64));
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (@:checkr _instr ?? throw "null pointer dereference")._field;
        };
    }
    @:keep
    @:tdfield
    static public function _encodeInt( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _i:stdgo.GoInt64):Void {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> = _state;
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        if ((_i < (0i64 : stdgo.GoInt64) : Bool)) {
            _x = ((((-1 ^ _i) << (1i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt64) | (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        } else {
            _x = ((_i << (1i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
        };
        @:check2r _state._encodeUint(_x);
    }
    @:keep
    @:tdfield
    static public function _encodeUint( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _x:stdgo.GoUInt64):Void {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> = _state;
        if ((_x <= (127i64 : stdgo.GoUInt64) : Bool)) {
            @:check2r (@:checkr _state ?? throw "null pointer dereference")._b._writeByte((_x : stdgo.GoUInt8));
            return;
        };
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64(((@:checkr _state ?? throw "null pointer dereference")._buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        var _bc = (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_x) >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt);
        (@:checkr _state ?? throw "null pointer dereference")._buf[(_bc : stdgo.GoInt)] = ((_bc - (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.write(((@:checkr _state ?? throw "null pointer dereference")._buf.__slice__(_bc, (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
