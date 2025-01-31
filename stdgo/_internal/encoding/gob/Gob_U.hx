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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_U_static_extension.U_static_extension) class U {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public var _c : stdgo.GoFloat64 = 0;
    public var d : stdgo.GoUInt = 0;
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString, ?_c:stdgo.GoFloat64, ?d:stdgo.GoUInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (_c != null) this._c = _c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new U(a, b, _c, d);
    }
}
