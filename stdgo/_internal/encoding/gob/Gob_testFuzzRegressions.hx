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
function testFuzzRegressions(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!stdgo._internal.encoding.gob.Gob__doFuzzTests._doFuzzTests.value) {
            @:check2r _t.skipf(("disabled; run with -gob.fuzz to enable" : stdgo.GoString));
        };
        stdgo._internal.encoding.gob.Gob__testFuzz._testFuzz(_t, (1328492090837718000i64 : stdgo.GoInt64), (100 : stdgo.GoInt), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoFloat32))));
        stdgo._internal.encoding.gob.Gob__testFuzz._testFuzz(_t, (1330522872628565000i64 : stdgo.GoInt64), (100 : stdgo.GoInt), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))));
    }
