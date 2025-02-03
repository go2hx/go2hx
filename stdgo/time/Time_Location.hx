package stdgo.time;
@:structInit @:using(stdgo.time.Time.Location_static_extension) abstract Location(stdgo._internal.time.Time_Location.Location) from stdgo._internal.time.Time_Location.Location to stdgo._internal.time.Time_Location.Location {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _zone(get, set) : Array<T_zone>;
    function get__zone():Array<T_zone> return [for (i in this._zone) i];
    function set__zone(v:Array<T_zone>):Array<T_zone> {
        this._zone = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time_T_zone.T_zone>);
        return v;
    }
    public var _tx(get, set) : Array<T_zoneTrans>;
    function get__tx():Array<T_zoneTrans> return [for (i in this._tx) i];
    function set__tx(v:Array<T_zoneTrans>):Array<T_zoneTrans> {
        this._tx = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans>);
        return v;
    }
    public var _extend(get, set) : String;
    function get__extend():String return this._extend;
    function set__extend(v:String):String {
        this._extend = (v : stdgo.GoString);
        return v;
    }
    public var _cacheStart(get, set) : haxe.Int64;
    function get__cacheStart():haxe.Int64 return this._cacheStart;
    function set__cacheStart(v:haxe.Int64):haxe.Int64 {
        this._cacheStart = (v : stdgo.GoInt64);
        return v;
    }
    public var _cacheEnd(get, set) : haxe.Int64;
    function get__cacheEnd():haxe.Int64 return this._cacheEnd;
    function set__cacheEnd(v:haxe.Int64):haxe.Int64 {
        this._cacheEnd = (v : stdgo.GoInt64);
        return v;
    }
    public var _cacheZone(get, set) : T_zone;
    function get__cacheZone():T_zone return this._cacheZone;
    function set__cacheZone(v:T_zone):T_zone {
        this._cacheZone = (v : stdgo.Ref<stdgo._internal.time.Time_T_zone.T_zone>);
        return v;
    }
    public function new(?_name:String, ?_zone:Array<T_zone>, ?_tx:Array<T_zoneTrans>, ?_extend:String, ?_cacheStart:haxe.Int64, ?_cacheEnd:haxe.Int64, ?_cacheZone:T_zone) this = new stdgo._internal.time.Time_Location.Location((_name : stdgo.GoString), ([for (i in _zone) i] : stdgo.Slice<stdgo._internal.time.Time_T_zone.T_zone>), ([for (i in _tx) i] : stdgo.Slice<stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans>), (_extend : stdgo.GoString), (_cacheStart : stdgo.GoInt64), (_cacheEnd : stdgo.GoInt64), (_cacheZone : stdgo.Ref<stdgo._internal.time.Time_T_zone.T_zone>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
