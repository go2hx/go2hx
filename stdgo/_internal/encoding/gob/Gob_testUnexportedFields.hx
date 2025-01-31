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
function testUnexportedFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _u0:stdgo._internal.encoding.gob.Gob_U.U = ({} : stdgo._internal.encoding.gob.Gob_U.U);
        _u0.a = (17 : stdgo.GoInt);
        _u0.b = ("hello" : stdgo.GoString);
        _u0._c = (3.14159 : stdgo.GoFloat64);
        _u0.d = (23u32 : stdgo.GoUInt);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_u0)));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _u1:stdgo._internal.encoding.gob.Gob_U.U = ({} : stdgo._internal.encoding.gob.Gob_U.U);
        _u1._c = (1234 : stdgo.GoFloat64);
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_u1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_U.U>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((_u0.a != (_u1.a) || _u0.b != (_u1.b) : Bool) || (_u0.d != _u1.d) : Bool)) {
            @:check2r _t.errorf(("u1->u0: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_u0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_u1)));
        };
        if (_u1._c != (1234 : stdgo.GoFloat64)) {
            @:check2r _t.error(stdgo.Go.toInterface(("u1.c modified" : stdgo.GoString)));
        };
    }
