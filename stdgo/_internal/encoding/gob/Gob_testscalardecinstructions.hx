package stdgo._internal.encoding.gob;
function testScalarDecInstructions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ovfl = (stdgo._internal.errors.Errors_new_.new_(("overflow" : stdgo.GoString)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L346"
        {
            var _data:Bool = false, _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decbool._decBool, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__boolresult._boolResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L350"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L351"
            if (_data != (true)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L352"
                _t.errorf(("bool a = %v not true" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L356"
        {
            var _data:stdgo.GoInt = (0 : stdgo.GoInt), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((2u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L360"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L361"
            if (_data != ((17 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L362"
                _t.errorf(("int a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L367"
        {
            var _data:stdgo.GoUInt = (0 : stdgo.GoUInt), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((7u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L371"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L372"
            if (_data != ((17u32 : stdgo.GoUInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L373"
                _t.errorf(("uint a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L378"
        {
            var _data:stdgo.GoInt8 = (0 : stdgo.GoInt8), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decint8._decInt8, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L382"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L383"
            if (_data != ((17 : stdgo.GoInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L384"
                _t.errorf(("int8 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L389"
        {
            var _data:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint8._decUint8, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L393"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L394"
            if (_data != ((17 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L395"
                _t.errorf(("uint8 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L400"
        {
            var _data:stdgo.GoInt16 = (0 : stdgo.GoInt16), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decint16._decInt16, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L404"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L405"
            if (_data != ((17 : stdgo.GoInt16))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L406"
                _t.errorf(("int16 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L411"
        {
            var _data:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint16._decUint16, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L415"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L416"
            if (_data != ((17 : stdgo.GoUInt16))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L417"
                _t.errorf(("uint16 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L422"
        {
            var _data:stdgo.GoInt32 = (0 : stdgo.GoInt32), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decint32._decInt32, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L426"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L427"
            if (_data != ((17 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L428"
                _t.errorf(("int32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L433"
        {
            var _data:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint32._decUint32, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L437"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L438"
            if (_data != ((17u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L439"
                _t.errorf(("uint32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L444"
        {
            var _data:stdgo.GoUIntptr = new stdgo.GoUIntptr(0), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((12u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L448"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L449"
            if (_data != ((new stdgo.GoUIntptr(17) : stdgo.GoUIntptr))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L450"
                _t.errorf(("uintptr a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L455"
        {
            var _data:stdgo.GoInt64 = (0 : stdgo.GoInt64), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decint64._decInt64, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__signedresult._signedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L459"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L460"
            if (_data != ((17i64 : stdgo.GoInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L461"
                _t.errorf(("int64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L466"
        {
            var _data:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint64._decUint64, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L470"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L471"
            if (_data != ((17i64 : stdgo.GoUInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L472"
                _t.errorf(("uint64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L477"
        {
            var _data:stdgo.GoFloat32 = (0 : stdgo.GoFloat32), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decfloat32._decFloat32, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__floatresult._floatResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L481"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L482"
            if (_data != ((17 : stdgo.GoFloat64))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L483"
                _t.errorf(("float32 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L488"
        {
            var _data:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decfloat64._decFloat64, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__floatresult._floatResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L492"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L493"
            if (_data != ((17 : stdgo.GoFloat64))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L494"
                _t.errorf(("float64 a = %v not 17" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L499"
        {
            var _data:stdgo.GoComplex64 = new stdgo.GoComplex64(0, 0), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((15u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__complexresult._complexResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L503"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L504"
            if (_data != (((17f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 19f64)))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L505"
                _t.errorf(("complex a = %v not 17+19i" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L510"
        {
            var _data:stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((16u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)], (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__complexresult._complexResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L514"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L515"
            if (_data != (((17f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 19f64)))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L516"
                _t.errorf(("complex a = %v not 17+19i" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L521"
        {
            var _data:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decuint8slice._decUint8Slice, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L525"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_data) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L526"
            if ((_data : stdgo.GoString) != (("hello" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L527"
                _t.errorf(("bytes a = %q not \"hello\"" : stdgo.GoString), stdgo.Go.toInterface((_data : stdgo.GoString)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L532"
        {
            var _data:stdgo.GoString = ("" : stdgo.GoString), _data__pointer__ = stdgo.Go.pointer(_data);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(stdgo._internal.encoding.gob.Gob__decstring._decString, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newdecodestatefromdata._newDecodeStateFromData(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L536"
            stdgo._internal.encoding.gob.Gob__execdec._execDec(_instr, _state, _t, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data__pointer__))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L537"
            if (_data != (("hello" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L538"
                _t.errorf(("bytes a = %q not \"hello\"" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        };
    }
