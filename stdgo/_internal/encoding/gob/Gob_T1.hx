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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T1_static_extension.T1_static_extension) class T1 {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var c : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>);
    public var d : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>>);
    public function new(?a:stdgo.GoInt, ?b:stdgo.Pointer<stdgo.GoInt>, ?c:stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>, ?d:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T1(a, b, c, d);
    }
}
