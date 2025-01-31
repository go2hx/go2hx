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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885_static_extension.T_testOverflow___localname___inputT_15885_static_extension) class T_testOverflow___localname___inputT_15885 {
    public var maxi : stdgo.GoInt64 = 0;
    public var mini : stdgo.GoInt64 = 0;
    public var maxu : stdgo.GoUInt64 = 0;
    public var maxf : stdgo.GoFloat64 = 0;
    public var minf : stdgo.GoFloat64 = 0;
    public var maxc : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var minc : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public function new(?maxi:stdgo.GoInt64, ?mini:stdgo.GoInt64, ?maxu:stdgo.GoUInt64, ?maxf:stdgo.GoFloat64, ?minf:stdgo.GoFloat64, ?maxc:stdgo.GoComplex128, ?minc:stdgo.GoComplex128) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
        if (maxu != null) this.maxu = maxu;
        if (maxf != null) this.maxf = maxf;
        if (minf != null) this.minf = minf;
        if (maxc != null) this.maxc = maxc;
        if (minc != null) this.minc = minc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___inputT_15885(maxi, mini, maxu, maxf, minf, maxc, minc);
    }
}
