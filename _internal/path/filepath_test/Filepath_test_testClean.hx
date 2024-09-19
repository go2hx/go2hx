package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testClean(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = _internal.path.filepath_test.Filepath_test__cleantests._cleantests;
        if (false) {
            for (_i => _ in _tests) {
                _tests[(_i : stdgo.GoInt)]._result = stdgo._internal.path.filepath.Filepath_fromSlash.fromSlash(_tests[(_i : stdgo.GoInt)]._result?.__copy__())?.__copy__();
            };
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__wincleantests._wincleantests : Array<_internal.path.filepath_test.Filepath_test_PathTest.PathTest>)));
        } else {
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__nonwincleantests._nonwincleantests : Array<_internal.path.filepath_test.Filepath_test_PathTest.PathTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _s = (stdgo._internal.path.filepath.Filepath_clean.clean(_test._path?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s = (stdgo._internal.path.filepath.Filepath_clean.clean(_test._result?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.log(stdgo.Go.toInterface(("skipping AllocsPerRun checks; GOMAXPROCS>1" : stdgo.GoString)));
            return;
        };
        for (__1 => _test in _tests) {
            var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                stdgo._internal.path.filepath.Filepath_clean.clean(_test._result?.__copy__());
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("Clean(%q): %v allocs, want zero" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_allocs));
            };
        };
    }
