package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.FileHeader_static_extension) abstract FileHeader(stdgo._internal.archive.zip.Zip_FileHeader.FileHeader) from stdgo._internal.archive.zip.Zip_FileHeader.FileHeader to stdgo._internal.archive.zip.Zip_FileHeader.FileHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var comment(get, set) : String;
    function get_comment():String return this.comment;
    function set_comment(v:String):String {
        this.comment = (v : stdgo.GoString);
        return v;
    }
    public var nonUTF8(get, set) : Bool;
    function get_nonUTF8():Bool return this.nonUTF8;
    function set_nonUTF8(v:Bool):Bool {
        this.nonUTF8 = v;
        return v;
    }
    public var creatorVersion(get, set) : std.UInt;
    function get_creatorVersion():std.UInt return this.creatorVersion;
    function set_creatorVersion(v:std.UInt):std.UInt {
        this.creatorVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var readerVersion(get, set) : std.UInt;
    function get_readerVersion():std.UInt return this.readerVersion;
    function set_readerVersion(v:std.UInt):std.UInt {
        this.readerVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt16);
        return v;
    }
    public var method(get, set) : std.UInt;
    function get_method():std.UInt return this.method;
    function set_method(v:std.UInt):std.UInt {
        this.method = (v : stdgo.GoUInt16);
        return v;
    }
    public var modified(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_modified():stdgo._internal.time.Time_Time.Time return this.modified;
    function set_modified(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.modified = v;
        return v;
    }
    public var modifiedTime(get, set) : std.UInt;
    function get_modifiedTime():std.UInt return this.modifiedTime;
    function set_modifiedTime(v:std.UInt):std.UInt {
        this.modifiedTime = (v : stdgo.GoUInt16);
        return v;
    }
    public var modifiedDate(get, set) : std.UInt;
    function get_modifiedDate():std.UInt return this.modifiedDate;
    function set_modifiedDate(v:std.UInt):std.UInt {
        this.modifiedDate = (v : stdgo.GoUInt16);
        return v;
    }
    public var cRC32(get, set) : std.UInt;
    function get_cRC32():std.UInt return this.cRC32;
    function set_cRC32(v:std.UInt):std.UInt {
        this.cRC32 = (v : stdgo.GoUInt32);
        return v;
    }
    public var compressedSize(get, set) : std.UInt;
    function get_compressedSize():std.UInt return this.compressedSize;
    function set_compressedSize(v:std.UInt):std.UInt {
        this.compressedSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var uncompressedSize(get, set) : std.UInt;
    function get_uncompressedSize():std.UInt return this.uncompressedSize;
    function set_uncompressedSize(v:std.UInt):std.UInt {
        this.uncompressedSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var compressedSize64(get, set) : haxe.UInt64;
    function get_compressedSize64():haxe.UInt64 return this.compressedSize64;
    function set_compressedSize64(v:haxe.UInt64):haxe.UInt64 {
        this.compressedSize64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var uncompressedSize64(get, set) : haxe.UInt64;
    function get_uncompressedSize64():haxe.UInt64 return this.uncompressedSize64;
    function set_uncompressedSize64(v:haxe.UInt64):haxe.UInt64 {
        this.uncompressedSize64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var extra(get, set) : Array<std.UInt>;
    function get_extra():Array<std.UInt> return [for (i in this.extra) i];
    function set_extra(v:Array<std.UInt>):Array<std.UInt> {
        this.extra = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var externalAttrs(get, set) : std.UInt;
    function get_externalAttrs():std.UInt return this.externalAttrs;
    function set_externalAttrs(v:std.UInt):std.UInt {
        this.externalAttrs = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:String, ?comment:String, ?nonUTF8:Bool, ?creatorVersion:std.UInt, ?readerVersion:std.UInt, ?flags:std.UInt, ?method:std.UInt, ?modified:stdgo._internal.time.Time_Time.Time, ?modifiedTime:std.UInt, ?modifiedDate:std.UInt, ?cRC32:std.UInt, ?compressedSize:std.UInt, ?uncompressedSize:std.UInt, ?compressedSize64:haxe.UInt64, ?uncompressedSize64:haxe.UInt64, ?extra:Array<std.UInt>, ?externalAttrs:std.UInt) this = new stdgo._internal.archive.zip.Zip_FileHeader.FileHeader(
(name : stdgo.GoString),
(comment : stdgo.GoString),
nonUTF8,
(creatorVersion : stdgo.GoUInt16),
(readerVersion : stdgo.GoUInt16),
(flags : stdgo.GoUInt16),
(method : stdgo.GoUInt16),
modified,
(modifiedTime : stdgo.GoUInt16),
(modifiedDate : stdgo.GoUInt16),
(cRC32 : stdgo.GoUInt32),
(compressedSize : stdgo.GoUInt32),
(uncompressedSize : stdgo.GoUInt32),
(compressedSize64 : stdgo.GoUInt64),
(uncompressedSize64 : stdgo.GoUInt64),
([for (i in extra) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(externalAttrs : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
