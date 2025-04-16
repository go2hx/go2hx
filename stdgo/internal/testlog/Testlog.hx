package stdgo.internal.testlog;
typedef Interface = stdgo._internal.internal.testlog.Testlog_interface.Interface;
/**
    * Package testlog provides a back-channel communication path
    * between tests and package os, so that cmd/go can see which
    * environment variables and files a test consults.
**/
class Testlog {
    /**
        * PanicOnExit0 reports whether to panic on a call to os.Exit(0).
        * This is in the testlog package because, like other definitions in
        * package testlog, it is a hook between the testing package and the
        * os package. This is used to ensure that an early call to os.Exit(0)
        * does not cause a test to pass.
    **/
    static public inline function panicOnExit0():Bool return stdgo._internal.internal.testlog.Testlog_paniconexit0.panicOnExit0();
    /**
        * SetPanicOnExit0 sets panicOnExit0 to v.
    **/
    static public inline function setPanicOnExit0(_v:Bool):Void stdgo._internal.internal.testlog.Testlog_setpaniconexit0.setPanicOnExit0(_v);
    /**
        * SetLogger sets the test logger implementation for the current process.
        * It must be called only once, at process startup.
    **/
    static public inline function setLogger(_impl:Interface):Void stdgo._internal.internal.testlog.Testlog_setlogger.setLogger(_impl);
    /**
        * Logger returns the current test logger implementation.
        * It returns nil if there is no logger.
    **/
    static public inline function logger():stdgo._internal.internal.testlog.Testlog_interface.Interface return stdgo._internal.internal.testlog.Testlog_logger.logger();
    /**
        * Getenv calls Logger().Getenv, if a logger has been set.
    **/
    static public inline function getenv(_name:stdgo.GoString):Void stdgo._internal.internal.testlog.Testlog_getenv.getenv(_name);
    /**
        * Open calls Logger().Open, if a logger has been set.
    **/
    static public inline function open(_name:stdgo.GoString):Void stdgo._internal.internal.testlog.Testlog_open.open(_name);
    /**
        * Stat calls Logger().Stat, if a logger has been set.
    **/
    static public inline function stat(_name:stdgo.GoString):Void stdgo._internal.internal.testlog.Testlog_stat.stat(_name);
}
