package stdgo._internal.slices;
function testGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _copy = stdgo._internal.slices.Slices_clone.clone(_s1);
        var _s2 = stdgo._internal.slices.Slices_grow.grow(_copy, (1000 : stdgo.GoInt));
        if (!stdgo._internal.slices.Slices_equal.equal(_s1, _s2)) {
            @:check2r _t.errorf(("Grow(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        if ((_s2.capacity < ((1000 : stdgo.GoInt) + (_s1.length) : stdgo.GoInt) : Bool)) {
            @:check2r _t.errorf(("after Grow(%v) cap = %d, want >= %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2.capacity), stdgo.Go.toInterface(((1000 : stdgo.GoInt) + (_s1.length) : stdgo.GoInt)));
        };
        _copy = stdgo._internal.slices.Slices_clone.clone(_s1);
        var _s3 = (stdgo._internal.slices.Slices_grow.grow((_copy.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), (2 : stdgo.GoInt)).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        if (!stdgo._internal.slices.Slices_equal.equal(_s1, _s3)) {
            @:check2r _t.errorf(("Grow should not mutate elements between length and capacity" : stdgo.GoString));
        };
        _s3 = (stdgo._internal.slices.Slices_grow.grow((_copy.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), (1000 : stdgo.GoInt)).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        if (!stdgo._internal.slices.Slices_equal.equal(_s1, _s3)) {
            @:check2r _t.errorf(("Grow should not mutate elements between length and capacity" : stdgo.GoString));
        };
        {
            var _n = (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                stdgo._internal.slices.Slices_grow.grow(_s2, (_s2.capacity - (_s2.length) : stdgo.GoInt));
            }) : stdgo.GoFloat64);
            if (_n != (0 : stdgo.GoFloat64)) {
                @:check2r _t.errorf(("Grow should not allocate when given sufficient capacity; allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n = (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                stdgo._internal.slices.Slices_grow.grow(_s2, ((_s2.capacity - (_s2.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt));
            }) : stdgo.GoFloat64);
            if (_n != (1 : stdgo.GoFloat64)) {
                var _errorf = @:check2r _t.errorf;
                if ((false || stdgo._internal.internal.testenv.Testenv_optimizationoff.optimizationOff() : Bool)) {
                    _errorf = @:check2r _t.logf;
                };
                _errorf(("Grow should allocate once when given insufficient capacity; allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        var _gotPanic:Bool = false;
        ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                _gotPanic = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                }) != null;
                            };
                            a();
                        }) });
                    };
                    stdgo._internal.slices.Slices_grow.grow(_s1, (-1 : stdgo.GoInt));
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
            };
            a();
        });
        if (!_gotPanic) {
            @:check2r _t.errorf(("Grow(-1) did not panic; expected a panic" : stdgo.GoString));
        };
    }
