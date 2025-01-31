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
function testReorderedFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rt0:stdgo._internal.encoding.gob.Gob_RT0.RT0 = ({} : stdgo._internal.encoding.gob.Gob_RT0.RT0);
        _rt0.a = (17 : stdgo.GoInt);
        _rt0.b = ("hello" : stdgo.GoString);
        _rt0.c = (3.14159 : stdgo.GoFloat64);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_rt0)));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _rt1:stdgo._internal.encoding.gob.Gob_RT1.RT1 = ({} : stdgo._internal.encoding.gob.Gob_RT1.RT1);
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rt1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((_rt0.a != (_rt1.a) || _rt0.b != (_rt1.b) : Bool) || (_rt0.c != _rt1.c) : Bool)) {
            @:check2r _t.errorf(("rt1->rt0: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt1)));
        };
    }
