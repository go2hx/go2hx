package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testBasicEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
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
stdgo.Go.toInterface((12345678 : stdgo.GoUIntptr)),
stdgo.Go.toInterface(((1.2345 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface((1.2345678 : stdgo.GoFloat64)),
stdgo.Go.toInterface(((1.2345f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2.3456f64) : stdgo.GoComplex64)),
stdgo.Go.toInterface(((1.2345678f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2.3456789f64) : stdgo.GoComplex128)),
stdgo.Go.toInterface((("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface(("hello" : stdgo.GoString))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__8 => _value in _values) {
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
            var _err = (@:check2r _enc.encode(_value) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
            var _result = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(_value))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _err = @:check2r _dec.decode(_result.interface_());
            if (_err != null) {
                @:check2r _t.fatalf(("error decoding %T: %v:" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeOf.typeOf(_value)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_value, _result.elem().interface_())) {
                @:check2r _t.fatalf(("%T: expected %v got %v" : stdgo.GoString), _value, _value, _result.elem().interface_());
            };
        };
    }
