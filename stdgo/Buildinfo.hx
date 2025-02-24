package stdgo;
@:dox(hide) class T_exe_static_extension {
    static public function dataStart(t:stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe):haxe.UInt64 {
        return stdgo._internal.debug.buildinfo.Buildinfo_t_exe_static_extension.T_exe_static_extension.dataStart(t);
    }
    static public function readData(t:stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_t_exe_static_extension.T_exe_static_extension.readData(t, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_exe(stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe) from stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe to stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe {
    @:from
    static function fromHaxeInterface(x:{ function readData(_addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; function dataStart():haxe.UInt64; }):T_exe {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_exe = { readData : (_0, _1) -> x.readData(_0, _1), dataStart : () -> x.dataStart(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.debug.buildinfo.Buildinfo.T_elfExe_static_extension) @:dox(hide) abstract T_elfExe(stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe) from stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe to stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe {
    public var _f(get, set) : stdgo._internal.debug.elf.Elf_file.File;
    function get__f():stdgo._internal.debug.elf.Elf_file.File return this._f;
    function set__f(v:stdgo._internal.debug.elf.Elf_file.File):stdgo._internal.debug.elf.Elf_file.File {
        this._f = (v : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
        return v;
    }
    public function new(?_f:stdgo._internal.debug.elf.Elf_file.File) this = new stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe((_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.buildinfo.Buildinfo.T_peExe_static_extension) @:dox(hide) abstract T_peExe(stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe) from stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe to stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe {
    public var _f(get, set) : stdgo._internal.debug.pe.Pe_file.File;
    function get__f():stdgo._internal.debug.pe.Pe_file.File return this._f;
    function set__f(v:stdgo._internal.debug.pe.Pe_file.File):stdgo._internal.debug.pe.Pe_file.File {
        this._f = (v : stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>);
        return v;
    }
    public function new(?_f:stdgo._internal.debug.pe.Pe_file.File) this = new stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe((_f : stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.buildinfo.Buildinfo.T_machoExe_static_extension) @:dox(hide) abstract T_machoExe(stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe) from stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe to stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe {
    public var _f(get, set) : stdgo._internal.debug.macho.Macho_file.File;
    function get__f():stdgo._internal.debug.macho.Macho_file.File return this._f;
    function set__f(v:stdgo._internal.debug.macho.Macho_file.File):stdgo._internal.debug.macho.Macho_file.File {
        this._f = (v : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
        return v;
    }
    public function new(?_f:stdgo._internal.debug.macho.Macho_file.File) this = new stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe((_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.buildinfo.Buildinfo.T_xcoffExe_static_extension) @:dox(hide) abstract T_xcoffExe(stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe) from stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe to stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe {
    public var _f(get, set) : stdgo._internal.internal.xcoff.Xcoff_file.File;
    function get__f():stdgo._internal.internal.xcoff.Xcoff_file.File return this._f;
    function set__f(v:stdgo._internal.internal.xcoff.Xcoff_file.File):stdgo._internal.internal.xcoff.Xcoff_file.File {
        this._f = (v : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>);
        return v;
    }
    public function new(?_f:stdgo._internal.internal.xcoff.Xcoff_file.File) this = new stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe((_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.buildinfo.Buildinfo.T_plan9objExe_static_extension) @:dox(hide) abstract T_plan9objExe(stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe) from stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe to stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe {
    public var _f(get, set) : stdgo._internal.debug.plan9obj.Plan9obj_file.File;
    function get__f():stdgo._internal.debug.plan9obj.Plan9obj_file.File return this._f;
    function set__f(v:stdgo._internal.debug.plan9obj.Plan9obj_file.File):stdgo._internal.debug.plan9obj.Plan9obj_file.File {
        this._f = (v : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>);
        return v;
    }
    public function new(?_f:stdgo._internal.debug.plan9obj.Plan9obj_file.File) this = new stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe((_f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef BuildInfo = stdgo._internal.debug.buildinfo.Buildinfo_buildinfo.BuildInfo;
@:dox(hide) typedef T_elfExePointer = stdgo._internal.debug.buildinfo.Buildinfo_t_elfexepointer.T_elfExePointer;
@:dox(hide) class T_elfExe_static_extension {
    static public function dataStart(_x:T_elfExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe_static_extension.T_elfExe_static_extension.dataStart(_x);
    }
    static public function readData(_x:T_elfExe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe.T_elfExe>);
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe_static_extension.T_elfExe_static_extension.readData(_x, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_peExePointer = stdgo._internal.debug.buildinfo.Buildinfo_t_peexepointer.T_peExePointer;
@:dox(hide) class T_peExe_static_extension {
    static public function dataStart(_x:T_peExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_t_peexe_static_extension.T_peExe_static_extension.dataStart(_x);
    }
    static public function readData(_x:T_peExe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe>);
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_t_peexe_static_extension.T_peExe_static_extension.readData(_x, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _imageBase(_x:T_peExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_peexe.T_peExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_t_peexe_static_extension.T_peExe_static_extension._imageBase(_x);
    }
}
@:dox(hide) typedef T_machoExePointer = stdgo._internal.debug.buildinfo.Buildinfo_t_machoexepointer.T_machoExePointer;
@:dox(hide) class T_machoExe_static_extension {
    static public function dataStart(_x:T_machoExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe_static_extension.T_machoExe_static_extension.dataStart(_x);
    }
    static public function readData(_x:T_machoExe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe.T_machoExe>);
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_t_machoexe_static_extension.T_machoExe_static_extension.readData(_x, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_xcoffExePointer = stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexepointer.T_xcoffExePointer;
@:dox(hide) class T_xcoffExe_static_extension {
    static public function dataStart(_x:T_xcoffExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe_static_extension.T_xcoffExe_static_extension.dataStart(_x);
    }
    static public function readData(_x:T_xcoffExe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe.T_xcoffExe>);
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_t_xcoffexe_static_extension.T_xcoffExe_static_extension.readData(_x, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_plan9objExePointer = stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexepointer.T_plan9objExePointer;
@:dox(hide) class T_plan9objExe_static_extension {
    static public function readData(_x:T_plan9objExe, _addr:haxe.UInt64, _size:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe>);
        final _addr = (_addr : stdgo.GoUInt64);
        final _size = (_size : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe_static_extension.T_plan9objExe_static_extension.readData(_x, _addr, _size);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dataStart(_x:T_plan9objExe):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe.T_plan9objExe>);
        return stdgo._internal.debug.buildinfo.Buildinfo_t_plan9objexe_static_extension.T_plan9objExe_static_extension.dataStart(_x);
    }
}
typedef BuildInfoPointer = stdgo._internal.debug.buildinfo.Buildinfo_buildinfopointer.BuildInfoPointer;
class BuildInfo_static_extension {

}
/**
    * Package buildinfo provides access to information embedded in a Go binary
    * about how it was built. This includes the Go toolchain version, and the
    * set of modules used (for binaries built in module mode).
    * 
    * Build information is available for the currently running binary in
    * runtime/debug.ReadBuildInfo.
**/
class Buildinfo {
    /**
        * ReadFile returns build information embedded in a Go binary
        * file at the given path. Most information is only available for binaries built
        * with module support.
    **/
    static public inline function readFile(_name:String):stdgo.Tuple<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_readfile.readFile(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Read returns build information embedded in a Go binary file
        * accessed through the given ReaderAt. Most information is only available for
        * binaries built with module support.
    **/
    static public inline function read(_r:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Tuple<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_read.read(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
