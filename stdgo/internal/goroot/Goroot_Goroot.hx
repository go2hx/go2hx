package stdgo.internal.goroot;
class Goroot {
    /**
        IsStandardPackage reports whether path is a standard package,
        given goroot and compiler.
    **/
    static public inline function isStandardPackage(_goroot:String, _compiler:String, _path:String):Bool {
        final _goroot = (_goroot : stdgo.GoString);
        final _compiler = (_compiler : stdgo.GoString);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.internal.goroot.Goroot_isStandardPackage.isStandardPackage(_goroot, _compiler, _path);
    }
}
