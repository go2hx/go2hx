package stdgo._internal.path.filepath;
function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _dir = ("" : stdgo.GoString), _file = ("" : stdgo.GoString);
        var _vol = (stdgo._internal.path.filepath.Filepath_volumename.volumeName(_path?.__copy__())?.__copy__() : stdgo.GoString);
        var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L264"
        while (((_i >= (_vol.length) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L265"
            _i--;
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L267"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_path.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
            _dir = __tmp__._0;
            _file = __tmp__._1;
            __tmp__;
        };
    }
