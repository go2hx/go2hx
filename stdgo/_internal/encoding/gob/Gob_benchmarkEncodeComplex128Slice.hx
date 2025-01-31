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
function benchmarkEncodeComplex128Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoComplex128>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoComplex128>);
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = ((1.2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 3.4f64));
        };
        stdgo._internal.encoding.gob.Gob__benchmarkEncodeSlice._benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
