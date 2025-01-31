package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function testBitSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in stdgo._internal.math.big.Big__bitwiseTests._bitwiseTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            @:check2r _x.setString(_test._x?.__copy__(), (0 : stdgo.GoInt));
            stdgo._internal.math.big.Big__testBitset._testBitset(_t, _x);
            _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            @:check2r _x.setString(_test._y?.__copy__(), (0 : stdgo.GoInt));
            stdgo._internal.math.big.Big__testBitset._testBitset(_t, _x);
        };
        for (_i => _test in stdgo._internal.math.big.Big__bitsetTests._bitsetTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            @:check2r _x.setString(_test._x?.__copy__(), (0 : stdgo.GoInt));
            var _b = (@:check2r _x.bit(_test._i) : stdgo.GoUInt);
            if (_b != (_test._b)) {
                @:check2r _t.errorf(("#%d got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_test._b));
            };
        };
        var _z = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        @:check2r _z.setBit(stdgo._internal.math.big.Big_newInt.newInt((0i64 : stdgo.GoInt64)), (2 : stdgo.GoInt), (1u32 : stdgo.GoUInt));
        if (@:check2r _z.cmp(stdgo._internal.math.big.Big_newInt.newInt((4i64 : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("destination leaked into result; got %s want 4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
    }
