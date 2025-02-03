package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.T_functionKey_static_extension) abstract T_functionKey(stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey) from stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey to stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey {
    public var _startLine(get, set) : haxe.Int64;
    function get__startLine():haxe.Int64 return this._startLine;
    function set__startLine(v:haxe.Int64):haxe.Int64 {
        this._startLine = (v : stdgo.GoInt64);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _systemName(get, set) : String;
    function get__systemName():String return this._systemName;
    function set__systemName(v:String):String {
        this._systemName = (v : stdgo.GoString);
        return v;
    }
    public var _fileName(get, set) : String;
    function get__fileName():String return this._fileName;
    function set__fileName(v:String):String {
        this._fileName = (v : stdgo.GoString);
        return v;
    }
    public function new(?_startLine:haxe.Int64, ?_name:String, ?_systemName:String, ?_fileName:String) this = new stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey((_startLine : stdgo.GoInt64), (_name : stdgo.GoString), (_systemName : stdgo.GoString), (_fileName : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
