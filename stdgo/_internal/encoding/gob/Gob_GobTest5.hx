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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_GobTest5_static_extension.GobTest5_static_extension) class GobTest5 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>);
    public var bV : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>);
    public var tV : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>);
    public function new(?x:stdgo.GoInt, ?v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>, ?bV:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>, ?tV:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (bV != null) this.bV = bV;
        if (tV != null) this.tV = tV;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest5(x, v, bV, tV);
    }
}
