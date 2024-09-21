package _internal.sync.atomic_dot_test;
import stdgo._internal.sync.atomic_.Atomic_;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.sync.atomic_dot_test.Atomic_dot_test__tests._tests, _internal.sync.atomic_dot_test.Atomic_dot_test__benchmarks._benchmarks, _internal.sync.atomic_dot_test.Atomic_dot_test__fuzzTargets._fuzzTargets, _internal.sync.atomic_dot_test.Atomic_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.sync.atomic_test.Atomic_test__hammer32._hammer32, __tmp__1 = _internal.sync.atomic_test.Atomic_test__hammer64._hammer64, __tmp__2 = _internal.sync.atomic_test.Atomic_test_value_SwapTests.value_SwapTests, __tmp__3 = _internal.sync.atomic_test.Atomic_test__heapA._heapA, __tmp__4 = _internal.sync.atomic_test.Atomic_test__heapB._heapB, __tmp__5 = _internal.sync.atomic_test.Atomic_test_value_CompareAndSwapTests.value_CompareAndSwapTests;
            var _v:stdgo.GoUInt64 = (1125899906842624i64 : stdgo.GoUInt64);
            if ((_v : stdgo.GoUIntptr) != ((0 : stdgo.GoUIntptr))) {
                if (_internal.sync.atomic_test.Atomic_test__hammer32._hammer32 != null) _internal.sync.atomic_test.Atomic_test__hammer32._hammer32.remove(("SwapUintptr" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer32._hammer32 != null) _internal.sync.atomic_test.Atomic_test__hammer32._hammer32.remove(("AddUintptr" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer32._hammer32 != null) _internal.sync.atomic_test.Atomic_test__hammer32._hammer32.remove(("CompareAndSwapUintptr" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer32._hammer32 != null) _internal.sync.atomic_test.Atomic_test__hammer32._hammer32.remove(("SwapUintptrMethod" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer32._hammer32 != null) _internal.sync.atomic_test.Atomic_test__hammer32._hammer32.remove(("AddUintptrMethod" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer32._hammer32 != null) _internal.sync.atomic_test.Atomic_test__hammer32._hammer32.remove(("CompareAndSwapUintptrMethod" : stdgo.GoString));
            };
            var _v:stdgo.GoUInt64 = (1125899906842624i64 : stdgo.GoUInt64);
            if ((_v : stdgo.GoUIntptr) == ((0 : stdgo.GoUIntptr))) {
                if (_internal.sync.atomic_test.Atomic_test__hammer64._hammer64 != null) _internal.sync.atomic_test.Atomic_test__hammer64._hammer64.remove(("SwapUintptr" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer64._hammer64 != null) _internal.sync.atomic_test.Atomic_test__hammer64._hammer64.remove(("SwapUintptrMethod" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer64._hammer64 != null) _internal.sync.atomic_test.Atomic_test__hammer64._hammer64.remove(("AddUintptr" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer64._hammer64 != null) _internal.sync.atomic_test.Atomic_test__hammer64._hammer64.remove(("AddUintptrMethod" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer64._hammer64 != null) _internal.sync.atomic_test.Atomic_test__hammer64._hammer64.remove(("CompareAndSwapUintptr" : stdgo.GoString));
                if (_internal.sync.atomic_test.Atomic_test__hammer64._hammer64 != null) _internal.sync.atomic_test.Atomic_test__hammer64._hammer64.remove(("CompareAndSwapUintptrMethod" : stdgo.GoString));
            };
            var __tmp__0 = _internal.sync.atomic_dot_test.Atomic_dot_test__tests._tests, __tmp__1 = _internal.sync.atomic_dot_test.Atomic_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.sync.atomic_dot_test.Atomic_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.sync.atomic_dot_test.Atomic_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("sync/atomic" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
