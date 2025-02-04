package stdgo._internal.math.big;
function testZeroRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __0:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat), __1:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat), __2:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
var _z = __2, _y = __1, _x = __0;
            @:check2 _y.setFrac64((0i64 : stdgo.GoInt64), (42i64 : stdgo.GoInt64));
            if (@:check2 _x.cmp((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("x and y should be both equal and zero" : stdgo.GoString));
            };
            {
                var _s = ((@:check2 _x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (("0/1" : stdgo.GoString))) {
                    @:check2r _t.errorf(("got x = %s, want 0/1" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            {
                var _s = (@:check2 _x.ratString()?.__copy__() : stdgo.GoString);
                if (_s != (("0" : stdgo.GoString))) {
                    @:check2r _t.errorf(("got x = %s, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            @:check2 _z.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>));
            {
                var _s = (@:check2 _z.ratString()?.__copy__() : stdgo.GoString);
                if (_s != (("0" : stdgo.GoString))) {
                    @:check2r _t.errorf(("got x+y = %s, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            @:check2 _z.sub((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>));
            {
                var _s = (@:check2 _z.ratString()?.__copy__() : stdgo.GoString);
                if (_s != (("0" : stdgo.GoString))) {
                    @:check2r _t.errorf(("got x-y = %s, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            @:check2 _z.mul((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>));
            {
                var _s = (@:check2 _z.ratString()?.__copy__() : stdgo.GoString);
                if (_s != (("0" : stdgo.GoString))) {
                    @:check2r _t.errorf(("got x*y = %s, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
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
                }) });
            };
            @:check2 _z.quo((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
