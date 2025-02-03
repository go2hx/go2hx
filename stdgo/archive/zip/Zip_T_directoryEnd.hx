package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_directoryEnd_static_extension) abstract T_directoryEnd(stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd) from stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd to stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd {
    public var _diskNbr(get, set) : std.UInt;
    function get__diskNbr():std.UInt return this._diskNbr;
    function set__diskNbr(v:std.UInt):std.UInt {
        this._diskNbr = (v : stdgo.GoUInt32);
        return v;
    }
    public var _dirDiskNbr(get, set) : std.UInt;
    function get__dirDiskNbr():std.UInt return this._dirDiskNbr;
    function set__dirDiskNbr(v:std.UInt):std.UInt {
        this._dirDiskNbr = (v : stdgo.GoUInt32);
        return v;
    }
    public var _dirRecordsThisDisk(get, set) : haxe.UInt64;
    function get__dirRecordsThisDisk():haxe.UInt64 return this._dirRecordsThisDisk;
    function set__dirRecordsThisDisk(v:haxe.UInt64):haxe.UInt64 {
        this._dirRecordsThisDisk = (v : stdgo.GoUInt64);
        return v;
    }
    public var _directoryRecords(get, set) : haxe.UInt64;
    function get__directoryRecords():haxe.UInt64 return this._directoryRecords;
    function set__directoryRecords(v:haxe.UInt64):haxe.UInt64 {
        this._directoryRecords = (v : stdgo.GoUInt64);
        return v;
    }
    public var _directorySize(get, set) : haxe.UInt64;
    function get__directorySize():haxe.UInt64 return this._directorySize;
    function set__directorySize(v:haxe.UInt64):haxe.UInt64 {
        this._directorySize = (v : stdgo.GoUInt64);
        return v;
    }
    public var _directoryOffset(get, set) : haxe.UInt64;
    function get__directoryOffset():haxe.UInt64 return this._directoryOffset;
    function set__directoryOffset(v:haxe.UInt64):haxe.UInt64 {
        this._directoryOffset = (v : stdgo.GoUInt64);
        return v;
    }
    public var _commentLen(get, set) : std.UInt;
    function get__commentLen():std.UInt return this._commentLen;
    function set__commentLen(v:std.UInt):std.UInt {
        this._commentLen = (v : stdgo.GoUInt16);
        return v;
    }
    public var _comment(get, set) : String;
    function get__comment():String return this._comment;
    function set__comment(v:String):String {
        this._comment = (v : stdgo.GoString);
        return v;
    }
    public function new(?_diskNbr:std.UInt, ?_dirDiskNbr:std.UInt, ?_dirRecordsThisDisk:haxe.UInt64, ?_directoryRecords:haxe.UInt64, ?_directorySize:haxe.UInt64, ?_directoryOffset:haxe.UInt64, ?_commentLen:std.UInt, ?_comment:String) this = new stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd((_diskNbr : stdgo.GoUInt32), (_dirDiskNbr : stdgo.GoUInt32), (_dirRecordsThisDisk : stdgo.GoUInt64), (_directoryRecords : stdgo.GoUInt64), (_directorySize : stdgo.GoUInt64), (_directoryOffset : stdgo.GoUInt64), (_commentLen : stdgo.GoUInt16), (_comment : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
