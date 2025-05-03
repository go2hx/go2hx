package stdgo._internal.encoding.gob;
function testScalarEncInstructions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L144"
        {
            var _data:Bool = true;
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encbool._encBool, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L148"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L149"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__boolresult._boolResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L150"
                _t.errorf(("bool enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__boolresult._boolResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L155"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L156"
            _b.reset();
            var _data:stdgo.GoInt = (17 : stdgo.GoInt);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L160"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L161"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L162"
                _t.errorf(("int enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L167"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L168"
            _b.reset();
            var _data:stdgo.GoUInt = (17u32 : stdgo.GoUInt);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L172"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L173"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L174"
                _t.errorf(("uint enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L179"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L180"
            _b.reset();
            var _data:stdgo.GoInt8 = (17 : stdgo.GoInt8);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L184"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L185"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L186"
                _t.errorf(("int8 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L191"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L192"
            _b.reset();
            var _data:stdgo.GoUInt8 = (17 : stdgo.GoUInt8);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L196"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L197"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L198"
                _t.errorf(("uint8 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L203"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L204"
            _b.reset();
            var _data:stdgo.GoInt16 = (17 : stdgo.GoInt16);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L208"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L209"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L210"
                _t.errorf(("int16 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L215"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L216"
            _b.reset();
            var _data:stdgo.GoUInt16 = (17 : stdgo.GoUInt16);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L220"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L221"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L222"
                _t.errorf(("uint16 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L227"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L228"
            _b.reset();
            var _data:stdgo.GoInt32 = (17 : stdgo.GoInt32);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L232"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L233"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L234"
                _t.errorf(("int32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L239"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L240"
            _b.reset();
            var _data:stdgo.GoUInt32 = (17u32 : stdgo.GoUInt32);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L244"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L245"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L246"
                _t.errorf(("uint32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L251"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L252"
            _b.reset();
            var _data:stdgo.GoInt64 = (17i64 : stdgo.GoInt64);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encint._encInt, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L256"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L257"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__signedresult._signedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L258"
                _t.errorf(("int64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__signedresult._signedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L263"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L264"
            _b.reset();
            var _data:stdgo.GoUInt64 = (17i64 : stdgo.GoUInt64);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint._encUint, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L268"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L269"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L270"
                _t.errorf(("uint64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L275"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L276"
            _b.reset();
            var _data:stdgo.GoFloat32 = (17 : stdgo.GoFloat64);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encfloat._encFloat, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L280"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L281"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__floatresult._floatResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L282"
                _t.errorf(("float32 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__floatresult._floatResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L287"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L288"
            _b.reset();
            var _data:stdgo.GoFloat64 = (17 : stdgo.GoFloat64);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encfloat._encFloat, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L292"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L293"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__floatresult._floatResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L294"
                _t.errorf(("float64 enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__floatresult._floatResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L299"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L300"
            _b.reset();
            var _data = ((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encuint8array._encUint8Array, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L304"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L305"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L306"
                _t.errorf(("bytes enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L311"
        {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L312"
            _b.reset();
            var _data:stdgo.GoString = ("hello" : stdgo.GoString);
            var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encstring._encString, (6 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var _state = stdgo._internal.encoding.gob.Gob__newencoderstate._newEncoderState(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L316"
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_data))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L317"
            if (!stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult, _b.bytes())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L318"
                _t.errorf(("string enc instructions: expected % x got % x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult), stdgo.Go.toInterface(_b.bytes()));
            };
        };
    }
