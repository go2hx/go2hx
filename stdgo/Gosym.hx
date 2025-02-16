package stdgo;
@:structInit @:using(stdgo.debug.gosym.Gosym.LineTable_static_extension) abstract LineTable(stdgo._internal.debug.gosym.Gosym_linetable.LineTable) from stdgo._internal.debug.gosym.Gosym_linetable.LineTable to stdgo._internal.debug.gosym.Gosym_linetable.LineTable {
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var pC(get, set) : haxe.UInt64;
    function get_pC():haxe.UInt64 return this.pC;
    function set_pC(v:haxe.UInt64):haxe.UInt64 {
        this.pC = (v : stdgo.GoUInt64);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _version(get, set) : T_version;
    function get__version():T_version return this._version;
    function set__version(v:T_version):T_version {
        this._version = v;
        return v;
    }
    public var _binary(get, set) : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder;
    function get__binary():stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder return this._binary;
    function set__binary(v:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder):stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder {
        this._binary = v;
        return v;
    }
    public var _quantum(get, set) : std.UInt;
    function get__quantum():std.UInt return this._quantum;
    function set__quantum(v:std.UInt):std.UInt {
        this._quantum = (v : stdgo.GoUInt32);
        return v;
    }
    public var _ptrsize(get, set) : std.UInt;
    function get__ptrsize():std.UInt return this._ptrsize;
    function set__ptrsize(v:std.UInt):std.UInt {
        this._ptrsize = (v : stdgo.GoUInt32);
        return v;
    }
    public var _textStart(get, set) : haxe.UInt64;
    function get__textStart():haxe.UInt64 return this._textStart;
    function set__textStart(v:haxe.UInt64):haxe.UInt64 {
        this._textStart = (v : stdgo.GoUInt64);
        return v;
    }
    public var _funcnametab(get, set) : Array<std.UInt>;
    function get__funcnametab():Array<std.UInt> return [for (i in this._funcnametab) i];
    function set__funcnametab(v:Array<std.UInt>):Array<std.UInt> {
        this._funcnametab = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cutab(get, set) : Array<std.UInt>;
    function get__cutab():Array<std.UInt> return [for (i in this._cutab) i];
    function set__cutab(v:Array<std.UInt>):Array<std.UInt> {
        this._cutab = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _funcdata(get, set) : Array<std.UInt>;
    function get__funcdata():Array<std.UInt> return [for (i in this._funcdata) i];
    function set__funcdata(v:Array<std.UInt>):Array<std.UInt> {
        this._funcdata = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _functab(get, set) : Array<std.UInt>;
    function get__functab():Array<std.UInt> return [for (i in this._functab) i];
    function set__functab(v:Array<std.UInt>):Array<std.UInt> {
        this._functab = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nfunctab(get, set) : std.UInt;
    function get__nfunctab():std.UInt return this._nfunctab;
    function set__nfunctab(v:std.UInt):std.UInt {
        this._nfunctab = (v : stdgo.GoUInt32);
        return v;
    }
    public var _filetab(get, set) : Array<std.UInt>;
    function get__filetab():Array<std.UInt> return [for (i in this._filetab) i];
    function set__filetab(v:Array<std.UInt>):Array<std.UInt> {
        this._filetab = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _pctab(get, set) : Array<std.UInt>;
    function get__pctab():Array<std.UInt> return [for (i in this._pctab) i];
    function set__pctab(v:Array<std.UInt>):Array<std.UInt> {
        this._pctab = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nfiletab(get, set) : std.UInt;
    function get__nfiletab():std.UInt return this._nfiletab;
    function set__nfiletab(v:std.UInt):std.UInt {
        this._nfiletab = (v : stdgo.GoUInt32);
        return v;
    }
    public var _funcNames(get, set) : Map<std.UInt, String>;
    function get__funcNames():Map<std.UInt, String> return {
        final __obj__:Map<std.UInt, String> = [];
        for (key => value in this._funcNames) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__funcNames(v:Map<std.UInt, String>):Map<std.UInt, String> {
        this._funcNames = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt32)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var _strings(get, set) : Map<std.UInt, String>;
    function get__strings():Map<std.UInt, String> return {
        final __obj__:Map<std.UInt, String> = [];
        for (key => value in this._strings) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__strings(v:Map<std.UInt, String>):Map<std.UInt, String> {
        this._strings = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt32)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var _fileMap(get, set) : Map<String, std.UInt>;
    function get__fileMap():Map<String, std.UInt> return {
        final __obj__:Map<String, std.UInt> = [];
        for (key => value in this._fileMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__fileMap(v:Map<String, std.UInt>):Map<String, std.UInt> {
        this._fileMap = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoUInt32);
            };
            __obj__;
        };
        return v;
    }
    public function new(?data:Array<std.UInt>, ?pC:haxe.UInt64, ?line:StdTypes.Int, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_version:T_version, ?_binary:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?_quantum:std.UInt, ?_ptrsize:std.UInt, ?_textStart:haxe.UInt64, ?_funcnametab:Array<std.UInt>, ?_cutab:Array<std.UInt>, ?_funcdata:Array<std.UInt>, ?_functab:Array<std.UInt>, ?_nfunctab:std.UInt, ?_filetab:Array<std.UInt>, ?_pctab:Array<std.UInt>, ?_nfiletab:std.UInt, ?_funcNames:Map<std.UInt, String>, ?_strings:Map<std.UInt, String>, ?_fileMap:Map<String, std.UInt>) this = new stdgo._internal.debug.gosym.Gosym_linetable.LineTable(
([for (i in data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(pC : stdgo.GoUInt64),
(line : stdgo.GoInt),
_mu,
_version,
_binary,
(_quantum : stdgo.GoUInt32),
(_ptrsize : stdgo.GoUInt32),
(_textStart : stdgo.GoUInt64),
([for (i in _funcnametab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _cutab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _funcdata) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _functab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_nfunctab : stdgo.GoUInt32),
([for (i in _filetab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _pctab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_nfiletab : stdgo.GoUInt32),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>();
        for (key => value in _funcNames) {
            __obj__[(key : stdgo.GoUInt32)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>();
        for (key => value in _strings) {
            __obj__[(key : stdgo.GoUInt32)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>();
        for (key => value in _fileMap) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoUInt32);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.T_funcTab_static_extension) @:dox(hide) abstract T_funcTab(stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab) from stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab to stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab {
    public var lineTable(get, set) : LineTable;
    function get_lineTable():LineTable return this.lineTable;
    function set_lineTable(v:LineTable):LineTable {
        this.lineTable = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return v;
    }
    public var _sz(get, set) : StdTypes.Int;
    function get__sz():StdTypes.Int return this._sz;
    function set__sz(v:StdTypes.Int):StdTypes.Int {
        this._sz = (v : stdgo.GoInt);
        return v;
    }
    public function new(?lineTable:LineTable, ?_sz:StdTypes.Int) this = new stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab((lineTable : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>), (_sz : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.T_funcData_static_extension) @:dox(hide) abstract T_funcData(stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData) from stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData to stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData {
    public var _t(get, set) : LineTable;
    function get__t():LineTable return this._t;
    function set__t(v:LineTable):LineTable {
        this._t = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_t:LineTable, ?_data:Array<std.UInt>) this = new stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData((_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>), ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.Sym_static_extension) abstract Sym(stdgo._internal.debug.gosym.Gosym_sym.Sym) from stdgo._internal.debug.gosym.Gosym_sym.Sym to stdgo._internal.debug.gosym.Gosym_sym.Sym {
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var goType(get, set) : haxe.UInt64;
    function get_goType():haxe.UInt64 return this.goType;
    function set_goType(v:haxe.UInt64):haxe.UInt64 {
        this.goType = (v : stdgo.GoUInt64);
        return v;
    }
    public var func(get, set) : Func;
    function get_func():Func return this.func;
    function set_func(v:Func):Func {
        this.func = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
        return v;
    }
    public var _goVersion(get, set) : T_version;
    function get__goVersion():T_version return this._goVersion;
    function set__goVersion(v:T_version):T_version {
        this._goVersion = v;
        return v;
    }
    public function new(?value:haxe.UInt64, ?type:std.UInt, ?name:String, ?goType:haxe.UInt64, ?func:Func, ?_goVersion:T_version) this = new stdgo._internal.debug.gosym.Gosym_sym.Sym((value : stdgo.GoUInt64), (type : stdgo.GoUInt8), (name : stdgo.GoString), (goType : stdgo.GoUInt64), (func : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>), _goVersion);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.Func_static_extension) abstract Func(stdgo._internal.debug.gosym.Gosym_func.Func) from stdgo._internal.debug.gosym.Gosym_func.Func to stdgo._internal.debug.gosym.Gosym_func.Func {
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = (v : stdgo.GoUInt64);
        return v;
    }
    public var sym(get, set) : Sym;
    function get_sym():Sym return this.sym;
    function set_sym(v:Sym):Sym {
        this.sym = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        return v;
    }
    public var end(get, set) : haxe.UInt64;
    function get_end():haxe.UInt64 return this.end;
    function set_end(v:haxe.UInt64):haxe.UInt64 {
        this.end = (v : stdgo.GoUInt64);
        return v;
    }
    public var params(get, set) : Array<Sym>;
    function get_params():Array<Sym> return [for (i in this.params) i];
    function set_params(v:Array<Sym>):Array<Sym> {
        this.params = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
        return v;
    }
    public var locals(get, set) : Array<Sym>;
    function get_locals():Array<Sym> return [for (i in this.locals) i];
    function set_locals(v:Array<Sym>):Array<Sym> {
        this.locals = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
        return v;
    }
    public var frameSize(get, set) : StdTypes.Int;
    function get_frameSize():StdTypes.Int return this.frameSize;
    function set_frameSize(v:StdTypes.Int):StdTypes.Int {
        this.frameSize = (v : stdgo.GoInt);
        return v;
    }
    public var lineTable(get, set) : LineTable;
    function get_lineTable():LineTable return this.lineTable;
    function set_lineTable(v:LineTable):LineTable {
        this.lineTable = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return v;
    }
    public var obj(get, set) : Obj;
    function get_obj():Obj return this.obj;
    function set_obj(v:Obj):Obj {
        this.obj = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        return v;
    }
    public function new(?entry:haxe.UInt64, ?sym:Sym, ?end:haxe.UInt64, ?params:Array<Sym>, ?locals:Array<Sym>, ?frameSize:StdTypes.Int, ?lineTable:LineTable, ?obj:Obj) this = new stdgo._internal.debug.gosym.Gosym_func.Func((entry : stdgo.GoUInt64), (sym : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>), (end : stdgo.GoUInt64), ([for (i in params) (i : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>), ([for (i in locals) (i : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>), (frameSize : stdgo.GoInt), (lineTable : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>), (obj : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.Obj_static_extension) abstract Obj(stdgo._internal.debug.gosym.Gosym_obj.Obj) from stdgo._internal.debug.gosym.Gosym_obj.Obj to stdgo._internal.debug.gosym.Gosym_obj.Obj {
    public var funcs(get, set) : Array<Func>;
    function get_funcs():Array<Func> return [for (i in this.funcs) i];
    function set_funcs(v:Array<Func>):Array<Func> {
        this.funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
        return v;
    }
    public var paths(get, set) : Array<Sym>;
    function get_paths():Array<Sym> return [for (i in this.paths) i];
    function set_paths(v:Array<Sym>):Array<Sym> {
        this.paths = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        return v;
    }
    public function new(?funcs:Array<Func>, ?paths:Array<Sym>) this = new stdgo._internal.debug.gosym.Gosym_obj.Obj(([for (i in funcs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>), ([for (i in paths) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.Table_static_extension) abstract Table(stdgo._internal.debug.gosym.Gosym_table.Table) from stdgo._internal.debug.gosym.Gosym_table.Table to stdgo._internal.debug.gosym.Gosym_table.Table {
    public var syms(get, set) : Array<Sym>;
    function get_syms():Array<Sym> return [for (i in this.syms) i];
    function set_syms(v:Array<Sym>):Array<Sym> {
        this.syms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        return v;
    }
    public var funcs(get, set) : Array<Func>;
    function get_funcs():Array<Func> return [for (i in this.funcs) i];
    function set_funcs(v:Array<Func>):Array<Func> {
        this.funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
        return v;
    }
    public var files(get, set) : Map<String, Obj>;
    function get_files():Map<String, Obj> return {
        final __obj__:Map<String, Obj> = [];
        for (key => value in this.files) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_files(v:Map<String, Obj>):Map<String, Obj> {
        this.files = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
            };
            __obj__;
        };
        return v;
    }
    public var objs(get, set) : Array<Obj>;
    function get_objs():Array<Obj> return [for (i in this.objs) i];
    function set_objs(v:Array<Obj>):Array<Obj> {
        this.objs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        return v;
    }
    public var _go12line(get, set) : LineTable;
    function get__go12line():LineTable return this._go12line;
    function set__go12line(v:LineTable):LineTable {
        this._go12line = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return v;
    }
    public function new(?syms:Array<Sym>, ?funcs:Array<Func>, ?files:Map<String, Obj>, ?objs:Array<Obj>, ?_go12line:LineTable) this = new stdgo._internal.debug.gosym.Gosym_table.Table(([for (i in syms) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>), ([for (i in funcs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>();
        for (key => value in files) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        };
        __obj__;
    }, ([for (i in objs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>), (_go12line : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.T_sym_static_extension) @:dox(hide) abstract T_sym(stdgo._internal.debug.gosym.Gosym_t_sym.T_sym) from stdgo._internal.debug.gosym.Gosym_t_sym.T_sym to stdgo._internal.debug.gosym.Gosym_t_sym.T_sym {
    public var _value(get, set) : haxe.UInt64;
    function get__value():haxe.UInt64 return this._value;
    function set__value(v:haxe.UInt64):haxe.UInt64 {
        this._value = (v : stdgo.GoUInt64);
        return v;
    }
    public var _gotype(get, set) : haxe.UInt64;
    function get__gotype():haxe.UInt64 return this._gotype;
    function set__gotype(v:haxe.UInt64):haxe.UInt64 {
        this._gotype = (v : stdgo.GoUInt64);
        return v;
    }
    public var _typ(get, set) : std.UInt;
    function get__typ():std.UInt return this._typ;
    function set__typ(v:std.UInt):std.UInt {
        this._typ = (v : stdgo.GoUInt8);
        return v;
    }
    public var _name(get, set) : Array<std.UInt>;
    function get__name():Array<std.UInt> return [for (i in this._name) i];
    function set__name(v:Array<std.UInt>):Array<std.UInt> {
        this._name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_value:haxe.UInt64, ?_gotype:haxe.UInt64, ?_typ:std.UInt, ?_name:Array<std.UInt>) this = new stdgo._internal.debug.gosym.Gosym_t_sym.T_sym((_value : stdgo.GoUInt64), (_gotype : stdgo.GoUInt64), (_typ : stdgo.GoUInt8), ([for (i in _name) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.UnknownLineError_static_extension) abstract UnknownLineError(stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError) from stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError to stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError {
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?file:String, ?line:StdTypes.Int) this = new stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError((file : stdgo.GoString), (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.DecodingError_static_extension) abstract DecodingError(stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError) from stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError to stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError {
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_off:StdTypes.Int, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((_off : stdgo.GoInt), (_msg : stdgo.GoString), (_val : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_version = stdgo._internal.debug.gosym.Gosym_t_version.T_version;
typedef UnknownFileError = stdgo._internal.debug.gosym.Gosym_unknownfileerror.UnknownFileError;
typedef LineTablePointer = stdgo._internal.debug.gosym.Gosym_linetablepointer.LineTablePointer;
class LineTable_static_extension {
    static public function _go12MapFiles(_t:LineTable, _m:Map<String, Obj>, _obj:Obj):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>();
            for (key => value in _m) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
            };
            __obj__;
        };
        final _obj = (_obj : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._go12MapFiles(_t, _m, _obj);
    }
    static public function _initFileMap(_t:LineTable):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._initFileMap(_t);
    }
    static public function _go12LineToPC(_t:LineTable, _file:String, _line:StdTypes.Int):haxe.UInt64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _file = (_file : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._go12LineToPC(_t, _file, _line);
    }
    static public function _go12PCToFile(_t:LineTable, _pc:haxe.UInt64):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._go12PCToFile(_t, _pc);
    }
    static public function _go12PCToLine(_t:LineTable, _pc:haxe.UInt64):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._go12PCToLine(_t, _pc);
    }
    static public function _findFileLine(_t:LineTable, _entry:haxe.UInt64, _filetab:std.UInt, _linetab:std.UInt, _filenum:StdTypes.Int, _line:StdTypes.Int, _cutab:Array<std.UInt>):haxe.UInt64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _entry = (_entry : stdgo.GoUInt64);
        final _filetab = (_filetab : stdgo.GoUInt32);
        final _linetab = (_linetab : stdgo.GoUInt32);
        final _filenum = (_filenum : stdgo.GoInt32);
        final _line = (_line : stdgo.GoInt32);
        final _cutab = ([for (i in _cutab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._findFileLine(_t, _entry, _filetab, _linetab, _filenum, _line, _cutab);
    }
    static public function _pcvalue(_t:LineTable, _off:std.UInt, _entry:haxe.UInt64, _targetpc:haxe.UInt64):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _off = (_off : stdgo.GoUInt32);
        final _entry = (_entry : stdgo.GoUInt64);
        final _targetpc = (_targetpc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._pcvalue(_t, _off, _entry, _targetpc);
    }
    static public function _step(_t:LineTable, _p:Array<std.UInt>, _pc:stdgo.Pointer<haxe.UInt64>, _val:stdgo.Pointer<StdTypes.Int>, _first:Bool):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _p = (_p : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._step(_t, _p, _pc, _val, _first);
    }
    static public function _funcData(_t:LineTable, _i:std.UInt):T_funcData {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _i = (_i : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._funcData(_t, _i);
    }
    static public function _funcTab(_t:LineTable):T_funcTab {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._funcTab(_t);
    }
    static public function _functabFieldSize(_t:LineTable):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._functabFieldSize(_t);
    }
    static public function _string(_t:LineTable, _off:std.UInt):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _off = (_off : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._string(_t, _off);
    }
    static public function _stringFrom(_t:LineTable, _arr:Array<std.UInt>, _off:std.UInt):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _arr = ([for (i in _arr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._stringFrom(_t, _arr, _off);
    }
    static public function _funcName(_t:LineTable, _off:std.UInt):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _off = (_off : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._funcName(_t, _off);
    }
    static public function _readvarint(_t:LineTable, _pp:Array<std.UInt>):std.UInt {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _pp = (_pp : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._readvarint(_t, _pp);
    }
    static public function _findFunc(_t:LineTable, _pc:haxe.UInt64):T_funcData {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._findFunc(_t, _pc);
    }
    static public function _go12Funcs(_t:LineTable):Array<Func> {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return [for (i in stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._go12Funcs(_t)) i];
    }
    static public function _parsePclnTab(_t:LineTable):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._parsePclnTab(_t);
    }
    static public function _uintptr(_t:LineTable, _b:Array<std.UInt>):haxe.UInt64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._uintptr(_t, _b);
    }
    static public function _isGo12(_t:LineTable):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._isGo12(_t);
    }
    static public function lineToPC(_t:LineTable, _line:StdTypes.Int, _maxpc:haxe.UInt64):haxe.UInt64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _line = (_line : stdgo.GoInt);
        final _maxpc = (_maxpc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension.lineToPC(_t, _line, _maxpc);
    }
    static public function pCToLine(_t:LineTable, _pc:haxe.UInt64):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension.pCToLine(_t, _pc);
    }
    static public function _slice(_t:LineTable, _pc:haxe.UInt64):LineTable {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._slice(_t, _pc);
    }
    static public function _parse(_t:LineTable, _targetPC:haxe.UInt64, _targetLine:StdTypes.Int):stdgo.Tuple.Tuple3<Array<std.UInt>, haxe.UInt64, StdTypes.Int> {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        final _targetPC = (_targetPC : stdgo.GoUInt64);
        final _targetLine = (_targetLine : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_linetable_static_extension.LineTable_static_extension._parse(_t, _targetPC, _targetLine);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
}
@:dox(hide) typedef T_funcTabPointer = stdgo._internal.debug.gosym.Gosym_t_functabpointer.T_funcTabPointer;
@:dox(hide) class T_funcTab_static_extension {
    static public function _uint(_f:T_funcTab, _b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._uint(_f, _b);
    }
    static public function _funcOff(_f:T_funcTab, _i:StdTypes.Int):haxe.UInt64 {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._funcOff(_f, _i);
    }
    static public function _pc(_f:T_funcTab, _i:StdTypes.Int):haxe.UInt64 {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._pc(_f, _i);
    }
    static public function count(_f:T_funcTab):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension.count(_f);
    }
    public static function _uintptr(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:Array<std.UInt>):haxe.UInt64 {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._uintptr(__self__, _0);
    }
    public static function _stringFrom(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:Array<std.UInt>, _1:std.UInt):String {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._stringFrom(__self__, _0, _1);
    }
    public static function _string(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:std.UInt):String {
        final _0 = (_0 : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._string(__self__, _0);
    }
    public static function _step(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:Array<std.UInt>, _1:stdgo.Pointer<haxe.UInt64>, _2:stdgo.Pointer<StdTypes.Int>, _3:Bool):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._step(__self__, _0, _1, _2, _3);
    }
    public static function _slice(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:haxe.UInt64):LineTable {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._slice(__self__, _0);
    }
    public static function _readvarint(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:Array<std.UInt>):std.UInt {
        final _0 = (_0 : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._readvarint(__self__, _0);
    }
    public static function _pcvalue(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:std.UInt, _1:haxe.UInt64, _2:haxe.UInt64):StdTypes.Int {
        final _0 = (_0 : stdgo.GoUInt32);
        final _1 = (_1 : stdgo.GoUInt64);
        final _2 = (_2 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._pcvalue(__self__, _0, _1, _2);
    }
    public static function _parsePclnTab(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):Void {
        stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._parsePclnTab(__self__);
    }
    public static function _parse(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:haxe.UInt64, _1:StdTypes.Int):stdgo.Tuple.Tuple3<Array<std.UInt>, haxe.UInt64, StdTypes.Int> {
        final _0 = (_0 : stdgo.GoUInt64);
        final _1 = (_1 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._parse(__self__, _0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _isGo12(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):Bool {
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._isGo12(__self__);
    }
    public static function _initFileMap(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):Void {
        stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._initFileMap(__self__);
    }
    public static function _go12PCToLine(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:haxe.UInt64):StdTypes.Int {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._go12PCToLine(__self__, _0);
    }
    public static function _go12PCToFile(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:haxe.UInt64):String {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._go12PCToFile(__self__, _0);
    }
    public static function _go12MapFiles(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:Map<String, Obj>, _1:Obj):Void {
        final _0 = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>();
            for (key => value in _0) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
            };
            __obj__;
        };
        final _1 = (_1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._go12MapFiles(__self__, _0, _1);
    }
    public static function _go12LineToPC(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:String, _1:StdTypes.Int):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._go12LineToPC(__self__, _0, _1);
    }
    public static function _go12Funcs(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):Array<Func> {
        return [for (i in stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._go12Funcs(__self__)) i];
    }
    public static function _functabFieldSize(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._functabFieldSize(__self__);
    }
    public static function _funcTab(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab):T_funcTab {
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._funcTab(__self__);
    }
    public static function _funcName(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:std.UInt):String {
        final _0 = (_0 : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._funcName(__self__, _0);
    }
    public static function _funcData(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:std.UInt):T_funcData {
        final _0 = (_0 : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._funcData(__self__, _0);
    }
    public static function _findFunc(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:haxe.UInt64):T_funcData {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._findFunc(__self__, _0);
    }
    public static function _findFileLine(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:haxe.UInt64, _1:std.UInt, _2:std.UInt, _3:StdTypes.Int, _4:StdTypes.Int, _5:Array<std.UInt>):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoUInt64);
        final _1 = (_1 : stdgo.GoUInt32);
        final _2 = (_2 : stdgo.GoUInt32);
        final _3 = (_3 : stdgo.GoInt32);
        final _4 = (_4 : stdgo.GoInt32);
        final _5 = ([for (i in _5) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension._findFileLine(__self__, _0, _1, _2, _3, _4, _5);
    }
    public static function pCToLine(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:haxe.UInt64):StdTypes.Int {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension.pCToLine(__self__, _0);
    }
    public static function lineToPC(__self__:stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab, _0:StdTypes.Int, _1:haxe.UInt64):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_t_functab_static_extension.T_funcTab_static_extension.lineToPC(__self__, _0, _1);
    }
}
@:dox(hide) typedef T_funcDataPointer = stdgo._internal.debug.gosym.Gosym_t_funcdatapointer.T_funcDataPointer;
@:dox(hide) class T_funcData_static_extension {
    static public function _field(_f:T_funcData, _n:std.UInt):std.UInt {
        final _n = (_n : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension._field(_f, _n);
    }
    static public function _cuOffset(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension._cuOffset(_f);
    }
    static public function _pcln(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension._pcln(_f);
    }
    static public function _pcfile(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension._pcfile(_f);
    }
    static public function _deferreturn(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension._deferreturn(_f);
    }
    static public function _nameOff(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension._nameOff(_f);
    }
    static public function _entryPC(_f:T_funcData):haxe.UInt64 {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData>);
        return stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension._entryPC(_f);
    }
    static public function isZero(_f:T_funcData):Bool {
        return stdgo._internal.debug.gosym.Gosym_t_funcdata_static_extension.T_funcData_static_extension.isZero(_f);
    }
}
typedef SymPointer = stdgo._internal.debug.gosym.Gosym_sympointer.SymPointer;
class Sym_static_extension {
    static public function baseName(_s:Sym):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        return stdgo._internal.debug.gosym.Gosym_sym_static_extension.Sym_static_extension.baseName(_s);
    }
    static public function receiverName(_s:Sym):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        return stdgo._internal.debug.gosym.Gosym_sym_static_extension.Sym_static_extension.receiverName(_s);
    }
    static public function packageName(_s:Sym):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        return stdgo._internal.debug.gosym.Gosym_sym_static_extension.Sym_static_extension.packageName(_s);
    }
    static public function _nameWithoutInst(_s:Sym):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        return stdgo._internal.debug.gosym.Gosym_sym_static_extension.Sym_static_extension._nameWithoutInst(_s);
    }
    static public function static_(_s:Sym):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        return stdgo._internal.debug.gosym.Gosym_sym_static_extension.Sym_static_extension.static_(_s);
    }
}
typedef FuncPointer = stdgo._internal.debug.gosym.Gosym_funcpointer.FuncPointer;
class Func_static_extension {
    public static function _nameWithoutInst(__self__:stdgo._internal.debug.gosym.Gosym_func.Func):String {
        return stdgo._internal.debug.gosym.Gosym_func_static_extension.Func_static_extension._nameWithoutInst(__self__);
    }
    public static function static_(__self__:stdgo._internal.debug.gosym.Gosym_func.Func):Bool {
        return stdgo._internal.debug.gosym.Gosym_func_static_extension.Func_static_extension.static_(__self__);
    }
    public static function receiverName(__self__:stdgo._internal.debug.gosym.Gosym_func.Func):String {
        return stdgo._internal.debug.gosym.Gosym_func_static_extension.Func_static_extension.receiverName(__self__);
    }
    public static function packageName(__self__:stdgo._internal.debug.gosym.Gosym_func.Func):String {
        return stdgo._internal.debug.gosym.Gosym_func_static_extension.Func_static_extension.packageName(__self__);
    }
    public static function baseName(__self__:stdgo._internal.debug.gosym.Gosym_func.Func):String {
        return stdgo._internal.debug.gosym.Gosym_func_static_extension.Func_static_extension.baseName(__self__);
    }
}
typedef ObjPointer = stdgo._internal.debug.gosym.Gosym_objpointer.ObjPointer;
class Obj_static_extension {
    static public function _alineFromLine(_o:Obj, _path:String, _line:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        final _path = (_path : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_obj_static_extension.Obj_static_extension._alineFromLine(_o, _path, _line);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _lineFromAline(_o:Obj, _aline:StdTypes.Int):stdgo.Tuple<String, StdTypes.Int> {
        final _o = (_o : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        final _aline = (_aline : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_obj_static_extension.Obj_static_extension._lineFromAline(_o, _aline);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:structInit @:dox(hide) abstract T__lineFromAline___localname___stackEnt_16022(stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022) from stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022 to stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022 {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public var _prev(get, set) : T__lineFromAline___localname___stackEnt_16022;
    function get__prev():T__lineFromAline___localname___stackEnt_16022 return this._prev;
    function set__prev(v:T__lineFromAline___localname___stackEnt_16022):T__lineFromAline___localname___stackEnt_16022 {
        this._prev = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022>);
        return v;
    }
    public function new(?_path:String, ?_start:StdTypes.Int, ?_offset:StdTypes.Int, ?_prev:T__lineFromAline___localname___stackEnt_16022) this = new stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022((_path : stdgo.GoString), (_start : stdgo.GoInt), (_offset : stdgo.GoInt), (_prev : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef TablePointer = stdgo._internal.debug.gosym.Gosym_tablepointer.TablePointer;
class Table_static_extension {
    static public function symByAddr(_t:Table, _addr:haxe.UInt64):Sym {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>);
        final _addr = (_addr : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_table_static_extension.Table_static_extension.symByAddr(_t, _addr);
    }
    static public function lookupFunc(_t:Table, _name:String):Func {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.gosym.Gosym_table_static_extension.Table_static_extension.lookupFunc(_t, _name);
    }
    static public function lookupSym(_t:Table, _name:String):Sym {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.gosym.Gosym_table_static_extension.Table_static_extension.lookupSym(_t, _name);
    }
    static public function lineToPC(_t:Table, _file:String, _line:StdTypes.Int):stdgo.Tuple.Tuple3<haxe.UInt64, Func, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>);
        final _file = (_file : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_table_static_extension.Table_static_extension.lineToPC(_t, _file, _line);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pCToLine(_t:Table, _pc:haxe.UInt64):stdgo.Tuple.Tuple3<String, StdTypes.Int, Func> {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>);
        final _pc = (_pc : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_table_static_extension.Table_static_extension.pCToLine(_t, _pc);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pCToFunc(_t:Table, _pc:haxe.UInt64):Func {
        final _t = (_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>);
        final _pc = (_pc : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_table_static_extension.Table_static_extension.pCToFunc(_t, _pc);
    }
}
@:dox(hide) typedef T_symPointer = stdgo._internal.debug.gosym.Gosym_t_sympointer.T_symPointer;
@:dox(hide) class T_sym_static_extension {

}
typedef UnknownLineErrorPointer = stdgo._internal.debug.gosym.Gosym_unknownlineerrorpointer.UnknownLineErrorPointer;
class UnknownLineError_static_extension {
    static public function error(_e:UnknownLineError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError>);
        return stdgo._internal.debug.gosym.Gosym_unknownlineerror_static_extension.UnknownLineError_static_extension.error(_e);
    }
}
typedef DecodingErrorPointer = stdgo._internal.debug.gosym.Gosym_decodingerrorpointer.DecodingErrorPointer;
class DecodingError_static_extension {
    static public function error(_e:DecodingError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>);
        return stdgo._internal.debug.gosym.Gosym_decodingerror_static_extension.DecodingError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_versionPointer = stdgo._internal.debug.gosym.Gosym_t_versionpointer.T_versionPointer;
@:dox(hide) class T_version_static_extension {

}
typedef UnknownFileErrorPointer = stdgo._internal.debug.gosym.Gosym_unknownfileerrorpointer.UnknownFileErrorPointer;
class UnknownFileError_static_extension {
    static public function error(_e:UnknownFileError):String {
        return stdgo._internal.debug.gosym.Gosym_unknownfileerror_static_extension.UnknownFileError_static_extension.error(_e);
    }
}
/**
    * Package gosym implements access to the Go symbol
    * and line number tables embedded in Go binaries generated
    * by the gc compilers.
**/
class Gosym {
    /**
        * NewLineTable returns a new PC/line table
        * corresponding to the encoded data.
        * Text must be the start address of the
        * corresponding text segment.
    **/
    static public inline function newLineTable(_data:Array<std.UInt>, _text:haxe.UInt64):LineTable {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _text = (_text : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_newlinetable.newLineTable(_data, _text);
    }
    /**
        * NewTable decodes the Go symbol table (the ".gosymtab" section in ELF),
        * returning an in-memory representation.
        * Starting with Go 1.3, the Go symbol table no longer includes symbol data.
    **/
    static public inline function newTable(_symtab:Array<std.UInt>, _pcln:LineTable):stdgo.Tuple<Table, stdgo.Error> {
        final _symtab = ([for (i in _symtab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _pcln = (_pcln : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_newtable.newTable(_symtab, _pcln);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
