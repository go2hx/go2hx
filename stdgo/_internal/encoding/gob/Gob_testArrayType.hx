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
function testArrayType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a3:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3).__setNumber32__();
        var _a3int = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("foo" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_a3))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        var _newa3int = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("bar" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_a3))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_a3int) != (stdgo.Go.toInterface(_newa3int))) {
            @:check2r _t.errorf(("second registration of [3]int creates new type" : stdgo.GoString));
        };
        var _a4:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a4int = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("goo" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_a4))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_a3int) == (stdgo.Go.toInterface(_a4int))) {
            @:check2r _t.errorf(("registration of [3]int creates same type as [4]int" : stdgo.GoString));
        };
        var _b3:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(3, 3);
        var _a3bool = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(stdgo.Go.str()?.__copy__(), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_b3))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_a3int) == (stdgo.Go.toInterface(_a3bool))) {
            @:check2r _t.errorf(("registration of [3]bool creates same type as [3]int" : stdgo.GoString));
        };
        var _str = (_a3bool._string()?.__copy__() : stdgo.GoString);
        var _expected = ("[3]bool" : stdgo.GoString);
        if (_str != (_expected)) {
            @:check2r _t.errorf(("array printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
