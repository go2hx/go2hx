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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_GobTest1_static_extension.GobTest1_static_extension) class GobTest1 {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>);
    public function new(?x:stdgo.GoInt, ?g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest1(x, g);
    }
}
