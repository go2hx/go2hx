package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testBuilderGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testBuilderGrow" + " skip function");
        return;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (__0 => _growLen in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (100 : stdgo.GoInt), (1000 : stdgo.GoInt), (10000 : stdgo.GoInt), (100000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _p = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _growLen);
                var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                    var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                    _b.grow(_growLen);
                    if ((_b.cap() < _growLen : Bool)) {
                        _t.fatalf(("growLen=%d: Cap() is lower than growLen" : stdgo.GoString), stdgo.Go.toInterface(_growLen));
                    };
                    _b.write(_p);
                    if ((_b.string() : stdgo.GoString) != ((_p : stdgo.GoString))) {
                        _t.fatalf(("growLen=%d: bad data written after Grow" : stdgo.GoString), stdgo.Go.toInterface(_growLen));
                    };
                }) : stdgo.GoFloat64);
                var _wantAllocs = (1 : stdgo.GoInt);
                if (_growLen == ((0 : stdgo.GoInt))) {
                    _wantAllocs = (0 : stdgo.GoInt);
                };
                {
                    var __0 = (_allocs : stdgo.GoInt), __1 = (_wantAllocs : stdgo.GoInt);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        _t.errorf(("growLen=%d: got %d allocs during Write; want %v" : stdgo.GoString), stdgo.Go.toInterface(_growLen), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
            };
            var _a:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            var _n = (-1 : stdgo.GoInt);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_r == null) {
                                _t.errorf(("a.Grow(%d) should panic()" : stdgo.GoString), stdgo.Go.toInterface(_n));
                            };
                        };
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
                };
                a();
            });
            _a.grow(_n);
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
