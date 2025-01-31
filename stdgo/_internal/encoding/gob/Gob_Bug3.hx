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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_Bug3_static_extension.Bug3_static_extension) class Bug3 {
    public var num : stdgo.GoInt = 0;
    public var children : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>);
    public function new(?num:stdgo.GoInt, ?children:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>) {
        if (num != null) this.num = num;
        if (children != null) this.children = children;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug3(num, children);
    }
}
