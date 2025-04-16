package stdgo.internal.goroot;
class Goroot {
    /**
        * IsStandardPackage reports whether path is a standard package,
        * given goroot and compiler.
    **/
    static public inline function isStandardPackage(_goroot:stdgo.GoString, _compiler:stdgo.GoString, _path:stdgo.GoString):Bool return stdgo._internal.internal.goroot.Goroot_isstandardpackage.isStandardPackage(_goroot, _compiler, _path);
}
