package stdgo._internal.math.big;
function testMontgomery(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _one = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        var __B = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_one, (32u32 : stdgo.GoUInt));
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
                var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._div(null, _x, _m), __14:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._1;
                _t.errorf(("#%d: x > m (0x%s > 0x%s; use 0x%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_m._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_r._utoa((16 : stdgo.GoInt))));
            };
            if ((_y._cmp(_m) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._div(null, _x, _m), __14:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._1;
                _t.errorf(("#%d: y > m (0x%s > 0x%s; use 0x%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_y._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_m._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_r._utoa((16 : stdgo.GoInt))));
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
            var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mod((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_xi, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_yi, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_one, ((_m.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt)), _mi))), _mi);
            if (_out._cmp(_p._abs._norm()) != ((0 : stdgo.GoInt))) {
                _t.errorf(("#%d: out in table=0x%s, computed=0x%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_p._abs._norm()._utoa((16 : stdgo.GoInt))));
            };
            var _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mod((stdgo.Go.setRef(({ _abs : _m } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __B);
            _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(__B, _k);
            _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mod(_k, __B);
            var _k0 = ((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_k, __B).uint64() : stdgo._internal.math.big.Big_Word.Word);
            if (_k0 != ((_test._k0 : stdgo._internal.math.big.Big_Word.Word))) {
                _t.errorf(("#%d: k0 in table=%#x, computed=%#x\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._k0), stdgo.Go.toInterface(_k0));
            };
            var _z = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._montgomery(_x, _y, _m, _k0, (_m.length)) : stdgo._internal.math.big.Big_T_nat.T_nat);
            _z = _z._norm();
            if (_z._cmp(_out) != ((0 : stdgo.GoInt))) {
                _t.errorf(("#%d: got 0x%s want 0x%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_z._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_out._utoa((16 : stdgo.GoInt))));
            };
        };
    }