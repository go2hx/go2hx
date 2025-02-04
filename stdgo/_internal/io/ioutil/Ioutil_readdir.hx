package stdgo._internal.io.ioutil;
function readDir(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_dirname?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>), _1 : _err };
        };
        var __tmp__ = @:check2r _f.readdir((-1 : stdgo.GoInt)), _list:stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        @:check2r _f.close();
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>), _1 : _err };
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_list[(_i : stdgo.GoInt)].name() < _list[(_j : stdgo.GoInt)].name() : Bool);
        });
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
