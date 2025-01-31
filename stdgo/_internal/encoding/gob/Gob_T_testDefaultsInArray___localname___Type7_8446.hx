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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446_static_extension.T_testDefaultsInArray___localname___Type7_8446_static_extension) class T_testDefaultsInArray___localname___Type7_8446 {
    public var b : stdgo.Slice<Bool> = (null : stdgo.Slice<Bool>);
    public var i : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var s : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var f : stdgo.Slice<stdgo.GoFloat64> = (null : stdgo.Slice<stdgo.GoFloat64>);
    public function new(?b:stdgo.Slice<Bool>, ?i:stdgo.Slice<stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoString>, ?f:stdgo.Slice<stdgo.GoFloat64>) {
        if (b != null) this.b = b;
        if (i != null) this.i = i;
        if (s != null) this.s = s;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testDefaultsInArray___localname___Type7_8446(b, i, s, f);
    }
}
