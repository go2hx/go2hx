package stdgo._internal.encoding.gob;
function testScalarEncInstructions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        {
            var _data:Bool = true;
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encbool._encBool, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__boolresult._boolResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("bool enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__boolresult._boolResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoInt = (17 : stdgo.GoInt);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("int enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoUInt = (17u32 : stdgo.GoUInt);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("uint enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoInt8 = (17 : stdgo.GoInt8);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("int8 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoUInt8 = (17 : stdgo.GoUInt8);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("uint8 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoInt16 = (17 : stdgo.GoInt16);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("int16 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoUInt16 = (17 : stdgo.GoUInt16);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("uint16 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoInt32 = (17 : stdgo.GoInt32);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("int32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoUInt32 = (17u32 : stdgo.GoUInt32);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("uint32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoInt64 = (17i64 : stdgo.GoInt64);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("int64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoUInt64 = (17i64 : stdgo.GoUInt64);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("uint64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoFloat32 = (17 : stdgo.GoFloat64);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encfloat._encFloat, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__floatresult._floatResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("float32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__floatresult._floatResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoFloat64 = (17 : stdgo.GoFloat64);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encfloat._encFloat, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__floatresult._floatResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("float64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__floatresult._floatResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data = ((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint8array._encUint8Array, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("bytes enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
        {
            @:check2r _b.reset();
            var _data:stdgo.GoString = ("hello" : stdgo.GoString);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encstring._encString, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult, @:check2r _b.bytes())) {
                @:check2r _t.errorf(("string enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult), stdgo.Go.toInterface(@:check2r _b.bytes()));
            };
        };
    }
