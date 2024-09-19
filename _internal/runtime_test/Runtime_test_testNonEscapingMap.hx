package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testNonEscapingMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _m = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
            _m[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
        }) : stdgo.GoFloat64);
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("mapliteral: want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _n = stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _m = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
            _m[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
        });
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("no hint: want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _n = stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _m = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
            _m[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
        });
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("with small hint: want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _n = stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _m = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
            _m[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
        });
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("with variable hint: want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
