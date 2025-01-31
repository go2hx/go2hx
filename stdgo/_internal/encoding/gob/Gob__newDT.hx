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
function _newDT():stdgo._internal.encoding.gob.Gob_DT.DT {
        var _dt:stdgo._internal.encoding.gob.Gob_DT.DT = ({} : stdgo._internal.encoding.gob.Gob_DT.DT);
        _dt.a = (17 : stdgo.GoInt);
        _dt.b = ("hello" : stdgo.GoString);
        _dt.c = (3.14159 : stdgo.GoFloat64);
        _dt.i = stdgo.Go.toInterface((271828 : stdgo.GoInt));
        _dt.j = stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_OnTheFly.OnTheFly((3 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_OnTheFly.OnTheFly)));
        _dt.i_nil = (null : stdgo.AnyInterface);
        _dt.m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        _dt.t = (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(11 : stdgo.GoInt), (22 : stdgo.GoInt), (33 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        _dt.s = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hi" : stdgo.GoString), ("joe" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        return _dt?.__copy__();
    }
