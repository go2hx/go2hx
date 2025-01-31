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
function testIgnoredFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _it0:stdgo._internal.encoding.gob.Gob_IT0.IT0 = ({} : stdgo._internal.encoding.gob.Gob_IT0.IT0);
        _it0.a = (17i64 : stdgo.GoInt64);
        _it0.b = ("hello" : stdgo.GoString);
        _it0.c = (3.14159 : stdgo.GoFloat64);
        _it0.ignore_d = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _it0.ignore_e[(0 : stdgo.GoInt)] = (1 : stdgo.GoFloat64);
        _it0.ignore_e[(1 : stdgo.GoInt)] = (2 : stdgo.GoFloat64);
        _it0.ignore_e[(2 : stdgo.GoInt)] = (3 : stdgo.GoFloat64);
        _it0.ignore_f = true;
        _it0.ignore_g = ("pay no attention" : stdgo.GoString);
        _it0.ignore_h = (("to the curtain" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _it0.ignore_i = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_RT1.RT1((3.1 : stdgo.GoFloat64), ("hi" : stdgo.GoString), (7 : stdgo.GoInt), ("hello" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_RT1.RT1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>);
        _it0.ignore_m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it0)));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _rt1:stdgo._internal.encoding.gob.Gob_RT1.RT1 = ({} : stdgo._internal.encoding.gob.Gob_RT1.RT1);
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rt1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("error: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((((_it0.a : stdgo.GoInt) != (_rt1.a) || _it0.b != (_rt1.b) : Bool) || (_it0.c != _rt1.c) : Bool)) {
            @:check2r _t.errorf(("rt0->rt1: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_it0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt1)));
        };
    }
