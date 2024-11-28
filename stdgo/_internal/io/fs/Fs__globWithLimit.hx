package stdgo._internal.io.fs;
function _globWithLimit(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _pattern:stdgo.GoString, _depth:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        {};
        if ((_depth > (10000 : stdgo.GoInt) : Bool)) {
            return { _0 : _matches = (null : stdgo.Slice<stdgo.GoString>), _1 : _err = stdgo._internal.path.Path_errBadPattern.errBadPattern };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : stdgo._internal.io.fs.Fs_GlobFS.GlobFS)) : stdgo._internal.io.fs.Fs_GlobFS.GlobFS), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs_GlobFS.GlobFS), _1 : false };
            }, _fsys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return {
                    var __tmp__ = _fsys.glob(_pattern?.__copy__());
                    _matches = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.path.Path_match.match(_pattern?.__copy__(), stdgo.Go.str()?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _matches = (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        if (!stdgo._internal.io.fs.Fs__hasMeta._hasMeta(_pattern?.__copy__())) {
            {
                {
                    var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(_fsys, _pattern?.__copy__());
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _matches = (null : stdgo.Slice<stdgo.GoString>), _1 : _err = (null : stdgo.Error) };
                };
            };
            return { _0 : _matches = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_pattern?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : _err = (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.path.Path_split.split(_pattern?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        _dir = stdgo._internal.io.fs.Fs__cleanGlobPath._cleanGlobPath(_dir?.__copy__())?.__copy__();
        if (!stdgo._internal.io.fs.Fs__hasMeta._hasMeta(_dir?.__copy__())) {
            return {
                var __tmp__ = stdgo._internal.io.fs.Fs__glob._glob(_fsys, _dir?.__copy__(), _file?.__copy__(), (null : stdgo.Slice<stdgo.GoString>));
                _matches = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (_dir == (_pattern)) {
            return { _0 : _matches = (null : stdgo.Slice<stdgo.GoString>), _1 : _err = stdgo._internal.path.Path_errBadPattern.errBadPattern };
        };
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs__globWithLimit._globWithLimit(_fsys, _dir?.__copy__(), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
            _m = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _matches = (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        for (__1 => _d in _m) {
            {
                var __tmp__ = stdgo._internal.io.fs.Fs__glob._glob(_fsys, _d?.__copy__(), _file?.__copy__(), _matches);
                _matches = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _matches, _1 : _err };
            };
        };
        return { _0 : _matches, _1 : _err };
    }
