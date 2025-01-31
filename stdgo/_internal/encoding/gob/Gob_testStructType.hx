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
function testStructType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _sstruct = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("Foo" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_Foo.Foo() : stdgo._internal.encoding.gob.Gob_Foo.Foo))))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        var _str = (_sstruct._string()?.__copy__() : stdgo.GoString);
        var _expected = ("Foo = struct { A int; B int; C string; D bytes; E float; F float; G Bar = struct { X string; }; H Bar; I Foo; }" : stdgo.GoString);
        if (_str != (_expected)) {
            @:check2r _t.errorf(("struct printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
