package stdgo._internal.path.filepath;
function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L243"
        return stdgo._internal.path.filepath.Filepath__globwithlimit._globWithLimit(_pattern?.__copy__(), (0 : stdgo.GoInt));
    }
