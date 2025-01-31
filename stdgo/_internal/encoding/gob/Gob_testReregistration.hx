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
function testReregistration(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _newtyp = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("int" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tInt._tInt._gobType()))) {
            @:check2r _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
        _newtyp = stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("uint" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0u32 : stdgo.GoUInt))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tUint._tUint._gobType()))) {
            @:check2r _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
        _newtyp = stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("string" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(("hello" : stdgo.GoString))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tString._tString._gobType()))) {
            @:check2r _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
    }
