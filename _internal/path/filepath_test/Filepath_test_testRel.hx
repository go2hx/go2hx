package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testRel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = ((new stdgo.Slice<_internal.path.filepath_test.Filepath_test_RelTests.RelTests>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.path.filepath_test.Filepath_test_RelTests.RelTests)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_RelTests.RelTests>).__append__(...(_internal.path.filepath_test.Filepath_test__reltests._reltests : Array<_internal.path.filepath_test.Filepath_test_RelTests.RelTests>)));
        if (false) {
            for (_i => _ in _tests) {
                _tests[(_i : stdgo.GoInt)]._want = stdgo._internal.path.filepath.Filepath_fromSlash.fromSlash(_tests[(_i : stdgo.GoInt)]._want?.__copy__())?.__copy__();
            };
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__winreltests._winreltests : Array<_internal.path.filepath_test.Filepath_test_RelTests.RelTests>)));
        };
        for (__0 => _test in _tests) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_rel.rel(_test._root?.__copy__(), _test._path?.__copy__()), _got:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_test._want == (("err" : stdgo.GoString))) {
                if (_err == null) {
                    _t.errorf(("Rel(%q, %q)=%q, want error" : stdgo.GoString), stdgo.Go.toInterface(_test._root), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_got));
                };
                continue;
            };
            if (_err != null) {
                _t.errorf(("Rel(%q, %q): want %q, got error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._root), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface(_err));
            };
            if (_got != (_test._want)) {
                _t.errorf(("Rel(%q, %q)=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._root), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
