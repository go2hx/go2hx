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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_InterfaceItem_static_extension.InterfaceItem_static_extension) class InterfaceItem {
    public var i : stdgo.GoInt = 0;
    public var sq1 : stdgo._internal.encoding.gob.Gob_Squarer.Squarer = (null : stdgo._internal.encoding.gob.Gob_Squarer.Squarer);
    public var sq2 : stdgo._internal.encoding.gob.Gob_Squarer.Squarer = (null : stdgo._internal.encoding.gob.Gob_Squarer.Squarer);
    public var sq3 : stdgo._internal.encoding.gob.Gob_Squarer.Squarer = (null : stdgo._internal.encoding.gob.Gob_Squarer.Squarer);
    public var f : stdgo.GoFloat64 = 0;
    public var sq : stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer>);
    public function new(?i:stdgo.GoInt, ?sq1:stdgo._internal.encoding.gob.Gob_Squarer.Squarer, ?sq2:stdgo._internal.encoding.gob.Gob_Squarer.Squarer, ?sq3:stdgo._internal.encoding.gob.Gob_Squarer.Squarer, ?f:stdgo.GoFloat64, ?sq:stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer>) {
        if (i != null) this.i = i;
        if (sq1 != null) this.sq1 = sq1;
        if (sq2 != null) this.sq2 = sq2;
        if (sq3 != null) this.sq3 = sq3;
        if (f != null) this.f = f;
        if (sq != null) this.sq = sq;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InterfaceItem(i, sq1, sq2, sq3, f, sq);
    }
}
