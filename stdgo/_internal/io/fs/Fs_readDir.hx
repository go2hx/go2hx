package stdgo._internal.io.fs;
function readDir(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS)) : stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _fsys.readDir(_name?.__copy__());
                };
            };
            var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : _err };
            };
            {
                final __f__ = _file.close;
                __deferstack__.unshift(() -> __f__());
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_file) : stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile)) : stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile), _1 : false };
            }, _dir = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("readdir" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("not implemented" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = _dir.readDir((-1 : stdgo.GoInt)), _list:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                return (_list[(_i : stdgo.GoInt)].name() < _list[(_j : stdgo.GoInt)].name() : Bool);
            });
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } = { _0 : _list, _1 : _err };
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : (null : stdgo.Error) };
        };
    }
