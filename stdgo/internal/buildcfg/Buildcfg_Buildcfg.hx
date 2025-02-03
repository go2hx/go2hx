package stdgo.internal.buildcfg;
/**
    Package buildcfg provides access to the build configuration
    described by the current environment. It is for use by build tools
    such as cmd/go or cmd/compile and for setting up go/build's Default context.
    
    Note that it does NOT provide access to the build configuration used to
    build the currently-running binary. For that, use runtime.GOOS etc
    as well as internal/goexperiment.
**/
class Buildcfg {
    /**
        Check exits the program with a fatal error if Error is non-nil.
    **/
    static public inline function check():Void {
        stdgo._internal.internal.buildcfg.Buildcfg_check.check();
    }
    static public inline function getgoextlinkenabled():String {
        return stdgo._internal.internal.buildcfg.Buildcfg_getgoextlinkenabled.getgoextlinkenabled();
    }
    /**
        GOGOARCH returns the name and value of the GO$GOARCH setting.
        For example, if GOARCH is "amd64" it might return "GOAMD64", "v2".
    **/
    static public inline function gOGOARCH():stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.internal.buildcfg.Buildcfg_gOGOARCH.gOGOARCH();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseGOEXPERIMENT parses a (GOOS, GOARCH, GOEXPERIMENT)
        configuration tuple and returns the enabled and baseline experiment
        flag sets.
        
        TODO(mdempsky): Move to internal/goexperiment.
    **/
    static public inline function parseGOEXPERIMENT(_goos:String, _goarch:String, _goexp:String):stdgo.Tuple<ExperimentFlags, stdgo.Error> {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        final _goexp = (_goexp : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.buildcfg.Buildcfg_parseGOEXPERIMENT.parseGOEXPERIMENT(_goos, _goarch, _goexp);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
