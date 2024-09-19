package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _smallReaddirnames(_file:stdgo.Ref<stdgo._internal.os.Os_File.File>, _length:stdgo.GoInt, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):stdgo.Slice<stdgo.GoString> {
        var _names = (new stdgo.Slice<stdgo.GoString>((_length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _count = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = _file.readdirnames((1 : stdgo.GoInt)), _d:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                break;
            };
            if (_err != null) {
                _t.fatalf(("readdirnames %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_file.name()), stdgo.Go.toInterface(_err));
            };
            if ((_d.length) == ((0 : stdgo.GoInt))) {
                _t.fatalf(("readdirnames %q returned empty slice and no error" : stdgo.GoString), stdgo.Go.toInterface(_file.name()));
            };
            _names[(_count : stdgo.GoInt)] = _d[(0 : stdgo.GoInt)]?.__copy__();
            _count++;
        };
        return (_names.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoString>);
    }
