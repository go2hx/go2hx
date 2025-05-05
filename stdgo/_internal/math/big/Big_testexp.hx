package stdgo._internal.math.big;
function testExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L610"
        for (_i => _test in stdgo._internal.math.big.Big__exptests._expTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._x?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok1:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._y?.__copy__(), (0 : stdgo.GoInt)), _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok2:Bool = __tmp__._1;
            var _ok3:Bool = false, _ok4:Bool = false;
            var _out:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L617"
            if ((_test._out.length) == ((0 : stdgo.GoInt))) {
                {
                    final __tmp__0 = null;
                    final __tmp__1 = true;
                    _out = @:binopAssign __tmp__0;
                    _ok3 = @:binopAssign __tmp__1;
                };
            } else {
                {
                    var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._out?.__copy__(), (0 : stdgo.GoInt));
                    _out = @:tmpset0 __tmp__._0;
                    _ok3 = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L623"
            if ((_test._m.length) == ((0 : stdgo.GoInt))) {
                {
                    final __tmp__0 = null;
                    final __tmp__1 = true;
                    _m = @:binopAssign __tmp__0;
                    _ok4 = @:binopAssign __tmp__1;
                };
            } else {
                {
                    var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._m?.__copy__(), (0 : stdgo.GoInt));
                    _m = @:tmpset0 __tmp__._0;
                    _ok4 = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L629"
            if ((((!_ok1 || !_ok2 : Bool) || !_ok3 : Bool) || !_ok4 : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L630"
                _t.errorf(("#%d: error in input" : stdgo.GoString), stdgo.Go.toInterface(_i));
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L631"
                continue;
            };
            var _z1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).exp(_x, _y, _m);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L635"
            if ((({
                final value = _z1;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && !stdgo._internal.math.big.Big__isnormalized._isNormalized(_z1) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L636"
                _t.errorf(("#%d: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_z1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L638"
            if (!(((({
                final value = _z1;
                (value == null || (value : Dynamic).__nil__);
            }) && ({
                final value = _out;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool) || (_z1.cmp(_out) == (0 : stdgo.GoInt)) : Bool))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L639"
                _t.errorf(("#%d: got %x want %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L642"
            if (({
                final value = _m;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _m = (stdgo.Go.setRef(({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(0, 0, ...[]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat) } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                var _z2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).exp(_x, _y, _m);
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L647"
                if (_z2.cmp(_z1) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L648"
                    _t.errorf(("#%d: got %x want %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_z2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
                };
            };
        };
    }
