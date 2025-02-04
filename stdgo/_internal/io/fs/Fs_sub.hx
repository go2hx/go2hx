package stdgo._internal.io.fs;
function sub(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; } {
        if (!stdgo._internal.io.fs.Fs_validpath.validPath(_dir?.__copy__())) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_fs.FS), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("sub" : stdgo.GoString), path : _dir?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("invalid name" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        if (_dir == (("." : stdgo.GoString))) {
            return { _0 : _fsys, _1 : (null : stdgo.Error) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : stdgo._internal.io.fs.Fs_subfs.SubFS)) : stdgo._internal.io.fs.Fs_subfs.SubFS), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs_subfs.SubFS), _1 : false };
            }, _fsys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _fsys.sub(_dir?.__copy__());
            };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.fs.Fs_t_subfs.T_subFS(_fsys, _dir?.__copy__()) : stdgo._internal.io.fs.Fs_t_subfs.T_subFS)) : stdgo.Ref<stdgo._internal.io.fs.Fs_t_subfs.T_subFS>)), _1 : (null : stdgo.Error) };
    }
