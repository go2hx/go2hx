package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReadFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _filename = ("rumpelstilzchen" : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(_filename?.__copy__()), _contents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatalf(("ReadFile %s: error expected, none found" : stdgo.GoString), stdgo.Go.toInterface(_filename));
        };
        _filename = ("read_test.go" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.os.Os_readFile.readFile(_filename?.__copy__());
            _contents = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("ReadFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
        };
        _internal.os_test.Os_test__checkNamedSize._checkNamedSize(_t, _filename?.__copy__(), (_contents.length : stdgo.GoInt64));
    }
