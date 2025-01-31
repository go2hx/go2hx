package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _readDir(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_dirname?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : _err };
        };
        var __tmp__ = @:check2r _f.readDir((-1 : stdgo.GoInt)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        @:check2r _f.close();
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : _err };
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_dirs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_dirs[(_i : stdgo.GoInt)].name() < _dirs[(_j : stdgo.GoInt)].name() : Bool);
        });
        return { _0 : _dirs, _1 : (null : stdgo.Error) };
    }
