package _internal.internal.poll_test;
import stdgo._internal.internal.poll.Poll;
function _specialFiles():stdgo.Slice<stdgo.GoString> {
        var _ps:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("darwin" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString)) || __value__ == (("dragonfly" : stdgo.GoString)) || __value__ == (("freebsd" : stdgo.GoString)) || __value__ == (("netbsd" : stdgo.GoString)) || __value__ == (("openbsd" : stdgo.GoString))) {
                _ps = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/dev/null" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else if (__value__ == (("linux" : stdgo.GoString))) {
                _ps = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/dev/null" : stdgo.GoString), ("/proc/stat" : stdgo.GoString), ("/sys/devices/system/cpu/online" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
        };
        var _nps = (_ps.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _p in _ps) {
            var __tmp__ = stdgo._internal.os.Os_open.open(_p?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            _f.close();
            _nps = (_nps.__append__(_p?.__copy__()));
        };
        return _nps;
    }
