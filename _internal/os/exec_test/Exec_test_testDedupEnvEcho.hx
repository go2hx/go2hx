package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testDedupEnvEcho(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("echoenv" : stdgo.GoString), ("FOO" : stdgo.GoString));
        _cmd.env = (_cmd.environ_().__append__(("FOO=bad" : stdgo.GoString), ("FOO=good" : stdgo.GoString)));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __0 = (stdgo._internal.strings.Strings_trimSpace.trimSpace((_out : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString), __1 = ("good" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("output = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
