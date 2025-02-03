package stdgo.encoding.asn1;
@:structInit @:using(stdgo.encoding.asn1.Asn1.T_fieldParameters_static_extension) abstract T_fieldParameters(stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters) from stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters to stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters {
    public var _optional(get, set) : Bool;
    function get__optional():Bool return this._optional;
    function set__optional(v:Bool):Bool {
        this._optional = v;
        return v;
    }
    public var _explicit(get, set) : Bool;
    function get__explicit():Bool return this._explicit;
    function set__explicit(v:Bool):Bool {
        this._explicit = v;
        return v;
    }
    public var _application(get, set) : Bool;
    function get__application():Bool return this._application;
    function set__application(v:Bool):Bool {
        this._application = v;
        return v;
    }
    public var _private(get, set) : Bool;
    function get__private():Bool return this._private;
    function set__private(v:Bool):Bool {
        this._private = v;
        return v;
    }
    public var _defaultValue(get, set) : stdgo.Pointer<haxe.Int64>;
    function get__defaultValue():stdgo.Pointer<haxe.Int64> return this._defaultValue;
    function set__defaultValue(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this._defaultValue = v;
        return v;
    }
    public var _tag(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get__tag():stdgo.Pointer<StdTypes.Int> return this._tag;
    function set__tag(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this._tag = v;
        return v;
    }
    public var _stringType(get, set) : StdTypes.Int;
    function get__stringType():StdTypes.Int return this._stringType;
    function set__stringType(v:StdTypes.Int):StdTypes.Int {
        this._stringType = (v : stdgo.GoInt);
        return v;
    }
    public var _timeType(get, set) : StdTypes.Int;
    function get__timeType():StdTypes.Int return this._timeType;
    function set__timeType(v:StdTypes.Int):StdTypes.Int {
        this._timeType = (v : stdgo.GoInt);
        return v;
    }
    public var _set(get, set) : Bool;
    function get__set():Bool return this._set;
    function set__set(v:Bool):Bool {
        this._set = v;
        return v;
    }
    public var _omitEmpty(get, set) : Bool;
    function get__omitEmpty():Bool return this._omitEmpty;
    function set__omitEmpty(v:Bool):Bool {
        this._omitEmpty = v;
        return v;
    }
    public function new(?_optional:Bool, ?_explicit:Bool, ?_application:Bool, ?_private:Bool, ?_defaultValue:stdgo.Pointer<haxe.Int64>, ?_tag:stdgo.Pointer<StdTypes.Int>, ?_stringType:StdTypes.Int, ?_timeType:StdTypes.Int, ?_set:Bool, ?_omitEmpty:Bool) this = new stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters(_optional, _explicit, _application, _private, _defaultValue, _tag, (_stringType : stdgo.GoInt), (_timeType : stdgo.GoInt), _set, _omitEmpty);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
