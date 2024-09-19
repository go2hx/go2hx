package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReadDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _dirname = ("rumpelstilzchen" : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_readDir.readDir(_dirname?.__copy__()), __8:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatalf(("ReadDir %s: error expected, none found" : stdgo.GoString), stdgo.Go.toInterface(_dirname));
        };
        _dirname = ("." : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_readDir.readDir(_dirname?.__copy__()), _list:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadDir %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dirname), stdgo.Go.toInterface(_err));
        };
        var _foundFile = (false : Bool);
        var _foundSubDir = (false : Bool);
        for (__9 => _dir in _list) {
            if ((!_dir.isDir() && (_dir.name() == ("read_test.go" : stdgo.GoString)) : Bool)) {
                _foundFile = true;
            } else if ((_dir.isDir() && (_dir.name() == ("exec" : stdgo.GoString)) : Bool)) {
                _foundSubDir = true;
            };
        };
        if (!_foundFile) {
            _t.fatalf(("ReadDir %s: read_test.go file not found" : stdgo.GoString), stdgo.Go.toInterface(_dirname));
        };
        if (!_foundSubDir) {
            _t.fatalf(("ReadDir %s: exec directory not found" : stdgo.GoString), stdgo.Go.toInterface(_dirname));
        };
    }
