package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _checkUidGid(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void {
        var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Lstat %q (looking for uid/gid %d/%d): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_uid), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
        };
        var _sys = (stdgo.Go.typeAssert((_dir.sys() : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>)) : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>);
        if ((_sys.uid : stdgo.GoInt) != (_uid)) {
            _t.errorf(("Lstat %q: uid %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_sys.uid), stdgo.Go.toInterface(_uid));
        };
        if ((_sys.gid : stdgo.GoInt) != (_gid)) {
            _t.errorf(("Lstat %q: gid %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_sys.gid), stdgo.Go.toInterface(_gid));
        };
    }
