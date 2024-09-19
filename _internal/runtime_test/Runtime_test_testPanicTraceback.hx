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
function testPanicTraceback(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("PanicTraceback" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = ("panic: hello\n\tpanic: panic pt2\n\tpanic: panic pt1\n" : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_output?.__copy__(), _want?.__copy__())) {
            _t.fatalf(("output does not start with %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
        var _fns = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("main.pt1.func1" : stdgo.GoString), ("panic" : stdgo.GoString), ("main.pt2.func1" : stdgo.GoString), ("panic" : stdgo.GoString), ("main.pt2" : stdgo.GoString), ("main.pt1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__14 => _fn in _fns) {
            var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(((("(?m)^" : stdgo.GoString) + stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_fn?.__copy__())?.__copy__() : stdgo.GoString) + ("\\(.*\\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            var _idx = _re.findStringIndex(_output?.__copy__());
            if (_idx == null) {
                _t.fatalf(("expected %q function in traceback:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_output));
            };
            _output = (_output.__slice__(_idx[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        };
    }
