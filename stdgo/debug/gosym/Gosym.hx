package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.LineTable_static_extension) abstract LineTable(stdgo._internal.debug.gosym.Gosym_LineTable.LineTable) from stdgo._internal.debug.gosym.Gosym_LineTable.LineTable to stdgo._internal.debug.gosym.Gosym_LineTable.LineTable {
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var pc(get, set) : haxe.UInt64;
    function get_pc():haxe.UInt64 return this.pc;
    function set_pc(v:haxe.UInt64):haxe.UInt64 {
        this.pc = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _version(get, set) : T_version;
    function get__version():T_version return this._version;
    function set__version(v:T_version):T_version {
        this._version = v;
        return v;
    }
    public var _binary(get, set) : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder;
    function get__binary():stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder return this._binary;
    function set__binary(v:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        this._binary = v;
        return v;
    }
    public var _quantum(get, set) : std.UInt;
    function get__quantum():std.UInt return this._quantum;
    function set__quantum(v:std.UInt):std.UInt {
        this._quantum = v;
        return v;
    }
    public var _ptrsize(get, set) : std.UInt;
    function get__ptrsize():std.UInt return this._ptrsize;
    function set__ptrsize(v:std.UInt):std.UInt {
        this._ptrsize = v;
        return v;
    }
    public var _textStart(get, set) : haxe.UInt64;
    function get__textStart():haxe.UInt64 return this._textStart;
    function set__textStart(v:haxe.UInt64):haxe.UInt64 {
        this._textStart = v;
        return v;
    }
    public var _funcnametab(get, set) : Array<std.UInt>;
    function get__funcnametab():Array<std.UInt> return [for (i in this._funcnametab) i];
    function set__funcnametab(v:Array<std.UInt>):Array<std.UInt> {
        this._funcnametab = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cutab(get, set) : Array<std.UInt>;
    function get__cutab():Array<std.UInt> return [for (i in this._cutab) i];
    function set__cutab(v:Array<std.UInt>):Array<std.UInt> {
        this._cutab = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _funcdata(get, set) : Array<std.UInt>;
    function get__funcdata():Array<std.UInt> return [for (i in this._funcdata) i];
    function set__funcdata(v:Array<std.UInt>):Array<std.UInt> {
        this._funcdata = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _functab(get, set) : Array<std.UInt>;
    function get__functab():Array<std.UInt> return [for (i in this._functab) i];
    function set__functab(v:Array<std.UInt>):Array<std.UInt> {
        this._functab = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nfunctab(get, set) : std.UInt;
    function get__nfunctab():std.UInt return this._nfunctab;
    function set__nfunctab(v:std.UInt):std.UInt {
        this._nfunctab = v;
        return v;
    }
    public var _filetab(get, set) : Array<std.UInt>;
    function get__filetab():Array<std.UInt> return [for (i in this._filetab) i];
    function set__filetab(v:Array<std.UInt>):Array<std.UInt> {
        this._filetab = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _pctab(get, set) : Array<std.UInt>;
    function get__pctab():Array<std.UInt> return [for (i in this._pctab) i];
    function set__pctab(v:Array<std.UInt>):Array<std.UInt> {
        this._pctab = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nfiletab(get, set) : std.UInt;
    function get__nfiletab():std.UInt return this._nfiletab;
    function set__nfiletab(v:std.UInt):std.UInt {
        this._nfiletab = v;
        return v;
    }
    public var _funcNames(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>;
    function get__funcNames():stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> return this._funcNames;
    function set__funcNames(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> {
        this._funcNames = v;
        return v;
    }
    public var _strings(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>;
    function get__strings():stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> return this._strings;
    function set__strings(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> {
        this._strings = v;
        return v;
    }
    public var _fileMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>;
    function get__fileMap():stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> return this._fileMap;
    function set__fileMap(v:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>):stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> {
        this._fileMap = v;
        return v;
    }
    public function new(?data:Array<std.UInt>, ?pc:haxe.UInt64, ?line:StdTypes.Int, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_version:T_version, ?_binary:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?_quantum:std.UInt, ?_ptrsize:std.UInt, ?_textStart:haxe.UInt64, ?_funcnametab:Array<std.UInt>, ?_cutab:Array<std.UInt>, ?_funcdata:Array<std.UInt>, ?_functab:Array<std.UInt>, ?_nfunctab:std.UInt, ?_filetab:Array<std.UInt>, ?_pctab:Array<std.UInt>, ?_nfiletab:std.UInt, ?_funcNames:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_strings:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_fileMap:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>) this = new stdgo._internal.debug.gosym.Gosym_LineTable.LineTable(
([for (i in data) i] : stdgo.Slice<stdgo.GoUInt8>),
pc,
line,
_mu,
_version,
_binary,
_quantum,
_ptrsize,
_textStart,
([for (i in _funcnametab) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _cutab) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _funcdata) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _functab) i] : stdgo.Slice<stdgo.GoUInt8>),
_nfunctab,
([for (i in _filetab) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _pctab) i] : stdgo.Slice<stdgo.GoUInt8>),
_nfiletab,
_funcNames,
_strings,
_fileMap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.T_funcTab_static_extension) abstract T_funcTab(stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab) from stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab to stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab {
    public var lineTable(get, set) : LineTable;
    function get_lineTable():LineTable return this.lineTable;
    function set_lineTable(v:LineTable):LineTable {
        this.lineTable = v;
        return v;
    }
    public var _sz(get, set) : StdTypes.Int;
    function get__sz():StdTypes.Int return this._sz;
    function set__sz(v:StdTypes.Int):StdTypes.Int {
        this._sz = v;
        return v;
    }
    public function new(?lineTable:LineTable, ?_sz:StdTypes.Int) this = new stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab(lineTable, _sz);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.T_funcData_static_extension) abstract T_funcData(stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData) from stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData to stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData {
    public var _t(get, set) : LineTable;
    function get__t():LineTable return this._t;
    function set__t(v:LineTable):LineTable {
        this._t = v;
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_t:LineTable, ?_data:Array<std.UInt>) this = new stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData(_t, ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.Sym_static_extension) abstract Sym(stdgo._internal.debug.gosym.Gosym_Sym.Sym) from stdgo._internal.debug.gosym.Gosym_Sym.Sym to stdgo._internal.debug.gosym.Gosym_Sym.Sym {
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = v;
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var goType(get, set) : haxe.UInt64;
    function get_goType():haxe.UInt64 return this.goType;
    function set_goType(v:haxe.UInt64):haxe.UInt64 {
        this.goType = v;
        return v;
    }
    public var func(get, set) : Func;
    function get_func():Func return this.func;
    function set_func(v:Func):Func {
        this.func = v;
        return v;
    }
    public var _goVersion(get, set) : T_version;
    function get__goVersion():T_version return this._goVersion;
    function set__goVersion(v:T_version):T_version {
        this._goVersion = v;
        return v;
    }
    public function new(?value:haxe.UInt64, ?type:std.UInt, ?name:String, ?goType:haxe.UInt64, ?func:Func, ?_goVersion:T_version) this = new stdgo._internal.debug.gosym.Gosym_Sym.Sym(value, type, name, goType, func, _goVersion);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.Func_static_extension) abstract Func(stdgo._internal.debug.gosym.Gosym_Func.Func) from stdgo._internal.debug.gosym.Gosym_Func.Func to stdgo._internal.debug.gosym.Gosym_Func.Func {
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = v;
        return v;
    }
    public var sym(get, set) : Sym;
    function get_sym():Sym return this.sym;
    function set_sym(v:Sym):Sym {
        this.sym = v;
        return v;
    }
    public var end(get, set) : haxe.UInt64;
    function get_end():haxe.UInt64 return this.end;
    function set_end(v:haxe.UInt64):haxe.UInt64 {
        this.end = v;
        return v;
    }
    public var params(get, set) : Array<Sym>;
    function get_params():Array<Sym> return [for (i in this.params) i];
    function set_params(v:Array<Sym>):Array<Sym> {
        this.params = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
        return v;
    }
    public var locals(get, set) : Array<Sym>;
    function get_locals():Array<Sym> return [for (i in this.locals) i];
    function set_locals(v:Array<Sym>):Array<Sym> {
        this.locals = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
        return v;
    }
    public var frameSize(get, set) : StdTypes.Int;
    function get_frameSize():StdTypes.Int return this.frameSize;
    function set_frameSize(v:StdTypes.Int):StdTypes.Int {
        this.frameSize = v;
        return v;
    }
    public var lineTable(get, set) : LineTable;
    function get_lineTable():LineTable return this.lineTable;
    function set_lineTable(v:LineTable):LineTable {
        this.lineTable = v;
        return v;
    }
    public var obj(get, set) : Obj;
    function get_obj():Obj return this.obj;
    function set_obj(v:Obj):Obj {
        this.obj = v;
        return v;
    }
    public function new(?entry:haxe.UInt64, ?sym:Sym, ?end:haxe.UInt64, ?params:Array<Sym>, ?locals:Array<Sym>, ?frameSize:StdTypes.Int, ?lineTable:LineTable, ?obj:Obj) this = new stdgo._internal.debug.gosym.Gosym_Func.Func(entry, sym, end, ([for (i in params) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>), ([for (i in locals) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>), frameSize, lineTable, obj);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.Obj_static_extension) abstract Obj(stdgo._internal.debug.gosym.Gosym_Obj.Obj) from stdgo._internal.debug.gosym.Gosym_Obj.Obj to stdgo._internal.debug.gosym.Gosym_Obj.Obj {
    public var funcs(get, set) : Array<Func>;
    function get_funcs():Array<Func> return [for (i in this.funcs) i];
    function set_funcs(v:Array<Func>):Array<Func> {
        this.funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
        return v;
    }
    public var paths(get, set) : Array<Sym>;
    function get_paths():Array<Sym> return [for (i in this.paths) i];
    function set_paths(v:Array<Sym>):Array<Sym> {
        this.paths = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
        return v;
    }
    public function new(?funcs:Array<Func>, ?paths:Array<Sym>) this = new stdgo._internal.debug.gosym.Gosym_Obj.Obj(([for (i in funcs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>), ([for (i in paths) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.Table_static_extension) abstract Table(stdgo._internal.debug.gosym.Gosym_Table.Table) from stdgo._internal.debug.gosym.Gosym_Table.Table to stdgo._internal.debug.gosym.Gosym_Table.Table {
    public var syms(get, set) : Array<Sym>;
    function get_syms():Array<Sym> return [for (i in this.syms) i];
    function set_syms(v:Array<Sym>):Array<Sym> {
        this.syms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
        return v;
    }
    public var funcs(get, set) : Array<Func>;
    function get_funcs():Array<Func> return [for (i in this.funcs) i];
    function set_funcs(v:Array<Func>):Array<Func> {
        this.funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
        return v;
    }
    public var files(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>;
    function get_files():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>> return this.files;
    function set_files(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>> {
        this.files = v;
        return v;
    }
    public var objs(get, set) : Array<Obj>;
    function get_objs():Array<Obj> return [for (i in this.objs) i];
    function set_objs(v:Array<Obj>):Array<Obj> {
        this.objs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
        return v;
    }
    public var _go12line(get, set) : LineTable;
    function get__go12line():LineTable return this._go12line;
    function set__go12line(v:LineTable):LineTable {
        this._go12line = v;
        return v;
    }
    public function new(?syms:Array<Sym>, ?funcs:Array<Func>, ?files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, ?objs:Array<Obj>, ?_go12line:LineTable) this = new stdgo._internal.debug.gosym.Gosym_Table.Table(([for (i in syms) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>), ([for (i in funcs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>), files, ([for (i in objs) i] : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>), _go12line);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_sym(stdgo._internal.debug.gosym.Gosym_T_sym.T_sym) from stdgo._internal.debug.gosym.Gosym_T_sym.T_sym to stdgo._internal.debug.gosym.Gosym_T_sym.T_sym {
    public var _value(get, set) : haxe.UInt64;
    function get__value():haxe.UInt64 return this._value;
    function set__value(v:haxe.UInt64):haxe.UInt64 {
        this._value = v;
        return v;
    }
    public var _gotype(get, set) : haxe.UInt64;
    function get__gotype():haxe.UInt64 return this._gotype;
    function set__gotype(v:haxe.UInt64):haxe.UInt64 {
        this._gotype = v;
        return v;
    }
    public var _typ(get, set) : std.UInt;
    function get__typ():std.UInt return this._typ;
    function set__typ(v:std.UInt):std.UInt {
        this._typ = v;
        return v;
    }
    public var _name(get, set) : Array<std.UInt>;
    function get__name():Array<std.UInt> return [for (i in this._name) i];
    function set__name(v:Array<std.UInt>):Array<std.UInt> {
        this._name = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_value:haxe.UInt64, ?_gotype:haxe.UInt64, ?_typ:std.UInt, ?_name:Array<std.UInt>) this = new stdgo._internal.debug.gosym.Gosym_T_sym.T_sym(_value, _gotype, _typ, ([for (i in _name) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.UnknownLineError_static_extension) abstract UnknownLineError(stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError) from stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError to stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError {
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public function new(?file:String, ?line:StdTypes.Int) this = new stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError(file, line);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.gosym.Gosym.DecodingError_static_extension) abstract DecodingError(stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError) from stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError to stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError {
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = v;
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = v;
        return v;
    }
    public function new(?_off:StdTypes.Int, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError(_off, _msg, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_version = stdgo._internal.debug.gosym.Gosym_T_version.T_version;
typedef UnknownFileError = stdgo._internal.debug.gosym.Gosym_UnknownFileError.UnknownFileError;
class LineTable_static_extension {
    static public function _go12MapFiles(_t:LineTable, _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, _obj:Obj):Void {
        stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12MapFiles(_t, _m, _obj);
    }
    static public function _initFileMap(_t:LineTable):Void {
        stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._initFileMap(_t);
    }
    static public function _go12LineToPC(_t:LineTable, _file:String, _line:StdTypes.Int):haxe.UInt64 {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12LineToPC(_t, _file, _line);
    }
    static public function _go12PCToFile(_t:LineTable, _pc:haxe.UInt64):String {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12PCToFile(_t, _pc);
    }
    static public function _go12PCToLine(_t:LineTable, _pc:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12PCToLine(_t, _pc);
    }
    static public function _findFileLine(_t:LineTable, _entry:haxe.UInt64, _filetab:std.UInt, _linetab:std.UInt, _filenum:StdTypes.Int, _line:StdTypes.Int, _cutab:Array<std.UInt>):haxe.UInt64 {
        final _cutab = ([for (i in _cutab) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._findFileLine(_t, _entry, _filetab, _linetab, _filenum, _line, _cutab);
    }
    static public function _pcvalue(_t:LineTable, _off:std.UInt, _entry:haxe.UInt64, _targetpc:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._pcvalue(_t, _off, _entry, _targetpc);
    }
    static public function _step(_t:LineTable, _p:Array<std.UInt>, _pc:stdgo.Pointer<haxe.UInt64>, _val:stdgo.Pointer<StdTypes.Int>, _first:Bool):Bool {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._step(_t, _p, _pc, _val, _first);
    }
    static public function _funcData(_t:LineTable, _i:std.UInt):T_funcData {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._funcData(_t, _i);
    }
    static public function _funcTab(_t:LineTable):T_funcTab {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._funcTab(_t);
    }
    static public function _functabFieldSize(_t:LineTable):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._functabFieldSize(_t);
    }
    static public function _string(_t:LineTable, _off:std.UInt):String {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._string(_t, _off);
    }
    static public function _stringFrom(_t:LineTable, _arr:Array<std.UInt>, _off:std.UInt):String {
        final _arr = ([for (i in _arr) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._stringFrom(_t, _arr, _off);
    }
    static public function _funcName(_t:LineTable, _off:std.UInt):String {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._funcName(_t, _off);
    }
    static public function _readvarint(_t:LineTable, _pp:Array<std.UInt>):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._readvarint(_t, _pp);
    }
    static public function _findFunc(_t:LineTable, _pc:haxe.UInt64):T_funcData {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._findFunc(_t, _pc);
    }
    static public function _go12Funcs(_t:LineTable):Array<Func> {
        return [for (i in stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._go12Funcs(_t)) i];
    }
    static public function _parsePclnTab(_t:LineTable):Void {
        stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._parsePclnTab(_t);
    }
    static public function _uintptr(_t:LineTable, _b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._uintptr(_t, _b);
    }
    static public function _isGo12(_t:LineTable):Bool {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._isGo12(_t);
    }
    static public function lineToPC(_t:LineTable, _line:StdTypes.Int, _maxpc:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension.lineToPC(_t, _line, _maxpc);
    }
    static public function pctoLine(_t:LineTable, _pc:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension.pctoLine(_t, _pc);
    }
    static public function _slice(_t:LineTable, _pc:haxe.UInt64):LineTable {
        return stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._slice(_t, _pc);
    }
    static public function _parse(_t:LineTable, _targetPC:haxe.UInt64, _targetLine:StdTypes.Int):stdgo.Tuple.Tuple3<Array<std.UInt>, haxe.UInt64, StdTypes.Int> {
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_LineTable_static_extension.LineTable_static_extension._parse(_t, _targetPC, _targetLine);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
}
class T_funcTab_static_extension {
    static public function _uint(_f:T_funcTab, _b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._uint(_f, _b);
    }
    static public function _funcOff(_f:T_funcTab, _i:StdTypes.Int):haxe.UInt64 {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._funcOff(_f, _i);
    }
    static public function _pc(_f:T_funcTab, _i:StdTypes.Int):haxe.UInt64 {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._pc(_f, _i);
    }
    static public function count(_f:T_funcTab):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension.count(_f);
    }
    public static function _uintptr(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._uintptr(__self__, _b);
    }
    public static function _stringFrom(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _arr:Array<std.UInt>, _off:std.UInt):String {
        final _arr = ([for (i in _arr) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._stringFrom(__self__, _arr, _off);
    }
    public static function _string(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:std.UInt):String {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._string(__self__, __0);
    }
    public static function _step(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _p:Array<std.UInt>, _pc:stdgo.Pointer<haxe.UInt64>, _val:stdgo.Pointer<StdTypes.Int>, _first:Bool):Bool {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._step(__self__, _p, _pc, _val, _first);
    }
    public static function _slice(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:haxe.UInt64):LineTable {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._slice(__self__, __0);
    }
    public static function _readvarint(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _pp:Array<std.UInt>):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._readvarint(__self__, _pp);
    }
    public static function _pcvalue(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _off:std.UInt, _entry:haxe.UInt64, _targetpc:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._pcvalue(__self__, _off, _entry, _targetpc);
    }
    public static function _parsePclnTab(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab) {
        stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._parsePclnTab(__self__);
    }
    public static function _parse(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _targetPC:haxe.UInt64, _targetLine:StdTypes.Int):stdgo.Tuple.Tuple3<Array<std.UInt>, haxe.UInt64, StdTypes.Int> {
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._parse(__self__, _targetPC, _targetLine);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _isGo12(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):Bool {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._isGo12(__self__);
    }
    public static function _initFileMap(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab) {
        stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._initFileMap(__self__);
    }
    public static function _go12PCToLine(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12PCToLine(__self__, __0);
    }
    public static function _go12PCToFile(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:haxe.UInt64):String {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12PCToFile(__self__, __0);
    }
    public static function _go12MapFiles(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, _obj:Obj) {
        stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12MapFiles(__self__, _m, _obj);
    }
    public static function _go12LineToPC(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _path:String, _line:StdTypes.Int):haxe.UInt64 {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12LineToPC(__self__, _path, _line);
    }
    public static function _go12Funcs(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):Array<Func> {
        return [for (i in stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12Funcs(__self__)) i];
    }
    public static function _functabFieldSize(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._functabFieldSize(__self__);
    }
    public static function _funcTab(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):T_funcTab {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._funcTab(__self__);
    }
    public static function _funcName(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:std.UInt):String {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._funcName(__self__, __0);
    }
    public static function _funcData(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:std.UInt):T_funcData {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._funcData(__self__, __0);
    }
    public static function _findFunc(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:haxe.UInt64):T_funcData {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._findFunc(__self__, __0);
    }
    public static function _findFileLine(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _entry:haxe.UInt64, _filetab:std.UInt, _linetab:std.UInt, _filenum:StdTypes.Int, _line:StdTypes.Int, _cutab:Array<std.UInt>):haxe.UInt64 {
        final _cutab = ([for (i in _cutab) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._findFileLine(__self__, _entry, _filetab, _linetab, _filenum, _line, _cutab);
    }
    public static function pctoLine(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, __0:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension.pctoLine(__self__, __0);
    }
    public static function lineToPC(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _line:StdTypes.Int, _maxpc:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension.lineToPC(__self__, _line, _maxpc);
    }
}
class T_funcData_static_extension {
    static public function _field(_f:T_funcData, _n:std.UInt):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_T_funcData_static_extension.T_funcData_static_extension._field(_f, _n);
    }
    static public function _cuOffset(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_T_funcData_static_extension.T_funcData_static_extension._cuOffset(_f);
    }
    static public function _pcln(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_T_funcData_static_extension.T_funcData_static_extension._pcln(_f);
    }
    static public function _pcfile(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_T_funcData_static_extension.T_funcData_static_extension._pcfile(_f);
    }
    static public function _deferreturn(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_T_funcData_static_extension.T_funcData_static_extension._deferreturn(_f);
    }
    static public function _nameOff(_f:T_funcData):std.UInt {
        return stdgo._internal.debug.gosym.Gosym_T_funcData_static_extension.T_funcData_static_extension._nameOff(_f);
    }
    static public function _entryPC(_f:T_funcData):haxe.UInt64 {
        return stdgo._internal.debug.gosym.Gosym_T_funcData_static_extension.T_funcData_static_extension._entryPC(_f);
    }
    static public function isZero(_f:T_funcData):Bool {
        return stdgo._internal.debug.gosym.Gosym_T_funcData_static_extension.T_funcData_static_extension.isZero(_f);
    }
}
class Sym_static_extension {
    static public function baseName(_s:Sym):String {
        return stdgo._internal.debug.gosym.Gosym_Sym_static_extension.Sym_static_extension.baseName(_s);
    }
    static public function receiverName(_s:Sym):String {
        return stdgo._internal.debug.gosym.Gosym_Sym_static_extension.Sym_static_extension.receiverName(_s);
    }
    static public function packageName(_s:Sym):String {
        return stdgo._internal.debug.gosym.Gosym_Sym_static_extension.Sym_static_extension.packageName(_s);
    }
    static public function _nameWithoutInst(_s:Sym):String {
        return stdgo._internal.debug.gosym.Gosym_Sym_static_extension.Sym_static_extension._nameWithoutInst(_s);
    }
    static public function static_(_s:Sym):Bool {
        return stdgo._internal.debug.gosym.Gosym_Sym_static_extension.Sym_static_extension.static_(_s);
    }
}
class Func_static_extension {
    public static function _nameWithoutInst(__self__:stdgo._internal.debug.gosym.Gosym_Func.Func):String {
        return stdgo._internal.debug.gosym.Gosym_Func_static_extension.Func_static_extension._nameWithoutInst(__self__);
    }
    public static function static_(__self__:stdgo._internal.debug.gosym.Gosym_Func.Func):Bool {
        return stdgo._internal.debug.gosym.Gosym_Func_static_extension.Func_static_extension.static_(__self__);
    }
    public static function receiverName(__self__:stdgo._internal.debug.gosym.Gosym_Func.Func):String {
        return stdgo._internal.debug.gosym.Gosym_Func_static_extension.Func_static_extension.receiverName(__self__);
    }
    public static function packageName(__self__:stdgo._internal.debug.gosym.Gosym_Func.Func):String {
        return stdgo._internal.debug.gosym.Gosym_Func_static_extension.Func_static_extension.packageName(__self__);
    }
    public static function baseName(__self__:stdgo._internal.debug.gosym.Gosym_Func.Func):String {
        return stdgo._internal.debug.gosym.Gosym_Func_static_extension.Func_static_extension.baseName(__self__);
    }
}
class Obj_static_extension {
    static public function _alineFromLine(_o:Obj, _path:String, _line:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_Obj_static_extension.Obj_static_extension._alineFromLine(_o, _path, _line);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _lineFromAline(_o:Obj, _aline:StdTypes.Int):stdgo.Tuple<String, StdTypes.Int> {
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_Obj_static_extension.Obj_static_extension._lineFromAline(_o, _aline);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:structInit abstract T__lineFromAline___localname___stackEnt_16022(stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022) from stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022 to stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022 {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = v;
        return v;
    }
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = v;
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public var _prev(get, set) : T__lineFromAline___localname___stackEnt_16022;
    function get__prev():T__lineFromAline___localname___stackEnt_16022 return this._prev;
    function set__prev(v:T__lineFromAline___localname___stackEnt_16022):T__lineFromAline___localname___stackEnt_16022 {
        this._prev = v;
        return v;
    }
    public function new(?_path:String, ?_start:StdTypes.Int, ?_offset:StdTypes.Int, ?_prev:T__lineFromAline___localname___stackEnt_16022) this = new stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022(_path, _start, _offset, _prev);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Table_static_extension {
    static public function symByAddr(_t:Table, _addr:haxe.UInt64):Sym {
        return stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.symByAddr(_t, _addr);
    }
    static public function lookupFunc(_t:Table, _name:String):Func {
        return stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.lookupFunc(_t, _name);
    }
    static public function lookupSym(_t:Table, _name:String):Sym {
        return stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.lookupSym(_t, _name);
    }
    static public function lineToPC(_t:Table, _file:String, _line:StdTypes.Int):stdgo.Tuple.Tuple3<haxe.UInt64, Func, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.lineToPC(_t, _file, _line);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pctoLine(_t:Table, _pc:haxe.UInt64):stdgo.Tuple.Tuple3<String, StdTypes.Int, Func> {
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.pctoLine(_t, _pc);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pctoFunc(_t:Table, _pc:haxe.UInt64):Func {
        return stdgo._internal.debug.gosym.Gosym_Table_static_extension.Table_static_extension.pctoFunc(_t, _pc);
    }
}
class UnknownLineError_static_extension {
    static public function error(_e:UnknownLineError):String {
        return stdgo._internal.debug.gosym.Gosym_UnknownLineError_static_extension.UnknownLineError_static_extension.error(_e);
    }
}
class DecodingError_static_extension {
    static public function error(_e:DecodingError):String {
        return stdgo._internal.debug.gosym.Gosym_DecodingError_static_extension.DecodingError_static_extension.error(_e);
    }
}
class UnknownFileError_static_extension {
    static public function error(_e:UnknownFileError):String {
        return stdgo._internal.debug.gosym.Gosym_UnknownFileError_static_extension.UnknownFileError_static_extension.error(_e);
    }
}
/**
    /|*{
    	if line < 1 {
    		gotoNext = 3648072
    		_ = gotoNext == 3648072
    		return 0, &UnknownLineError{path, line}
    		gotoNext = 3648121
    	} else {
    		gotoNext = 3648121
    	}
    	_ = gotoNext == 3648121
    	if 0 < len(o.Paths) {
    		gotoNext = 3648701
    		_ = gotoNext == 3648701
    		i_3648125, s_3648128 = 0, o.Paths[0]
    		gotoNext = 3648702
    		_ = gotoNext == 3648702
    		if i_3648125 < len(o.Paths) {
    			gotoNext = 3648147
    			_ = gotoNext == 3648147
    			s_3648128 = o.Paths[i_3648125]
    			if s_3648128.Name != path {
    				gotoNext = 3648189
    				_ = gotoNext == 3648189
    				i_3648125++
    				gotoNext = 3648702
    				gotoNext = 3648250
    			} else {
    				gotoNext = 3648250
    			}
    			_ = gotoNext == 3648250
    			depth_3648250 = 0
    			line += int(s_3648128.Value)
    			gotoNext = 3648304
    			_ = gotoNext == 3648304
    			if 0 < len(o.Paths[i_3648125:]) {
    				gotoNext = 3648656
    				_ = gotoNext == 3648656
    				i_3648328_0, s_3648323 = 0, o.Paths[i_3648125:][0]
    				gotoNext = 3648657
    				_ = gotoNext == 3648657
    				if i_3648328_0 < len(o.Paths[i_3648125:]) {
    					gotoNext = 3648346
    					_ = gotoNext == 3648346
    					s_3648323 = o.Paths[i_3648125:][i_3648328_0]
    					val_3648351 = int(s_3648323.Value)
    					_ = 0
    					gotoNext = 3648374
    					_ = gotoNext == 3648374
    					switch {
    					case depth_3648250 == 1 && val_3648351 >= line:
    						gotoNext = 3648386
    						_ = gotoNext == 3648386
    						return line - 1, nil
    						gotoNext = 3648320
    					case s_3648323.Name == "":
    						gotoNext = 3648447
    						_ = gotoNext == 3648447
    						depth_3648250--
    						if depth_3648250 == 0 {
    							gotoNext = 3648496
    							_ = gotoNext == 3648496
    							pathloopBreak = true
    							gotoNext = 3648657
    							gotoNext = 3648320
    						} else if depth_3648250 == 1 {
    							gotoNext = 3648543
    							_ = gotoNext == 3648543
    							line += val_3648351 - incstart_3648267
    							gotoNext = 3648320
    						} else {
    							gotoNext = 3648320
    						}
    						gotoNext = 3648320
    					default:
    						gotoNext = 3648583
    						_ = gotoNext == 3648583
    						if depth_3648250 == 1 {
    							gotoNext = 3648610
    							_ = gotoNext == 3648610
    							incstart_3648267 = val_3648351
    							gotoNext = 3648642
    						} else {
    							gotoNext = 3648642
    						}
    						_ = gotoNext == 3648642
    						depth_3648250++
    						gotoNext = 3648320
    					}
    					_ = gotoNext == 3648320
    					i_3648328_0++
    					gotoNext = 3648657
    				} else {
    					gotoNext = 3648661
    				}
    				gotoNext = 3648661
    			} else {
    				gotoNext = 3648661
    			}
    			_ = gotoNext == 3648661
    			return 0, &UnknownLineError{path, line}
    			i_3648125++
    			gotoNext = 3648702
    		} else {
    			gotoNext = 3648705
    		}
    		gotoNext = 3648705
    	} else {
    		gotoNext = 3648705
    	}
    	_ = gotoNext == 3648705
    	return 0, UnknownFileError(path)
    	gotoNext = -1
    }*|/
**/
class Gosym {
    /**
        NewLineTable returns a new PC/line table
        corresponding to the encoded data.
        Text must be the start address of the
        corresponding text segment.
    **/
    static public function newLineTable(_data:Array<std.UInt>, _text:haxe.UInt64):LineTable {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_newLineTable.newLineTable(_data, _text);
    }
    /**
        NewTable decodes the Go symbol table (the ".gosymtab" section in ELF),
        returning an in-memory representation.
        Starting with Go 1.3, the Go symbol table no longer includes symbol data.
    **/
    static public function newTable(_symtab:Array<std.UInt>, _pcln:LineTable):stdgo.Tuple<Table, stdgo.Error> {
        final _symtab = ([for (i in _symtab) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_newTable.newTable(_symtab, _pcln);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
