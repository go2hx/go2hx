package stdgo._internal.io.fs;
function _globWithLimit(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _pattern:stdgo.GoString, _depth:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        {};
        if ((_depth > (10000 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.path.Path_errbadpattern.errBadPattern };
                _matches = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : stdgo._internal.io.fs.Fs_globfs.GlobFS)) : stdgo._internal.io.fs.Fs_globfs.GlobFS), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs_globfs.GlobFS), _1 : false };
            }, _fsys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return {
                    final __tmp__ = _fsys.glob(_pattern?.__copy__());
                    _matches = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _matches, _1 : _err };
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.path.Path_match.match(_pattern?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
                    _matches = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if (!stdgo._internal.io.fs.Fs__hasmeta._hasMeta(_pattern?.__copy__())) {
            {
                {
                    var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(_fsys, _pattern?.__copy__());
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                        _matches = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_pattern?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                _matches = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.path.Path_split.split(_pattern?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        _dir = stdgo._internal.io.fs.Fs__cleanglobpath._cleanGlobPath(_dir?.__copy__())?.__copy__();
        if (!stdgo._internal.io.fs.Fs__hasmeta._hasMeta(_dir?.__copy__())) {
            return {
                final __tmp__ = stdgo._internal.io.fs.Fs__glob._glob(_fsys, _dir?.__copy__(), _file?.__copy__(), (null : stdgo.Slice<stdgo.GoString>));
                _matches = __tmp__._0;
                _err = __tmp__._1;
                { _0 : _matches, _1 : _err };
            };
        };
        if (_dir == (_pattern)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.path.Path_errbadpattern.errBadPattern };
                _matches = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs__globwithlimit._globWithLimit(_fsys, _dir?.__copy__(), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
            _m = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
                _matches = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        for (__1 => _d in _m) {
            {
                var __tmp__ = stdgo._internal.io.fs.Fs__glob._glob(_fsys, _d?.__copy__(), _file?.__copy__(), _matches);
                _matches = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _matches, _1 : _err };
            };
        };
        return { _0 : _matches, _1 : _err };
    }
