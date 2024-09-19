package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testPipeThreads(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("illumos" : stdgo.GoString)) || __value__ == (("solaris" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on Solaris and illumos; issue 19111" : stdgo.GoString)));
                } else if (__value__ == (("windows" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on Windows; issue 19098" : stdgo.GoString)));
                } else if (__value__ == (("plan9" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on Plan 9; does not support runtime poller" : stdgo.GoString)));
                } else if (__value__ == (("js" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on js; no support for os.Pipe" : stdgo.GoString)));
                } else if (__value__ == (("wasip1" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on wasip1; no support for os.Pipe" : stdgo.GoString)));
                };
            };
            var _threads = (100 : stdgo.GoInt);
            if (false) {
                _threads = (50 : stdgo.GoInt);
            };
            var _r = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>((_threads : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
            var _w = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>((_threads : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _threads : Bool), _i++, {
                    var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _rp:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _wp:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < _i : Bool), _j++, {
                                _r[(_j : stdgo.GoInt)].close();
                                _w[(_j : stdgo.GoInt)].close();
                            });
                        };
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    _r[(_i : stdgo.GoInt)] = _rp;
                    _w[(_i : stdgo.GoInt)] = _wp;
                });
            };
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setMaxThreads.setMaxThreads((_threads / (2 : stdgo.GoInt) : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setMaxThreads.setMaxThreads(_a0));
            };
            var _creading = (new stdgo.Chan<Bool>((_threads : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            var _cdone = (new stdgo.Chan<Bool>((_threads : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _threads : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_i:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                                _creading.__send__(true);
                                {
                                    var __tmp__ = _r[(_i : stdgo.GoInt)].read((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_err != null) {
                                        _t.error(stdgo.Go.toInterface(_err));
                                    };
                                };
                                {
                                    var _err = (_r[(_i : stdgo.GoInt)].close() : stdgo.Error);
                                    if (_err != null) {
                                        _t.error(stdgo.Go.toInterface(_err));
                                    };
                                };
                                _cdone.__send__(true);
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
                        };
                        a(_i);
                    });
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _threads : Bool), _i++, {
                    _creading.__get__();
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _threads : Bool), _i++, {
                    {
                        var __tmp__ = _w[(_i : stdgo.GoInt)].write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                    {
                        var _err = (_w[(_i : stdgo.GoInt)].close() : stdgo.Error);
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                    _cdone.__get__();
                });
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
