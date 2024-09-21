package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testDevNullFileInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _statname:stdgo.GoString, _devNullName:stdgo.GoString, _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):Void {
        var _pre = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s(%q): " : stdgo.GoString), stdgo.Go.toInterface(_statname), stdgo.Go.toInterface(_devNullName))?.__copy__() : stdgo.GoString);
        if (_fi.size() != ((0i64 : stdgo.GoInt64))) {
            _t.errorf((_pre + ("wrong file size have %d want 0" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_fi.size()));
        };
        if ((_fi.mode() & (67108864u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _t.errorf((_pre + ("wrong file mode %q: ModeDevice is not set" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
        };
        if ((_fi.mode() & (2097152u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _t.errorf((_pre + ("wrong file mode %q: ModeCharDevice is not set" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
        };
        if (_fi.mode().isRegular()) {
            _t.errorf((_pre + ("wrong file mode %q: IsRegular returns true" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
        };
    }
