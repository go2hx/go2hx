package stdgo._internal.math.big;
function testMontgomery(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _one = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        var __B = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_one, (32u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L443"
        for (_i => _test in stdgo._internal.math.big.Big__montgomerytests._montgomeryTests) {
            var _x = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _y = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._y?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _m = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._m?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L447"
            while (((_x.length) < (_m.length) : Bool)) {
                _x = (_x.__append__((0u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L450"
            while (((_y.length) < (_m.length) : Bool)) {
                _y = (_y.__append__((0u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L454"
            if ((_x._cmp(_m) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div(null, _x, _m), __8:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L456"
                _t.errorf(("#%d: x > m (0x%s > 0x%s; use 0x%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_m._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_r._utoa((16 : stdgo.GoInt))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L458"
            if ((_y._cmp(_m) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div(null, _x, _m), __8:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L460"
                _t.errorf(("#%d: y > m (0x%s > 0x%s; use 0x%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_y._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_m._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_r._utoa((16 : stdgo.GoInt))));
            };
            var _out:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L464"
            if (true) {
                _out = stdgo._internal.math.big.Big__natfromstring._natFromString(_test._out32?.__copy__());
            } else {
                _out = stdgo._internal.math.big.Big__natfromstring._natFromString(_test._out64?.__copy__());
            };
            var _xi = (stdgo.Go.setRef(({ _abs : _x } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            var _yi = (stdgo.Go.setRef(({ _abs : _y } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            var _mi = (stdgo.Go.setRef(({ _abs : _m } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            var _p = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_xi, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_yi, (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_one, ((_m.length : stdgo.GoUInt) * (32u32 : stdgo.GoUInt) : stdgo.GoUInt)), _mi))), _mi);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L477"
            if (_out._cmp((@:checkr _p ?? throw "null pointer dereference")._abs._norm()) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L478"
                _t.errorf(("#%d: out in table=0x%s, computed=0x%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._abs._norm()._utoa((16 : stdgo.GoInt))));
            };
            var _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod((stdgo.Go.setRef(({ _abs : _m } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __B);
            _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(__B, _k);
            _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod(_k, __B);
            var _k0 = ((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_k, __B).uint64() : stdgo._internal.math.big.Big_word.Word);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L486"
            if (_k0 != ((_test._k0 : stdgo._internal.math.big.Big_word.Word))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L487"
                _t.errorf(("#%d: k0 in table=%#x, computed=%#x\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._k0), stdgo.Go.toInterface(_k0));
            };
            var _z = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._montgomery(_x, _y, _m, _k0, (_m.length)) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _z = _z._norm();
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L493"
            if (_z._cmp(_out) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L494"
                _t.errorf(("#%d: got 0x%s want 0x%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_z._utoa((16 : stdgo.GoInt))), stdgo.Go.toInterface(_out._utoa((16 : stdgo.GoInt))));
            };
        };
    }
