package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _benchmarkReadDir(_path:stdgo.GoString, _b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _nentries:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
                var __tmp__ = _f.readDir((-1 : stdgo.GoInt)), _fs:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _f.close();
                if (_err != null) {
                    _b.fatalf(("readdir %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
                _nentries = (_fs.length);
            });
        };
        _b.logf(("benchmarkReadDir %q: %d entries" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_nentries));
    }
