package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.T_locationKey_static_extension) abstract T_locationKey(stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey) from stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey to stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey {
    public var _addr(get, set) : haxe.UInt64;
    function get__addr():haxe.UInt64 return this._addr;
    function set__addr(v:haxe.UInt64):haxe.UInt64 {
        this._addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var _mappingID(get, set) : haxe.UInt64;
    function get__mappingID():haxe.UInt64 return this._mappingID;
    function set__mappingID(v:haxe.UInt64):haxe.UInt64 {
        this._mappingID = (v : stdgo.GoUInt64);
        return v;
    }
    public var _lines(get, set) : String;
    function get__lines():String return this._lines;
    function set__lines(v:String):String {
        this._lines = (v : stdgo.GoString);
        return v;
    }
    public var _isFolded(get, set) : Bool;
    function get__isFolded():Bool return this._isFolded;
    function set__isFolded(v:Bool):Bool {
        this._isFolded = v;
        return v;
    }
    public function new(?_addr:haxe.UInt64, ?_mappingID:haxe.UInt64, ?_lines:String, ?_isFolded:Bool) this = new stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey((_addr : stdgo.GoUInt64), (_mappingID : stdgo.GoUInt64), (_lines : stdgo.GoString), _isFolded);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
