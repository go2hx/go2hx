package stdgo._internal.path.filepath;
function join(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L278"
        return stdgo._internal.path.filepath.Filepath__join._join(_elem)?.__copy__();
    }
