package stdgo._internal.math.big;
function testZeroRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __0:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat), __1:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat), __2:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
var _z = __2, _y = __1, _x = __0;
            _y.setFrac64((0i64 : stdgo.GoInt64), (42i64 : stdgo.GoInt64));
            if (_x.cmp((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>)) != ((0 : stdgo.GoInt))) {
                _t.errorf(("x and y should be both equal and zero" : stdgo.GoString));
            };
            {
                var _s = ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (("0/1" : stdgo.GoString))) {
                    _t.errorf(("got x = %s, want 0/1" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            {
                var _s = (_x.ratString()?.__copy__() : stdgo.GoString);
                if (_s != (("0" : stdgo.GoString))) {
                    _t.errorf(("got x = %s, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            _z.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>));
            {
                var _s = (_z.ratString()?.__copy__() : stdgo.GoString);
                if (_s != (("0" : stdgo.GoString))) {
                    _t.errorf(("got x+y = %s, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            _z.sub((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>));
            {
                var _s = (_z.ratString()?.__copy__() : stdgo.GoString);
                if (_s != (("0" : stdgo.GoString))) {
                    _t.errorf(("got x-y = %s, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            _z.mul((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>));
            {
                var _s = (_z.ratString()?.__copy__() : stdgo.GoString);
                if (_s != (("0" : stdgo.GoString))) {
                    _t.errorf(("got x*y = %s, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        {
                            var _s = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (((_s == null) || ((stdgo.Go.typeAssert((_s : stdgo.GoString)) : stdgo.GoString) != ("division by zero" : stdgo.GoString)) : Bool)) {
                                throw stdgo.Go.toInterface(_s);
                            };
                        };
                    };
                    a();
                }));
            };
            _z.quo((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
