package stdgo._internal.path.filepath;
function _globWithLimit(_pattern:stdgo.GoString, _depth:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        {};
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L249"
        if (_depth == ((10000 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L250"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern };
                _matches = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L254"
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(_pattern?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__()), __0:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L255"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
                    _matches = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L257"
        if (!stdgo._internal.path.filepath.Filepath__hasmeta._hasMeta(_pattern?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L258"
            {
                {
                    var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_pattern?.__copy__());
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L259"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                        _matches = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L261"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_pattern?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
                _matches = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_pattern?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        var _volumeLen = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L266"
        if (false) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath__cleanglobpathwindows._cleanGlobPathWindows(_dir?.__copy__());
                _volumeLen = @:tmpset0 __tmp__._0;
                _dir = @:tmpset0 __tmp__._1?.__copy__();
            };
        } else {
            _dir = stdgo._internal.path.filepath.Filepath__cleanglobpath._cleanGlobPath(_dir?.__copy__())?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L272"
        if (!stdgo._internal.path.filepath.Filepath__hasmeta._hasMeta((_dir.__slice__(_volumeLen) : stdgo.GoString)?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L273"
            return stdgo._internal.path.filepath.Filepath__glob._glob(_dir?.__copy__(), _file?.__copy__(), (null : stdgo.Slice<stdgo.GoString>));
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L277"
        if (_dir == (_pattern)) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L278"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern };
                _matches = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _m:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath__globwithlimit._globWithLimit(_dir?.__copy__(), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
            _m = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L283"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L284"
            return { _0 : _matches, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L286"
        for (__1 => _d in _m) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath__glob._glob(_d?.__copy__(), _file?.__copy__(), _matches);
                _matches = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L288"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L289"
                return { _0 : _matches, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L292"
        return { _0 : _matches, _1 : _err };
    }
