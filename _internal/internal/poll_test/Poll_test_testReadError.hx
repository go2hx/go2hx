package _internal.internal.poll_test;
import stdgo._internal.internal.poll.Poll;
function testReadError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.run(("ErrNotPollable" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = _internal.internal.poll_test.Poll_test__badStateFile._badStateFile(), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.skip(stdgo.Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _f.close());
                    stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
                    var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                    {
                        var __tmp__ = _f.read((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                        _err = __tmp__._1;
                    };
                    {
                        var _perr = (_internal.internal.poll_test.Poll_test__parseReadError._parseReadError(_err, _internal.internal.poll_test.Poll_test__isBadStateFileError._isBadStateFileError) : stdgo.Error);
                        if (_perr != null) {
                            _t.fatal(stdgo.Go.toInterface(_perr));
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
            });
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
