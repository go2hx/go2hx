package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testSeek(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _internal.os_test.Os_test__newFile._newFile(("TestSeek" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            {};
            stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_f), ("hello, world\n" : stdgo.GoString));
            {};
            var _tests:stdgo.Slice<_internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185> = (new stdgo.Slice<_internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185>(12, 12, ...[
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt), (("hello, world\n" : stdgo.GoString).length : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((5i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (5i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (2 : stdgo.GoInt), (("hello, world\n" : stdgo.GoString).length : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((-1i64 : stdgo.GoInt64), (2 : stdgo.GoInt), (12i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((8589934592i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (8589934592i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((8589934592i64 : stdgo.GoInt64), (2 : stdgo.GoInt), (8589934605i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((4294967295i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (4294967295i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt), (4294967295i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((8589934591i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (8589934591i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185),
(new _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt), (8589934591i64 : stdgo.GoInt64)) : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({} : _internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185)])) : stdgo.Slice<_internal.os_test.Os_test_T_testSeek___localname___test_41185.T_testSeek___localname___test_41185>);
            for (_i => _tt in _tests) {
                var __tmp__ = _f.seek(_tt._in, _tt._whence), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_off != _tt._out) || (_err != null) : Bool)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if ((((_ok && stdgo.Go.toInterface(_e.err) == (stdgo.Go.toInterface(stdgo.Go.asInterface((22 : stdgo._internal.syscall.Syscall_Errno.Errno)))) : Bool) && (_tt._out > (4294967296i64 : stdgo.GoInt64) : Bool) : Bool) && false : Bool)) {
                            var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("/proc/mounts" : stdgo.GoString)), _mounts:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __8:stdgo.Error = __tmp__._1;
                            if (stdgo._internal.strings.Strings_contains.contains((_mounts : stdgo.GoString)?.__copy__(), ("reiserfs" : stdgo.GoString))) {
                                _t.skipf(("skipping test known to fail on reiserfs; https://golang.org/issue/91" : stdgo.GoString));
                            };
                        };
                    };
                    _t.errorf(("#%d: Seek(%v, %v) = %v, %v want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._whence), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out));
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
