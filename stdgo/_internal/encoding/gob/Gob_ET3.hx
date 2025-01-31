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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_ET3_static_extension.ET3_static_extension) class ET3 {
    public var a : stdgo.GoInt = 0;
    public var et2 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>);
    public var differentNext : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>);
    public function new(?a:stdgo.GoInt, ?et2:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>, ?differentNext:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (differentNext != null) this.differentNext = differentNext;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET3(a, et2, differentNext);
    }
}
