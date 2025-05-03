package stdgo._internal.index.suffixarray;
function _testSA(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.Slice<stdgo.GoUInt8>, _build:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoInt>):Bool {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L445"
                        {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_e != null) {
                                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L446"
                                _t.logf(("build %v" : stdgo.GoString), stdgo.Go.toInterface(_x));
                                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L447"
                                throw stdgo.Go.toInterface(_e);
                            };
                        };
                    };
                    a();
                }) });
            };
            var _sa = _build(_x);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L451"
            if ((_sa.length) != ((_x.length))) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L452"
                _t.errorf(("build %v: len(sa) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface((_sa.length)), stdgo.Go.toInterface((_x.length)));
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L453"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L455"
            {
                var _i = (0 : stdgo.GoInt);
                while (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_sa.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L456"
                    if (((((_sa[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool) || (_sa[(_i : stdgo.GoInt)] >= (_x.length) : Bool) : Bool) || (_sa[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool) : Bool) || (_sa[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] >= (_x.length) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L457"
                        _t.errorf(("build %s: sa out of range: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_sa));
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L458"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return false;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L460"
                    if ((stdgo._internal.bytes.Bytes_compare.compare((_x.__slice__(_sa[(_i : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>), (_x.__slice__(_sa[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L461"
                        _t.errorf(("build %v -> %v\nsa[%d:] = %d,%d out of order" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_sa), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_sa[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_sa[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]));
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L462"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return false;
                        };
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L466"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return true;
            };
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
                return false;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return false;
            };
        };
    }
