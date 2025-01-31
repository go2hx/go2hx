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
function testCatchInvalidNilValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.gob.Gob__encodeAndRecover._encodeAndRecover((null : stdgo.AnyInterface)), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        if (_panicErr != null) {
            @:check2r _t.fatalf(("panicErr=%v, should not panic encoding untyped nil" : stdgo.GoString), stdgo.Go.toInterface(_panicErr));
        };
        if (_encodeErr == null) {
            @:check2r _t.errorf(("got err=nil, want non-nil error when encoding untyped nil value" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_encodeErr.error()?.__copy__(), ("nil value" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected \'nil value\' error; got err=%v" : stdgo.GoString), stdgo.Go.toInterface(_encodeErr));
        };
    }
