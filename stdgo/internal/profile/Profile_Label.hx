package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.Label_static_extension) abstract Label(stdgo._internal.internal.profile.Profile_Label.Label) from stdgo._internal.internal.profile.Profile_Label.Label to stdgo._internal.internal.profile.Profile_Label.Label {
    public var _keyX(get, set) : haxe.Int64;
    function get__keyX():haxe.Int64 return this._keyX;
    function set__keyX(v:haxe.Int64):haxe.Int64 {
        this._keyX = (v : stdgo.GoInt64);
        return v;
    }
    public var _strX(get, set) : haxe.Int64;
    function get__strX():haxe.Int64 return this._strX;
    function set__strX(v:haxe.Int64):haxe.Int64 {
        this._strX = (v : stdgo.GoInt64);
        return v;
    }
    public var _numX(get, set) : haxe.Int64;
    function get__numX():haxe.Int64 return this._numX;
    function set__numX(v:haxe.Int64):haxe.Int64 {
        this._numX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_keyX:haxe.Int64, ?_strX:haxe.Int64, ?_numX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_Label.Label((_keyX : stdgo.GoInt64), (_strX : stdgo.GoInt64), (_numX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
