package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testEnvNULCharacter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("plan9 explicitly allows NUL in the environment" : stdgo.GoString)));
        };
        var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("echoenv" : stdgo.GoString), ("FOO" : stdgo.GoString), ("BAR" : stdgo.GoString));
        _cmd.env = (_cmd.environ_().__append__(stdgo.Go.str("FOO=foo", 0, "BAR=bar")?.__copy__()));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.errorf(("output = %q; want error" : stdgo.GoString), stdgo.Go.toInterface((_out : stdgo.GoString)));
        };
    }
