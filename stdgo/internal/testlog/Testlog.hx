package stdgo.internal.testlog;
class Interface_static_extension {
    static public function chdir(t:stdgo._internal.internal.testlog.Testlog_Interface.Interface, _dir:String):Void {
        final _dir = (_dir : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_Interface_static_extension.Interface_static_extension.chdir(t, _dir);
    }
    static public function open(t:stdgo._internal.internal.testlog.Testlog_Interface.Interface, _file:String):Void {
        final _file = (_file : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_Interface_static_extension.Interface_static_extension.open(t, _file);
    }
    static public function stat(t:stdgo._internal.internal.testlog.Testlog_Interface.Interface, _file:String):Void {
        final _file = (_file : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_Interface_static_extension.Interface_static_extension.stat(t, _file);
    }
    static public function getenv(t:stdgo._internal.internal.testlog.Testlog_Interface.Interface, _key:String):Void {
        final _key = (_key : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_Interface_static_extension.Interface_static_extension.getenv(t, _key);
    }
}
typedef Interface = stdgo._internal.internal.testlog.Testlog_Interface.Interface;
typedef T__struct_0Pointer = stdgo._internal.internal.testlog.Testlog_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.internal.testlog.Testlog_T__struct_0.T__struct_0;
typedef T__struct_0PointerPointer = stdgo._internal.internal.testlog.Testlog_T__struct_0PointerPointer.T__struct_0PointerPointer;
class T__struct_0Pointer_static_extension {

}
/**
    Package testlog provides a back-channel communication path
    between tests and package os, so that cmd/go can see which
    environment variables and files a test consults.
**/
class Testlog {
    /**
        PanicOnExit0 reports whether to panic on a call to os.Exit(0).
        This is in the testlog package because, like other definitions in
        package testlog, it is a hook between the testing package and the
        os package. This is used to ensure that an early call to os.Exit(0)
        does not cause a test to pass.
    **/
    static public inline function panicOnExit0():Bool {
        return stdgo._internal.internal.testlog.Testlog_panicOnExit0.panicOnExit0();
    }
    /**
        SetPanicOnExit0 sets panicOnExit0 to v.
    **/
    static public inline function setPanicOnExit0(_v:Bool):Void {
        stdgo._internal.internal.testlog.Testlog_setPanicOnExit0.setPanicOnExit0(_v);
    }
    /**
        SetLogger sets the test logger implementation for the current process.
        It must be called only once, at process startup.
    **/
    static public inline function setLogger(_impl:Interface):Void {
        stdgo._internal.internal.testlog.Testlog_setLogger.setLogger(_impl);
    }
    /**
        Logger returns the current test logger implementation.
        It returns nil if there is no logger.
    **/
    static public inline function logger():Interface {
        return stdgo._internal.internal.testlog.Testlog_logger.logger();
    }
    /**
        Getenv calls Logger().Getenv, if a logger has been set.
    **/
    static public inline function getenv(_name:String):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_getenv.getenv(_name);
    }
    /**
        Open calls Logger().Open, if a logger has been set.
    **/
    static public inline function open(_name:String):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_open.open(_name);
    }
    /**
        Stat calls Logger().Stat, if a logger has been set.
    **/
    static public inline function stat(_name:String):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_stat.stat(_name);
    }
}
