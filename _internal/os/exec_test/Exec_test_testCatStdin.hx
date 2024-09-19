package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testCatStdin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _input = ("Input string\nLine 2" : stdgo.GoString);
        var _p = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("cat" : stdgo.GoString));
        _p.stdin = stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_input?.__copy__()));
        var __tmp__ = _p.output(), _bs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("cat: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _s = ((_bs : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_s != (_input)) {
            _t.errorf(("cat: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_s));
        };
    }
