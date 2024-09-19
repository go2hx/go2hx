package stdgo._internal.path.filepath;
function _globWithLimit(_pattern:stdgo.GoString, _depth:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        {};
        if (_depth == ((10000 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.path.filepath.Filepath_errBadPattern.errBadPattern };
        };
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(_pattern?.__copy__(), stdgo.Go.str()?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (!stdgo._internal.path.filepath.Filepath__hasMeta._hasMeta(_pattern?.__copy__())) {
            {
                {
                    var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_pattern?.__copy__());
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                };
            };
            return { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_pattern?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_pattern?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        var _volumeLen = (0 : stdgo.GoInt);
        if (false) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath__cleanGlobPathWindows._cleanGlobPathWindows(_dir?.__copy__());
                _volumeLen = __tmp__._0;
                _dir = __tmp__._1?.__copy__();
            };
        } else {
            _dir = stdgo._internal.path.filepath.Filepath__cleanGlobPath._cleanGlobPath(_dir?.__copy__())?.__copy__();
        };
        if (!stdgo._internal.path.filepath.Filepath__hasMeta._hasMeta((_dir.__slice__(_volumeLen) : stdgo.GoString)?.__copy__())) {
            return stdgo._internal.path.filepath.Filepath__glob._glob(_dir?.__copy__(), _file?.__copy__(), (null : stdgo.Slice<stdgo.GoString>));
        };
        if (_dir == (_pattern)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.path.filepath.Filepath_errBadPattern.errBadPattern };
        };
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath__globWithLimit._globWithLimit(_dir?.__copy__(), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _matches, _1 : _err };
        };
        for (__1 => _d in _m) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath__glob._glob(_d?.__copy__(), _file?.__copy__(), _matches);
                _matches = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _matches, _1 : _err };
            };
        };
        return { _0 : _matches, _1 : _err };
    }