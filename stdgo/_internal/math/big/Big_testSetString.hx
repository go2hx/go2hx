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
function testSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tmp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        for (_i => _test in stdgo._internal.math.big.Big__stringTests._stringTests) {
            @:check2r _tmp.setInt64((1234567890i64 : stdgo.GoInt64));
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._in?.__copy__(), _test._base), _n1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok1:Bool = __tmp__._1;
            var __tmp__ = @:check2r _tmp.setString(_test._in?.__copy__(), _test._base), _n2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok2:Bool = __tmp__._1;
            var _expected = stdgo._internal.math.big.Big_newInt.newInt(_test._val);
            if (((_ok1 != _test._ok) || (_ok2 != _test._ok) : Bool)) {
                @:check2r _t.errorf(("#%d (input \'%s\') ok incorrect (should be %t)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._ok));
                continue;
            };
            if (!_ok1) {
                if ((_n1 != null && ((_n1 : Dynamic).__nil__ == null || !(_n1 : Dynamic).__nil__))) {
                    @:check2r _t.errorf(("#%d (input \'%s\') n1 != nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                };
                continue;
            };
            if (!_ok2) {
                if ((_n2 != null && ((_n2 : Dynamic).__nil__ == null || !(_n2 : Dynamic).__nil__))) {
                    @:check2r _t.errorf(("#%d (input \'%s\') n2 != nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                };
                continue;
            };
            if ((_ok1 && !stdgo._internal.math.big.Big__isNormalized._isNormalized(_n1) : Bool)) {
                @:check2r _t.errorf(("#%d (input \'%s\'): %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface((_n1 : stdgo._internal.math.big.Big_Int_.Int_))));
            };
            if ((_ok2 && !stdgo._internal.math.big.Big__isNormalized._isNormalized(_n2) : Bool)) {
                @:check2r _t.errorf(("#%d (input \'%s\'): %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface((_n2 : stdgo._internal.math.big.Big_Int_.Int_))));
            };
            if (@:check2r _n1.cmp(_expected) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d (input \'%s\') got: %s want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_n1)), stdgo.Go.toInterface(_test._val));
            };
            if (@:check2r _n2.cmp(_expected) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d (input \'%s\') got: %s want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_n2)), stdgo.Go.toInterface(_test._val));
            };
        };
    }
