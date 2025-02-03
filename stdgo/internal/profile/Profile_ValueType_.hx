package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.ValueType__static_extension) abstract ValueType_(stdgo._internal.internal.profile.Profile_ValueType_.ValueType_) from stdgo._internal.internal.profile.Profile_ValueType_.ValueType_ to stdgo._internal.internal.profile.Profile_ValueType_.ValueType_ {
    public var type(get, set) : String;
    function get_type():String return this.type;
    function set_type(v:String):String {
        this.type = (v : stdgo.GoString);
        return v;
    }
    public var unit(get, set) : String;
    function get_unit():String return this.unit;
    function set_unit(v:String):String {
        this.unit = (v : stdgo.GoString);
        return v;
    }
    public var _typeX(get, set) : haxe.Int64;
    function get__typeX():haxe.Int64 return this._typeX;
    function set__typeX(v:haxe.Int64):haxe.Int64 {
        this._typeX = (v : stdgo.GoInt64);
        return v;
    }
    public var _unitX(get, set) : haxe.Int64;
    function get__unitX():haxe.Int64 return this._unitX;
    function set__unitX(v:haxe.Int64):haxe.Int64 {
        this._unitX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?type:String, ?unit:String, ?_typeX:haxe.Int64, ?_unitX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_ValueType_.ValueType_((type : stdgo.GoString), (unit : stdgo.GoString), (_typeX : stdgo.GoInt64), (_unitX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
