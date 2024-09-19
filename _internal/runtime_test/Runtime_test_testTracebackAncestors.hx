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
function testTracebackAncestors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _goroutineRegex = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("goroutine [0-9]+ \\[" : stdgo.GoString));
        for (__6 => _tracebackDepth in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (50 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("TracebackAncestors" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("GODEBUG=tracebackancestors=%d" : stdgo.GoString), stdgo.Go.toInterface(_tracebackDepth))?.__copy__())?.__copy__() : stdgo.GoString);
            var _numGoroutines = (3 : stdgo.GoInt);
            var _numFrames = (2 : stdgo.GoInt);
            var _ancestorsExpected = (_numGoroutines : stdgo.GoInt);
            if ((_numGoroutines > _tracebackDepth : Bool)) {
                _ancestorsExpected = _tracebackDepth;
            };
            var _matches = _goroutineRegex.findAllStringSubmatch(_output?.__copy__(), (-1 : stdgo.GoInt));
            if ((_matches.length) != ((2 : stdgo.GoInt))) {
                _t.fatalf(("want 2 goroutines, got:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_output));
            };
            var _fns = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("main.recurseThenCallGo" : stdgo.GoString), ("main.main" : stdgo.GoString), ("main.printStack" : stdgo.GoString), ("main.TracebackAncestors" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (__7 => _fn in _fns) {
                if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), ((("\n" : stdgo.GoString) + _fn?.__copy__() : stdgo.GoString) + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())) {
                    _t.fatalf(("expected %q function in traceback:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_output));
                };
            };
            {
                var __0 = ("originating from goroutine" : stdgo.GoString), __1 = (_ancestorsExpected : stdgo.GoInt);
var _count = __1, _want = __0;
                if (stdgo._internal.strings.Strings_count.count(_output?.__copy__(), _want?.__copy__()) != (_count)) {
                    _t.errorf(("output does not contain %d instances of %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_count), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
                };
            };
            {
                var __0 = ("main.recurseThenCallGo(...)" : stdgo.GoString), __1 = (_ancestorsExpected * ((_numFrames + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
var _count = __1, _want = __0;
                if (stdgo._internal.strings.Strings_count.count(_output?.__copy__(), _want?.__copy__()) != (_count)) {
                    _t.errorf(("output does not contain %d instances of %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_count), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
                };
            };
            {
                var __0 = ("main.recurseThenCallGo(0x" : stdgo.GoString), __1 = (1 : stdgo.GoInt);
var _count = __1, _want = __0;
                if (stdgo._internal.strings.Strings_count.count(_output?.__copy__(), _want?.__copy__()) != (_count)) {
                    _t.errorf(("output does not contain %d instances of %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_count), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
                };
            };
        };
    }
