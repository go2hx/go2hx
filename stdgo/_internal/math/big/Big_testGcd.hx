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
function testGcd(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in stdgo._internal.math.big.Big__gcdTests._gcdTests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._d?.__copy__(), (0 : stdgo.GoInt)), _d:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._x?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __10:Bool = __tmp__._1;
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._y?.__copy__(), (0 : stdgo.GoInt)), _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __11:Bool = __tmp__._1;
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._a?.__copy__(), (0 : stdgo.GoInt)), _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __12:Bool = __tmp__._1;
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._b?.__copy__(), (0 : stdgo.GoInt)), _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __13:Bool = __tmp__._1;
            stdgo._internal.math.big.Big__testGcd._testGcd(_t, _d, null, null, _a, _b);
            stdgo._internal.math.big.Big__testGcd._testGcd(_t, _d, _x, null, _a, _b);
            stdgo._internal.math.big.Big__testGcd._testGcd(_t, _d, null, _y, _a, _b);
            stdgo._internal.math.big.Big__testGcd._testGcd(_t, _d, _x, _y, _a, _b);
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkGcd._checkGcd), null) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkLehmerGcd._checkLehmerGcd), null) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkLehmerExtGcd._checkLehmerExtGcd), null) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
