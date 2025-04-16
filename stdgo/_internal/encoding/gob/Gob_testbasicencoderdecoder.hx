package stdgo._internal.encoding.gob;
function testBasicEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _values = (new stdgo.Slice<stdgo.AnyInterface>(18, 18, ...[
stdgo.Go.toInterface(true),
stdgo.Go.toInterface((123 : stdgo.GoInt)),
stdgo.Go.toInterface((123 : stdgo.GoInt8)),
stdgo.Go.toInterface((-12345 : stdgo.GoInt16)),
stdgo.Go.toInterface((123456 : stdgo.GoInt32)),
stdgo.Go.toInterface((-1234567i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((123u32 : stdgo.GoUInt)),
stdgo.Go.toInterface((123 : stdgo.GoUInt8)),
stdgo.Go.toInterface((12345 : stdgo.GoUInt16)),
stdgo.Go.toInterface((123456u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((1234567i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface((new stdgo.GoUIntptr((new stdgo.GoUIntptr(12345678) : stdgo.GoUIntptr)) : stdgo.GoUIntptr)),
stdgo.Go.toInterface(((1.2345 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface((1.2345678 : stdgo.GoFloat64)),
stdgo.Go.toInterface(((1.2345f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2.3456f64) : stdgo.GoComplex64)),
stdgo.Go.toInterface(((1.2345678f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2.3456789f64) : stdgo.GoComplex128)),
stdgo.Go.toInterface(((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((("hello" : stdgo.GoString) : stdgo.GoString))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__8 => _value in _values) {
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
            var _err = (@:check2r _enc.encode(_value) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
            var _result = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(_value))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            _err = @:check2r _dec.decode(_result.interface_());
            if (_err != null) {
                @:check2r _t.fatalf(("error decoding %T: %v:" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeof.typeOf(_value)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_value, _result.elem().interface_())) {
                @:check2r _t.fatalf(("%T: expected %v got %v" : stdgo.GoString), _value, _value, _result.elem().interface_());
            };
        };
    }
