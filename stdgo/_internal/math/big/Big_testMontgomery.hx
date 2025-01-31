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
function testMontgomery(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _one = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        var __B = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_one, (32u32 : stdgo.GoUInt));
        for (_i => _test in stdgo._internal.math.big.Big__montgomeryTests._montgomeryTests) {
            var _x = (stdgo._internal.math.big.Big__natFromString._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_T_nat.T_nat);
            var _y = (stdgo._internal.math.big.Big__natFromString._natFromString(_test._y?.__copy__()) : stdgo._internal.math.big.Big_T_nat.T_nat);
            var _m = (stdgo._internal.math.big.Big__natFromString._natFromString(_test._m?.__copy__()) : stdgo._internal.math.big.Big_T_nat.T_nat);
            while (((_x.length) < (_m.length) : Bool)) {
                _x = (_x.__append__((0u32 : stdgo._internal.math.big.Big_Word.Word)));
            };
            while (((_y.length) < (_m.length) : Bool)) {
                _y = (_y.__append__((0u32 : stdgo._internal.math.big.Big_Word.Word)));
            };
            if ((_x._cmp(_m) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._div(null, _x, _m), __8:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._1;
                @:check2r _t.errorf(("#%d: x > m (0x%s > 0x%s; use 0x%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_m._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_r._utoa((16 : stdgo.GoInt))));
            };
            if ((_y._cmp(_m) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._div(null, _x, _m), __8:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._1;
                @:check2r _t.errorf(("#%d: y > m (0x%s > 0x%s; use 0x%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_y._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_m._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_r._utoa((16 : stdgo.GoInt))));
            };
            var _out:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
            if (true) {
                _out = stdgo._internal.math.big.Big__natFromString._natFromString(_test._out32?.__copy__());
            } else {
                _out = stdgo._internal.math.big.Big__natFromString._natFromString(_test._out64?.__copy__());
            };
            var _xi = (stdgo.Go.setRef(({ _abs : _x } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _yi = (stdgo.Go.setRef(({ _abs : _y } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _mi = (stdgo.Go.setRef(({ _abs : _m } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            var _p = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mod(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_xi, @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_yi, @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_one, ((_m.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt)), _mi))), _mi);
            if (_out._cmp((@:checkr _p ?? throw "null pointer dereference")._abs._norm()) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d: out in table=0x%s, computed=0x%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._abs._norm()._utoa((16 : stdgo.GoInt))));
            };
            var _k = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mod((stdgo.Go.setRef(({ _abs : _m } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __B);
            _k = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(__B, _k);
            _k = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mod(_k, __B);
            var _k0 = (@:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_k, __B).uint64() : stdgo._internal.math.big.Big_Word.Word);
            if (_k0 != ((_test._k0 : stdgo._internal.math.big.Big_Word.Word))) {
                @:check2r _t.errorf(("#%d: k0 in table=%#x, computed=%#x\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._k0), stdgo.Go.toInterface(_k0));
            };
            var _z = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._montgomery(_x, _y, _m, _k0, (_m.length)) : stdgo._internal.math.big.Big_T_nat.T_nat);
            _z = _z._norm();
            if (_z._cmp(_out) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d: got 0x%s want 0x%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_z._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_out._utoa((16 : stdgo.GoInt))));
            };
        };
    }
