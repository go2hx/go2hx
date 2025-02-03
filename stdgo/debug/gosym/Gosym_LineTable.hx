package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.LineTable_static_extension) abstract LineTable(stdgo._internal.debug.gosym.Gosym_LineTable.LineTable) from stdgo._internal.debug.gosym.Gosym_LineTable.LineTable to stdgo._internal.debug.gosym.Gosym_LineTable.LineTable {
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
    public var _funcNames(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>;
    function get__funcNames():stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> return this._funcNames;
    function set__funcNames(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> {
        this._funcNames = (v : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>);
        return v;
    }
    public var _strings(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>;
    function get__strings():stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> return this._strings;
    function set__strings(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> {
        this._strings = (v : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>);
        return v;
    }
    public var _fileMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>;
    function get__fileMap():stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> return this._fileMap;
    function set__fileMap(v:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>):stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32> {
        this._fileMap = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>);
        return v;
    }
    public function new(?data:Array<std.UInt>, ?pC:haxe.UInt64, ?line:StdTypes.Int, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_version:T_version, ?_binary:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?_quantum:std.UInt, ?_ptrsize:std.UInt, ?_textStart:haxe.UInt64, ?_funcnametab:Array<std.UInt>, ?_cutab:Array<std.UInt>, ?_funcdata:Array<std.UInt>, ?_functab:Array<std.UInt>, ?_nfunctab:std.UInt, ?_filetab:Array<std.UInt>, ?_pctab:Array<std.UInt>, ?_nfiletab:std.UInt, ?_funcNames:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_strings:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?_fileMap:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>) this = new stdgo._internal.debug.gosym.Gosym_LineTable.LineTable(
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
(_funcNames : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>),
(_strings : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>),
(_fileMap : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
