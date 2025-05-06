package stdgo._internal.go.build;
function isLocalImport(_path:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L2025"
        return (((_path == (("." : stdgo.GoString)) || _path == ((".." : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("./" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("../" : stdgo.GoString)) : Bool);
    }
