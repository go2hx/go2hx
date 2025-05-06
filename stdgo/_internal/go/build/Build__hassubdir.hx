package stdgo._internal.go.build;
function _hasSubdir(_root:stdgo.GoString, _dir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _rel = ("" : stdgo.GoString), _ok = false;
        {};
        _root = stdgo._internal.path.filepath.Filepath_clean.clean(_root?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L180"
        if (!stdgo._internal.strings.Strings_hassuffix.hasSuffix(_root?.__copy__(), ("/" : stdgo.GoString))) {
            _root = (_root + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _dir = stdgo._internal.path.filepath.Filepath_clean.clean(_dir?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.strings.Strings_cutprefix.cutPrefix(_dir?.__copy__(), _root?.__copy__()), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L185"
        if (!_found) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L186"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _rel = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L188"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : stdgo._internal.path.filepath.Filepath_toslash.toSlash(_after?.__copy__())?.__copy__(), _1 : true };
            _rel = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
