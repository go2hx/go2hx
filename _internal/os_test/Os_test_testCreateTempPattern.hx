package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testCreateTempPattern(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _tests = (new stdgo.Slice<_internal.os_test.Os_test_T__struct_7.T__struct_7>(3, 3, ...[({ _pattern : ("tempfile_test" : stdgo.GoString), _prefix : ("tempfile_test" : stdgo.GoString), _suffix : stdgo.Go.str()?.__copy__() } : _internal.os_test.Os_test_T__struct_7.T__struct_7), ({ _pattern : ("tempfile_test*" : stdgo.GoString), _prefix : ("tempfile_test" : stdgo.GoString), _suffix : stdgo.Go.str()?.__copy__() } : _internal.os_test.Os_test_T__struct_7.T__struct_7), ({ _pattern : ("tempfile_test*xyz" : stdgo.GoString), _prefix : ("tempfile_test" : stdgo.GoString), _suffix : ("xyz" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_7.T__struct_7)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _prefix : ("" : stdgo.GoString), _suffix : ("" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_7.T__struct_7)])) : stdgo.Slice<_internal.os_test.Os_test_T__struct_7.T__struct_7>);
            for (__8 => _test in _tests) {
                var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(stdgo.Go.str()?.__copy__(), _test._pattern?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("CreateTemp(..., %q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._pattern), stdgo.Go.toInterface(_err));
                    continue;
                };
                {
                    var _a0 = _f.name();
                    __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
                };
                var _base = (stdgo._internal.path.filepath.Filepath_base.base(_f.name()?.__copy__())?.__copy__() : stdgo.GoString);
                _f.close();
                if (!((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_base?.__copy__(), _test._prefix?.__copy__()) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_base?.__copy__(), _test._suffix?.__copy__()) : Bool))) {
                    _t.errorf(("CreateTemp pattern %q created bad name %q; want prefix %q & suffix %q" : stdgo.GoString), stdgo.Go.toInterface(_test._pattern), stdgo.Go.toInterface(_base), stdgo.Go.toInterface(_test._prefix), stdgo.Go.toInterface(_test._suffix));
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
    }
