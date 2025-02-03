package stdgo.internal.coverage;
class Coverage {
    static public inline function parseCounterMode(_mode:String):CounterMode {
        final _mode = (_mode : stdgo.GoString);
        return stdgo._internal.internal.coverage.Coverage_parseCounterMode.parseCounterMode(_mode);
    }
    static public inline function round4(_x:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.GoInt);
        return stdgo._internal.internal.coverage.Coverage_round4.round4(_x);
    }
    /**
        HardCodedPkgID returns the hard-coded ID for the specified package
        path, or -1 if we don't use a hard-coded ID. Hard-coded IDs start
        at -2 and decrease as we go down the list.
    **/
    static public inline function hardCodedPkgID(_pkgpath:String):StdTypes.Int {
        final _pkgpath = (_pkgpath : stdgo.GoString);
        return stdgo._internal.internal.coverage.Coverage_hardCodedPkgID.hardCodedPkgID(_pkgpath);
    }
}
