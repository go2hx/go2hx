package stdgo.compress.bzip2;
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_reader_static_extension) abstract T_reader(stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader) from stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader to stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader {
    public var _br(get, set) : T_bitReader;
    function get__br():T_bitReader return this._br;
    function set__br(v:T_bitReader):T_bitReader {
        this._br = v;
        return v;
    }
    public var _fileCRC(get, set) : std.UInt;
    function get__fileCRC():std.UInt return this._fileCRC;
    function set__fileCRC(v:std.UInt):std.UInt {
        this._fileCRC = (v : stdgo.GoUInt32);
        return v;
    }
    public var _blockCRC(get, set) : std.UInt;
    function get__blockCRC():std.UInt return this._blockCRC;
    function set__blockCRC(v:std.UInt):std.UInt {
        this._blockCRC = (v : stdgo.GoUInt32);
        return v;
    }
    public var _wantBlockCRC(get, set) : std.UInt;
    function get__wantBlockCRC():std.UInt return this._wantBlockCRC;
    function set__wantBlockCRC(v:std.UInt):std.UInt {
        this._wantBlockCRC = (v : stdgo.GoUInt32);
        return v;
    }
    public var _setupDone(get, set) : Bool;
    function get__setupDone():Bool return this._setupDone;
    function set__setupDone(v:Bool):Bool {
        this._setupDone = v;
        return v;
    }
    public var _blockSize(get, set) : StdTypes.Int;
    function get__blockSize():StdTypes.Int return this._blockSize;
    function set__blockSize(v:StdTypes.Int):StdTypes.Int {
        this._blockSize = (v : stdgo.GoInt);
        return v;
    }
    public var _eof(get, set) : Bool;
    function get__eof():Bool return this._eof;
    function set__eof(v:Bool):Bool {
        this._eof = v;
        return v;
    }
    public var _c(get, set) : haxe.ds.Vector<std.UInt>;
    function get__c():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._c) i]);
    function set__c(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._c = ([for (i in v) (i : stdgo.GoUInt)] : stdgo.GoArray<stdgo.GoUInt>);
        return v;
    }
    public var _tt(get, set) : Array<std.UInt>;
    function get__tt():Array<std.UInt> return [for (i in this._tt) i];
    function set__tt(v:Array<std.UInt>):Array<std.UInt> {
        this._tt = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _tPos(get, set) : std.UInt;
    function get__tPos():std.UInt return this._tPos;
    function set__tPos(v:std.UInt):std.UInt {
        this._tPos = (v : stdgo.GoUInt32);
        return v;
    }
    public var _preRLE(get, set) : Array<std.UInt>;
    function get__preRLE():Array<std.UInt> return [for (i in this._preRLE) i];
    function set__preRLE(v:Array<std.UInt>):Array<std.UInt> {
        this._preRLE = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _preRLEUsed(get, set) : StdTypes.Int;
    function get__preRLEUsed():StdTypes.Int return this._preRLEUsed;
    function set__preRLEUsed(v:StdTypes.Int):StdTypes.Int {
        this._preRLEUsed = (v : stdgo.GoInt);
        return v;
    }
    public var _lastByte(get, set) : StdTypes.Int;
    function get__lastByte():StdTypes.Int return this._lastByte;
    function set__lastByte(v:StdTypes.Int):StdTypes.Int {
        this._lastByte = (v : stdgo.GoInt);
        return v;
    }
    public var _byteRepeats(get, set) : std.UInt;
    function get__byteRepeats():std.UInt return this._byteRepeats;
    function set__byteRepeats(v:std.UInt):std.UInt {
        this._byteRepeats = (v : stdgo.GoUInt);
        return v;
    }
    public var _repeats(get, set) : std.UInt;
    function get__repeats():std.UInt return this._repeats;
    function set__repeats(v:std.UInt):std.UInt {
        this._repeats = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?_br:T_bitReader, ?_fileCRC:std.UInt, ?_blockCRC:std.UInt, ?_wantBlockCRC:std.UInt, ?_setupDone:Bool, ?_blockSize:StdTypes.Int, ?_eof:Bool, ?_c:haxe.ds.Vector<std.UInt>, ?_tt:Array<std.UInt>, ?_tPos:std.UInt, ?_preRLE:Array<std.UInt>, ?_preRLEUsed:StdTypes.Int, ?_lastByte:StdTypes.Int, ?_byteRepeats:std.UInt, ?_repeats:std.UInt) this = new stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader(
_br,
(_fileCRC : stdgo.GoUInt32),
(_blockCRC : stdgo.GoUInt32),
(_wantBlockCRC : stdgo.GoUInt32),
_setupDone,
(_blockSize : stdgo.GoInt),
_eof,
([for (i in _c) (i : stdgo.GoUInt)] : stdgo.GoArray<stdgo.GoUInt>),
([for (i in _tt) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>),
(_tPos : stdgo.GoUInt32),
([for (i in _preRLE) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>),
(_preRLEUsed : stdgo.GoInt),
(_lastByte : stdgo.GoInt),
(_byteRepeats : stdgo.GoUInt),
(_repeats : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
