package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testNoExistExecutable(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _err = (stdgo._internal.os.exec.Exec_command.command(("/no-exist-executable" : stdgo.GoString)).run() : stdgo.Error);
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error from /no-exist-executable" : stdgo.GoString)));
        };
    }
