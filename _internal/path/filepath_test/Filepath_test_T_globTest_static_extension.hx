package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:keep @:allow(_internal.path.filepath_test.Filepath_test.T_globTest_asInterface) class T_globTest_static_extension {
    @:keep
    static public function _globRel( _test:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest>, _root:stdgo.GoString):stdgo.Error {
        @:recv var _test:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest> = _test;
        var _p = ((_root + stdgo._internal.path.filepath.Filepath_fromSlash.fromSlash(_test._pattern?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_p?.__copy__()), _have:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo._internal.sort.Sort_strings.strings(_have);
        var _want = _test._buildWant(_root?.__copy__());
        if (stdgo._internal.strings.Strings_join.join(_want, ("_" : stdgo.GoString)) == (stdgo._internal.strings.Strings_join.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        var _wantWithNoRoot = _test._buildWant(stdgo.Go.str()?.__copy__());
        if (stdgo._internal.strings.Strings_join.join(_wantWithNoRoot, ("_" : stdgo.GoString)) == (stdgo._internal.strings.Strings_join.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.fmt.Fmt_errorf.errorf(("Glob(%q) returns %q, but %q expected" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
    }
    @:keep
    static public function _globAbs( _test:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest>, _root:stdgo.GoString, _rootPattern:stdgo.GoString):stdgo.Error {
        @:recv var _test:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest> = _test;
        var _p = (stdgo._internal.path.filepath.Filepath_fromSlash.fromSlash(((_rootPattern + ("\\" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _test._pattern?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_p?.__copy__()), _have:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo._internal.sort.Sort_strings.strings(_have);
        var _want = _test._buildWant((_root + ("\\" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        if (stdgo._internal.strings.Strings_join.join(_want, ("_" : stdgo.GoString)) == (stdgo._internal.strings.Strings_join.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.fmt.Fmt_errorf.errorf(("Glob(%q) returns %q, but %q expected" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
    }
    @:keep
    static public function _buildWant( _test:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest>, _root:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _test:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest> = _test;
        var _want = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _m in _test._matches) {
            _want = (_want.__append__((_root + stdgo._internal.path.filepath.Filepath_fromSlash.fromSlash(_m?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_want);
        return _want;
    }
}
