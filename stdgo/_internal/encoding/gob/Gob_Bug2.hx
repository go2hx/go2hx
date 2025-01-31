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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_Bug2_static_extension.Bug2_static_extension) class Bug2 {
    public var a : stdgo.GoInt = 0;
    public var c : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
    public var cP : stdgo.Ref<stdgo.Chan<stdgo.GoInt>> = (null : stdgo.Ref<stdgo.Chan<stdgo.GoInt>>);
    public var f : () -> Void = null;
    public var fPP : stdgo.Pointer<stdgo.Pointer<() -> Void>> = (null : stdgo.Pointer<stdgo.Pointer<() -> Void>>);
    public function new(?a:stdgo.GoInt, ?c:stdgo.Chan<stdgo.GoInt>, ?cP:stdgo.Ref<stdgo.Chan<stdgo.GoInt>>, ?f:() -> Void, ?fPP:stdgo.Pointer<stdgo.Pointer<() -> Void>>) {
        if (a != null) this.a = a;
        if (c != null) this.c = c;
        if (cP != null) this.cP = cP;
        if (f != null) this.f = f;
        if (fPP != null) this.fPP = fPP;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug2(a, c, cP, f, fPP);
    }
}
