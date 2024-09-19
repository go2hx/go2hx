package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Dir_asInterface) class Dir_static_extension {
    @:keep
    static public function open( _d:stdgo._internal.net.http.Http_Dir.Dir, _name:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_File.File; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo._internal.net.http.Http_Dir.Dir = _d;
        var __tmp__ = stdgo._internal.internal.safefilepath.Safefilepath_fromFS.fromFS(stdgo._internal.path.Path_clean.clean((("/" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__()), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.http.Http_File.File), _1 : stdgo._internal.errors.Errors_new_.new_(("http: invalid or unsafe file path" : stdgo.GoString)) };
        };
        var _dir = ((_d : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_dir == (stdgo.Go.str())) {
            _dir = ("." : stdgo.GoString);
        };
        var _fullName = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _path?.__copy__())?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_open.open(_fullName?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.http.Http_File.File), _1 : stdgo._internal.net.http.Http__mapOpenError._mapOpenError(_err, _fullName?.__copy__(), (47 : stdgo.GoInt32), stdgo._internal.os.Os_stat.stat) };
        };
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
}
