package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testPipeLookPathLeak(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("we don\'t currently suppore counting open handles on windows" : stdgo.GoString)));
        };
        var _openFDs = function():stdgo.Slice<stdgo.GoUIntptr> {
            var _fds:stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
            {
                var _i = ((0 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                stdgo.Go.cfor((_i < (100 : stdgo.GoUIntptr) : Bool), _i++, {
                    if (stdgo._internal.os.exec.internal.fdtest.Fdtest_exists.exists(_i)) {
                        _fds = (_fds.__append__(_i));
                    };
                });
            };
            return _fds;
        };
        var _old = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUIntptr, Bool>);
        for (__0 => _fd in _openFDs()) {
            _old[_fd] = true;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (6 : stdgo.GoInt) : Bool), _i++, {
                var _cmd = stdgo._internal.os.exec.Exec_command.command(("something-that-does-not-exist-executable" : stdgo.GoString));
                _cmd.stdoutPipe();
                _cmd.stderrPipe();
                _cmd.stdinPipe();
                {
                    var _err = (_cmd.run() : stdgo.Error);
                    if (_err == null) {
                        _t.fatal(stdgo.Go.toInterface(("unexpected success" : stdgo.GoString)));
                    };
                };
            });
        };
        for (__1 => _fd in _openFDs()) {
            if (!(_old[_fd] ?? false)) {
                _t.errorf(("leaked file descriptor %v" : stdgo.GoString), stdgo.Go.toInterface(_fd));
            };
        };
    }
