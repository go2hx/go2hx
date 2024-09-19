package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testTruncate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _internal.os_test.Os_test__newFile._newFile(("TestTruncate" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            _internal.os_test.Os_test__checkSize._checkSize(_t, _f, (0i64 : stdgo.GoInt64));
            _f.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _internal.os_test.Os_test__checkSize._checkSize(_t, _f, (13i64 : stdgo.GoInt64));
            stdgo._internal.os.Os_truncate.truncate(_f.name()?.__copy__(), (10i64 : stdgo.GoInt64));
            _internal.os_test.Os_test__checkSize._checkSize(_t, _f, (10i64 : stdgo.GoInt64));
            stdgo._internal.os.Os_truncate.truncate(_f.name()?.__copy__(), (1024i64 : stdgo.GoInt64));
            _internal.os_test.Os_test__checkSize._checkSize(_t, _f, (1024i64 : stdgo.GoInt64));
            stdgo._internal.os.Os_truncate.truncate(_f.name()?.__copy__(), (0i64 : stdgo.GoInt64));
            _internal.os_test.Os_test__checkSize._checkSize(_t, _f, (0i64 : stdgo.GoInt64));
            var __tmp__ = _f.write((("surprise!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _internal.os_test.Os_test__checkSize._checkSize(_t, _f, (22i64 : stdgo.GoInt64));
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
