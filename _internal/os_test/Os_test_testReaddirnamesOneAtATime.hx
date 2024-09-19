package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReaddirnamesOneAtATime(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _dir = ("/usr/bin" : stdgo.GoString);
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("android" : stdgo.GoString))) {
                    _dir = ("/system/bin" : stdgo.GoString);
                } else if (__value__ == (("ios" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                    var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    _dir = _wd?.__copy__();
                } else if (__value__ == (("plan9" : stdgo.GoString))) {
                    _dir = ("/bin" : stdgo.GoString);
                } else if (__value__ == (("windows" : stdgo.GoString))) {
                    _dir = (stdgo._internal.os.Os_getenv.getenv(("SystemRoot" : stdgo.GoString)) + ("\\system32" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _file.close());
            var __tmp__ = _file.readdirnames((-1 : stdgo.GoInt)), _all:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 != null) {
                _t.fatalf(("readdirnames %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err1));
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__()), _file1:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 != null) {
                _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err2));
            };
            __deferstack__.unshift(() -> _file1.close());
            var _small = _internal.os_test.Os_test__smallReaddirnames._smallReaddirnames(_file1, ((_all.length) + (100 : stdgo.GoInt) : stdgo.GoInt), _t);
            if (((_small.length) < (_all.length) : Bool)) {
                _t.fatalf(("len(small) is %d, less than %d" : stdgo.GoString), stdgo.Go.toInterface((_small.length)), stdgo.Go.toInterface((_all.length)));
            };
            for (_i => _n in _all) {
                if (_small[(_i : stdgo.GoInt)] != (_n)) {
                    _t.errorf(("small read %q mismatch: %v" : stdgo.GoString), stdgo.Go.toInterface(_small[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_n));
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
