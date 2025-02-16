package stdgo.cformat;
@:structInit @:using(stdgo.internal.coverage.cformat.Cformat.Formatter_static_extension) abstract Formatter(stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter) from stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter to stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter {
    public var _pm(get, set) : Map<String, T_pstate>;
    function get__pm():Map<String, T_pstate> return {
        final __obj__:Map<String, T_pstate> = [];
        for (key => value in this._pm) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__pm(v:Map<String, T_pstate>):Map<String, T_pstate> {
        this._pm = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>);
            };
            __obj__;
        };
        return v;
    }
    public var _pkg(get, set) : String;
    function get__pkg():String return this._pkg;
    function set__pkg(v:String):String {
        this._pkg = (v : stdgo.GoString);
        return v;
    }
    public var _p(get, set) : T_pstate;
    function get__p():T_pstate return this._p;
    function set__p(v:T_pstate):T_pstate {
        this._p = (v : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>);
        return v;
    }
    public var _cm(get, set) : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode;
    function get__cm():stdgo._internal.internal.coverage.Coverage_countermode.CounterMode return this._cm;
    function set__cm(v:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode):stdgo._internal.internal.coverage.Coverage_countermode.CounterMode {
        this._cm = v;
        return v;
    }
    public function new(?_pm:Map<String, T_pstate>, ?_pkg:String, ?_p:T_pstate, ?_cm:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode) this = new stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter({
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>>();
        for (key => value in _pm) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>);
        };
        __obj__;
    }, (_pkg : stdgo.GoString), (_p : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>), _cm);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.cformat.Cformat.T_pstate_static_extension) @:dox(hide) abstract T_pstate(stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate) from stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate to stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate {
    public var _funcs(get, set) : Array<T_fnfile>;
    function get__funcs():Array<T_fnfile> return [for (i in this._funcs) i];
    function set__funcs(v:Array<T_fnfile>):Array<T_fnfile> {
        this._funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile>);
        return v;
    }
    public var _funcTable(get, set) : Map<T_fnfile, std.UInt>;
    function get__funcTable():Map<T_fnfile, std.UInt> return {
        final __obj__:Map<T_fnfile, std.UInt> = [];
        for (key => value in this._funcTable) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__funcTable(v:Map<T_fnfile, std.UInt>):Map<T_fnfile, std.UInt> {
        this._funcTable = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile, stdgo.GoUInt32>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.GoUInt32);
            };
            __obj__;
        };
        return v;
    }
    public var _unitTable(get, set) : Map<T_extcu, std.UInt>;
    function get__unitTable():Map<T_extcu, std.UInt> return {
        final __obj__:Map<T_extcu, std.UInt> = [];
        for (key => value in this._unitTable) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__unitTable(v:Map<T_extcu, std.UInt>):Map<T_extcu, std.UInt> {
        this._unitTable = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu, stdgo.GoUInt32>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.GoUInt32);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_funcs:Array<T_fnfile>, ?_funcTable:Map<T_fnfile, std.UInt>, ?_unitTable:Map<T_extcu, std.UInt>) this = new stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate(([for (i in _funcs) i] : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile>), {
        final __obj__ = new stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile, stdgo.GoUInt32>();
        for (key => value in _funcTable) {
            __obj__[key] = (value : stdgo.GoUInt32);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu, stdgo.GoUInt32>();
        for (key => value in _unitTable) {
            __obj__[key] = (value : stdgo.GoUInt32);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.cformat.Cformat.T_extcu_static_extension) @:dox(hide) abstract T_extcu(stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu) from stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu to stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu {
    public var _fnfid(get, set) : std.UInt;
    function get__fnfid():std.UInt return this._fnfid;
    function set__fnfid(v:std.UInt):std.UInt {
        this._fnfid = (v : stdgo.GoUInt32);
        return v;
    }
    public var coverableUnit(get, set) : stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit;
    function get_coverableUnit():stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit return this.coverableUnit;
    function set_coverableUnit(v:stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit):stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit {
        this.coverableUnit = v;
        return v;
    }
    public function new(?_fnfid:std.UInt, ?coverableUnit:stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit) this = new stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu((_fnfid : stdgo.GoUInt32), coverableUnit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.cformat.Cformat.T_fnfile_static_extension) @:dox(hide) abstract T_fnfile(stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile) from stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile to stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile {
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = (v : stdgo.GoString);
        return v;
    }
    public var _fname(get, set) : String;
    function get__fname():String return this._fname;
    function set__fname(v:String):String {
        this._fname = (v : stdgo.GoString);
        return v;
    }
    public var _lit(get, set) : Bool;
    function get__lit():Bool return this._lit;
    function set__lit(v:Bool):Bool {
        this._lit = v;
        return v;
    }
    public function new(?_file:String, ?_fname:String, ?_lit:Bool) this = new stdgo._internal.internal.coverage.cformat.Cformat_t_fnfile.T_fnfile((_file : stdgo.GoString), (_fname : stdgo.GoString), _lit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef FormatterPointer = stdgo._internal.internal.coverage.cformat.Cformat_formatterpointer.FormatterPointer;
class Formatter_static_extension {
    static public function emitFuncs(_fm:Formatter, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>);
        return stdgo._internal.internal.coverage.cformat.Cformat_formatter_static_extension.Formatter_static_extension.emitFuncs(_fm, _w);
    }
    static public function emitPercent(_fm:Formatter, _w:stdgo._internal.io.Io_writer.Writer, _covpkgs:String, _noteEmpty:Bool, _aggregate:Bool):stdgo.Error {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>);
        final _covpkgs = (_covpkgs : stdgo.GoString);
        return stdgo._internal.internal.coverage.cformat.Cformat_formatter_static_extension.Formatter_static_extension.emitPercent(_fm, _w, _covpkgs, _noteEmpty, _aggregate);
    }
    static public function emitTextual(_fm:Formatter, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>);
        return stdgo._internal.internal.coverage.cformat.Cformat_formatter_static_extension.Formatter_static_extension.emitTextual(_fm, _w);
    }
    static public function addUnit(_fm:Formatter, _file:String, _fname:String, _isfnlit:Bool, _unit:stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit, _count:std.UInt):Void {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>);
        final _file = (_file : stdgo.GoString);
        final _fname = (_fname : stdgo.GoString);
        final _count = (_count : stdgo.GoUInt32);
        stdgo._internal.internal.coverage.cformat.Cformat_formatter_static_extension.Formatter_static_extension.addUnit(_fm, _file, _fname, _isfnlit, _unit, _count);
    }
    static public function setPackage(_fm:Formatter, _importpath:String):Void {
        final _fm = (_fm : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_formatter.Formatter>);
        final _importpath = (_importpath : stdgo.GoString);
        stdgo._internal.internal.coverage.cformat.Cformat_formatter_static_extension.Formatter_static_extension.setPackage(_fm, _importpath);
    }
}
@:dox(hide) typedef T_pstatePointer = stdgo._internal.internal.coverage.cformat.Cformat_t_pstatepointer.T_pstatePointer;
@:dox(hide) class T_pstate_static_extension {
    static public function _sortUnits(_p:T_pstate, _units:Array<T_extcu>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_t_pstate.T_pstate>);
        final _units = ([for (i in _units) i] : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_t_extcu.T_extcu>);
        stdgo._internal.internal.coverage.cformat.Cformat_t_pstate_static_extension.T_pstate_static_extension._sortUnits(_p, _units);
    }
}
@:dox(hide) typedef T_extcuPointer = stdgo._internal.internal.coverage.cformat.Cformat_t_extcupointer.T_extcuPointer;
@:dox(hide) class T_extcu_static_extension {

}
@:dox(hide) typedef T_fnfilePointer = stdgo._internal.internal.coverage.cformat.Cformat_t_fnfilepointer.T_fnfilePointer;
@:dox(hide) class T_fnfile_static_extension {

}
class Cformat {
    static public inline function newFormatter(_cm:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode):Formatter {
        return stdgo._internal.internal.coverage.cformat.Cformat_newformatter.newFormatter(_cm);
    }
}
