package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.Mapping_static_extension) abstract Mapping(stdgo._internal.internal.profile.Profile_Mapping.Mapping) from stdgo._internal.internal.profile.Profile_Mapping.Mapping to stdgo._internal.internal.profile.Profile_Mapping.Mapping {
    public var iD(get, set) : haxe.UInt64;
    function get_iD():haxe.UInt64 return this.iD;
    function set_iD(v:haxe.UInt64):haxe.UInt64 {
        this.iD = (v : stdgo.GoUInt64);
        return v;
    }
    public var start(get, set) : haxe.UInt64;
    function get_start():haxe.UInt64 return this.start;
    function set_start(v:haxe.UInt64):haxe.UInt64 {
        this.start = (v : stdgo.GoUInt64);
        return v;
    }
    public var limit(get, set) : haxe.UInt64;
    function get_limit():haxe.UInt64 return this.limit;
    function set_limit(v:haxe.UInt64):haxe.UInt64 {
        this.limit = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var buildID(get, set) : String;
    function get_buildID():String return this.buildID;
    function set_buildID(v:String):String {
        this.buildID = (v : stdgo.GoString);
        return v;
    }
    public var hasFunctions(get, set) : Bool;
    function get_hasFunctions():Bool return this.hasFunctions;
    function set_hasFunctions(v:Bool):Bool {
        this.hasFunctions = v;
        return v;
    }
    public var hasFilenames(get, set) : Bool;
    function get_hasFilenames():Bool return this.hasFilenames;
    function set_hasFilenames(v:Bool):Bool {
        this.hasFilenames = v;
        return v;
    }
    public var hasLineNumbers(get, set) : Bool;
    function get_hasLineNumbers():Bool return this.hasLineNumbers;
    function set_hasLineNumbers(v:Bool):Bool {
        this.hasLineNumbers = v;
        return v;
    }
    public var hasInlineFrames(get, set) : Bool;
    function get_hasInlineFrames():Bool return this.hasInlineFrames;
    function set_hasInlineFrames(v:Bool):Bool {
        this.hasInlineFrames = v;
        return v;
    }
    public var _fileX(get, set) : haxe.Int64;
    function get__fileX():haxe.Int64 return this._fileX;
    function set__fileX(v:haxe.Int64):haxe.Int64 {
        this._fileX = (v : stdgo.GoInt64);
        return v;
    }
    public var _buildIDX(get, set) : haxe.Int64;
    function get__buildIDX():haxe.Int64 return this._buildIDX;
    function set__buildIDX(v:haxe.Int64):haxe.Int64 {
        this._buildIDX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?iD:haxe.UInt64, ?start:haxe.UInt64, ?limit:haxe.UInt64, ?offset:haxe.UInt64, ?file:String, ?buildID:String, ?hasFunctions:Bool, ?hasFilenames:Bool, ?hasLineNumbers:Bool, ?hasInlineFrames:Bool, ?_fileX:haxe.Int64, ?_buildIDX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_Mapping.Mapping(
(iD : stdgo.GoUInt64),
(start : stdgo.GoUInt64),
(limit : stdgo.GoUInt64),
(offset : stdgo.GoUInt64),
(file : stdgo.GoString),
(buildID : stdgo.GoString),
hasFunctions,
hasFilenames,
hasLineNumbers,
hasInlineFrames,
(_fileX : stdgo.GoInt64),
(_buildIDX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
