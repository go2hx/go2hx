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
function testMapType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _mapStringInt = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("map" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_m))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        var _newm:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _newMapStringInt = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("map1" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_newm))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_mapStringInt) != (stdgo.Go.toInterface(_newMapStringInt))) {
            @:check2r _t.errorf(("second registration of map[string]int creates new type" : stdgo.GoString));
        };
        var _b:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _mapStringBool = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(stdgo.Go.str()?.__copy__(), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_b))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_mapStringBool) == (stdgo.Go.toInterface(_mapStringInt))) {
            @:check2r _t.errorf(("registration of map[string]bool creates same type as map[string]int" : stdgo.GoString));
        };
        var _str = (_mapStringBool._string()?.__copy__() : stdgo.GoString);
        var _expected = ("map[string]bool" : stdgo.GoString);
        if (_str != (_expected)) {
            @:check2r _t.errorf(("map printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
