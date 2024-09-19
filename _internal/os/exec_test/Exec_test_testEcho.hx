package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testEcho(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("echo" : stdgo.GoString), ("foo bar" : stdgo.GoString), ("baz" : stdgo.GoString)).output(), _bs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("echo: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0 = ((_bs : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("foo bar baz\n" : stdgo.GoString);
var _e = __1, _g = __0;
            if (_g != (_e)) {
                _t.errorf(("echo: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_g));
            };
        };
    }
