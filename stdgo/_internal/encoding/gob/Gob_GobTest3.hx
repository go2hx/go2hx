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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_GobTest3_static_extension.GobTest3_static_extension) class GobTest3 {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Gobber.Gobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Gobber.Gobber>);
    public var b : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber>);
    public var t : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber>);
    public function new(?x:stdgo.GoInt, ?g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Gobber.Gobber>, ?b:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber>, ?t:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest3(x, g, b, t);
    }
}
