package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.T_mappingKey_static_extension) abstract T_mappingKey(stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey) from stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey to stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey {
    public var _size(get, set) : haxe.UInt64;
    function get__size():haxe.UInt64 return this._size;
    function set__size(v:haxe.UInt64):haxe.UInt64 {
        this._size = (v : stdgo.GoUInt64);
        return v;
    }
    public var _offset(get, set) : haxe.UInt64;
    function get__offset():haxe.UInt64 return this._offset;
    function set__offset(v:haxe.UInt64):haxe.UInt64 {
        this._offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var _buildIDOrFile(get, set) : String;
    function get__buildIDOrFile():String return this._buildIDOrFile;
    function set__buildIDOrFile(v:String):String {
        this._buildIDOrFile = (v : stdgo.GoString);
        return v;
    }
    public function new(?_size:haxe.UInt64, ?_offset:haxe.UInt64, ?_buildIDOrFile:String) this = new stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey((_size : stdgo.GoUInt64), (_offset : stdgo.GoUInt64), (_buildIDOrFile : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
