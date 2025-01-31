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
function testExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__expTests._expTests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._x?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok1:Bool = __tmp__._1;
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._y?.__copy__(), (0 : stdgo.GoInt)), _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok2:Bool = __tmp__._1;
            var __0:Bool = false, __1:Bool = false;
var _ok4 = __1, _ok3 = __0;
            var __0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
var _m = __1, _out = __0;
            if ((_test._out.length) == ((0 : stdgo.GoInt))) {
                {
                    final __tmp__0 = null;
                    final __tmp__1 = true;
                    _out = __tmp__0;
                    _ok3 = __tmp__1;
                };
            } else {
                {
                    var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._out?.__copy__(), (0 : stdgo.GoInt));
                    _out = @:tmpset0 __tmp__._0;
                    _ok3 = @:tmpset0 __tmp__._1;
                };
            };
            if ((_test._m.length) == ((0 : stdgo.GoInt))) {
                {
                    final __tmp__0 = null;
                    final __tmp__1 = true;
                    _m = __tmp__0;
                    _ok4 = __tmp__1;
                };
            } else {
                {
                    var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._m?.__copy__(), (0 : stdgo.GoInt));
                    _m = @:tmpset0 __tmp__._0;
                    _ok4 = @:tmpset0 __tmp__._1;
                };
            };
            if ((((!_ok1 || !_ok2 : Bool) || !_ok3 : Bool) || !_ok4 : Bool)) {
                @:check2r _t.errorf(("#%d: error in input" : stdgo.GoString), stdgo.Go.toInterface(_i));
                continue;
            };
            var _z1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).exp(_x, _y, _m);
            if (((_z1 != null && ((_z1 : Dynamic).__nil__ == null || !(_z1 : Dynamic).__nil__)) && !stdgo._internal.math.big.Big__isNormalized._isNormalized(_z1) : Bool)) {
                @:check2r _t.errorf(("#%d: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_z1 : stdgo._internal.math.big.Big_Int_.Int_))));
            };
            if (!((((_z1 == null || (_z1 : Dynamic).__nil__) && (_out == null || (_out : Dynamic).__nil__) : Bool) || (@:check2r _z1.cmp(_out) == (0 : stdgo.GoInt)) : Bool))) {
                @:check2r _t.errorf(("#%d: got %x want %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)));
            };
            if ((_m == null || (_m : Dynamic).__nil__)) {
                _m = (stdgo.Go.setRef(({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(0, 0, ...[]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat) } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                var _z2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).exp(_x, _y, _m);
                if (@:check2r _z2.cmp(_z1) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("#%d: got %x want %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_z2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
                };
            };
        };
    }
