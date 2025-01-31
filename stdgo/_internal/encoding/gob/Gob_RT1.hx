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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_RT1_static_extension.RT1_static_extension) class RT1 {
    public var c : stdgo.GoFloat64 = 0;
    public var b : stdgo.GoString = "";
    public var a : stdgo.GoInt = 0;
    public var notSet : stdgo.GoString = "";
    public function new(?c:stdgo.GoFloat64, ?b:stdgo.GoString, ?a:stdgo.GoInt, ?notSet:stdgo.GoString) {
        if (c != null) this.c = c;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
        if (notSet != null) this.notSet = notSet;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RT1(c, b, a, notSet);
    }
}
