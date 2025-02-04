package stdgo._internal.encoding.gob;
function testScalarDecInstructions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ovfl = (stdgo._internal.errors.Errors_new_.new_(("overflow" : stdgo.GoString)) : stdgo.Error);
        {
            var _data:Bool = false;
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decbool._decBool, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__boolresult._boolResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != (true)) {
                @:check2r _t.errorf(("bool a = %v not true" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoInt = (0 : stdgo.GoInt);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((2u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17 : stdgo.GoInt))) {
                @:check2r _t.errorf(("int a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoUInt = (0 : stdgo.GoUInt);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((7u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17u32 : stdgo.GoUInt))) {
                @:check2r _t.errorf(("uint a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoInt8 = (0 : stdgo.GoInt8);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decint8._decInt8, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17 : stdgo.GoInt8))) {
                @:check2r _t.errorf(("int8 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint8._decUint8, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17 : stdgo.GoUInt8))) {
                @:check2r _t.errorf(("uint8 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoInt16 = (0 : stdgo.GoInt16);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decint16._decInt16, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17 : stdgo.GoInt16))) {
                @:check2r _t.errorf(("int16 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint16._decUint16, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17 : stdgo.GoUInt16))) {
                @:check2r _t.errorf(("uint16 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decint32._decInt32, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17 : stdgo.GoInt32))) {
                @:check2r _t.errorf(("int32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint32._decUint32, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17u32 : stdgo.GoUInt32))) {
                @:check2r _t.errorf(("uint32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((12u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((new stdgo.GoUIntptr(17) : stdgo.GoUIntptr))) {
                @:check2r _t.errorf(("uintptr a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decint64._decInt64, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17i64 : stdgo.GoInt64))) {
                @:check2r _t.errorf(("int64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint64._decUint64, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != ((17i64 : stdgo.GoUInt64))) {
                @:check2r _t.errorf(("uint64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decfloat32._decFloat32, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__floatresult._floatResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != (17 : stdgo.GoFloat64)) {
                @:check2r _t.errorf(("float32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decfloat64._decFloat64, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__floatresult._floatResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != (17 : stdgo.GoFloat64)) {
                @:check2r _t.errorf(("float64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoComplex64 = new stdgo.GoComplex64(0, 0);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((15u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__complexresult._complexResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != (((17f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 19f64)))) {
                @:check2r _t.errorf(("complex a = %v not 17+19i" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((16u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__complexresult._complexResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != (((17f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 19f64)))) {
                @:check2r _t.errorf(("complex a = %v not 17+19i" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        {
            var _data:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint8slice._decUint8Slice, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_data) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)))?.__copy__());
            if ((_data : stdgo.GoString) != (("hello" : stdgo.GoString))) {
                @:check2r _t.errorf(("bytes a = %q not \"hello\"" : stdgo.GoString), stdgo.Go.toInterface((_data : stdgo.GoString)));
            };
        };
        {
            var _data:stdgo.GoString = ("" : stdgo.GoString);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decstring._decString, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult);
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            if (_data != (("hello" : stdgo.GoString))) {
                @:check2r _t.errorf(("bytes a = %q not \"hello\"" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
    }
