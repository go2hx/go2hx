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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533_static_extension.T_testOverflow___localname___outf32_18533_static_extension) class T_testOverflow___localname___outf32_18533 {
    public var maxf : stdgo.GoFloat32 = 0;
    public var minf : stdgo.GoFloat32 = 0;
    public function new(?maxf:stdgo.GoFloat32, ?minf:stdgo.GoFloat32) {
        if (maxf != null) this.maxf = maxf;
        if (minf != null) this.minf = minf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___outf32_18533(maxf, minf);
    }
}
