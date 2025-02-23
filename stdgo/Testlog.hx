package stdgo;
class Interface_static_extension {
    static public function chdir(t:stdgo._internal.internal.testlog.Testlog_interface.Interface, _dir:String):Void {
        final _dir = (_dir : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_interface_static_extension.Interface_static_extension.chdir(t, _dir);
    }
    static public function open(t:stdgo._internal.internal.testlog.Testlog_interface.Interface, _file:String):Void {
        final _file = (_file : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_interface_static_extension.Interface_static_extension.open(t, _file);
    }
    static public function stat(t:stdgo._internal.internal.testlog.Testlog_interface.Interface, _file:String):Void {
        final _file = (_file : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_interface_static_extension.Interface_static_extension.stat(t, _file);
    }
    static public function getenv(t:stdgo._internal.internal.testlog.Testlog_interface.Interface, _key:String):Void {
        final _key = (_key : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_interface_static_extension.Interface_static_extension.getenv(t, _key);
    }
}
@:forward abstract Interface(stdgo._internal.internal.testlog.Testlog_interface.Interface) from stdgo._internal.internal.testlog.Testlog_interface.Interface to stdgo._internal.internal.testlog.Testlog_interface.Interface {
    @:from
    static function fromHaxeInterface(x:{ function getenv(_key:String):Void; function stat(_file:String):Void; function open(_file:String):Void; function chdir(_dir:String):Void; }):Interface {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Interface = { getenv : _0 -> x.getenv(_0), stat : _0 -> x.stat(_0), open : _0 -> x.open(_0), chdir : _0 -> x.chdir(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.internal.testlog.Testlog_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.internal.testlog.Testlog_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.internal.testlog.Testlog_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
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
    static public inline function panicOnExit0():Bool {
        return stdgo._internal.internal.testlog.Testlog_paniconexit0.panicOnExit0();
    }
    /**
        * SetPanicOnExit0 sets panicOnExit0 to v.
    **/
    static public inline function setPanicOnExit0(_v:Bool):Void {
        stdgo._internal.internal.testlog.Testlog_setpaniconexit0.setPanicOnExit0(_v);
    }
    /**
        * SetLogger sets the test logger implementation for the current process.
        * It must be called only once, at process startup.
    **/
    static public inline function setLogger(_impl:Interface):Void {
        stdgo._internal.internal.testlog.Testlog_setlogger.setLogger(_impl);
    }
    /**
        * Logger returns the current test logger implementation.
        * It returns nil if there is no logger.
    **/
    static public inline function logger():Interface {
        return stdgo._internal.internal.testlog.Testlog_logger.logger();
    }
    /**
        * Getenv calls Logger().Getenv, if a logger has been set.
    **/
    static public inline function getenv(_name:String):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_getenv.getenv(_name);
    }
    /**
        * Open calls Logger().Open, if a logger has been set.
    **/
    static public inline function open(_name:String):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_open.open(_name);
    }
    /**
        * Stat calls Logger().Stat, if a logger has been set.
    **/
    static public inline function stat(_name:String):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.internal.testlog.Testlog_stat.stat(_name);
    }
}
