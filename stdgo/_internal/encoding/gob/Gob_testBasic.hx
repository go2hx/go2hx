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
function testBasic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _tt in stdgo._internal.encoding.gob.Gob__basicTypes._basicTypes) {
            if (_tt._id._string() != (_tt._str)) {
                @:check2r _t.errorf(("checkType: expected %q got %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._str), stdgo.Go.toInterface(_tt._id._string()));
            };
            if (_tt._id == ((0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId))) {
                @:check2r _t.errorf(("id for %q is zero" : stdgo.GoString), stdgo.Go.toInterface(_tt._str));
            };
        };
    }
