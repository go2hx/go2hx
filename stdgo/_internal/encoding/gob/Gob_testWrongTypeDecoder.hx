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
function testWrongTypeDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.gob.Gob__badTypeCheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>))), true, ("no fields in common" : stdgo.GoString), _t);
        stdgo._internal.encoding.gob.Gob__badTypeCheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET3.ET3)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET3.ET3>))), false, ("different name of field" : stdgo.GoString), _t);
        stdgo._internal.encoding.gob.Gob__badTypeCheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET4.ET4)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET4.ET4>))), true, ("different type of field" : stdgo.GoString), _t);
    }
