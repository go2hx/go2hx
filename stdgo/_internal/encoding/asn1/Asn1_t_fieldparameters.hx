package stdgo._internal.encoding.asn1;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_t_fieldparameters_static_extension.T_fieldParameters_static_extension) class T_fieldParameters {
    public var _optional : Bool = false;
    public var _explicit : Bool = false;
    public var _application : Bool = false;
    public var _private : Bool = false;
    public var _defaultValue : stdgo.Pointer<stdgo.GoInt64> = (null : stdgo.Pointer<stdgo.GoInt64>);
    public var _tag : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _stringType : stdgo.GoInt = 0;
    public var _timeType : stdgo.GoInt = 0;
    public var _set : Bool = false;
    public var _omitEmpty : Bool = false;
    public function new(?_optional:Bool, ?_explicit:Bool, ?_application:Bool, ?_private:Bool, ?_defaultValue:stdgo.Pointer<stdgo.GoInt64>, ?_tag:stdgo.Pointer<stdgo.GoInt>, ?_stringType:stdgo.GoInt, ?_timeType:stdgo.GoInt, ?_set:Bool, ?_omitEmpty:Bool) {
        if (_optional != null) this._optional = _optional;
        if (_explicit != null) this._explicit = _explicit;
        if (_application != null) this._application = _application;
        if (_private != null) this._private = _private;
        if (_defaultValue != null) this._defaultValue = _defaultValue;
        if (_tag != null) this._tag = _tag;
        if (_stringType != null) this._stringType = _stringType;
        if (_timeType != null) this._timeType = _timeType;
        if (_set != null) this._set = _set;
        if (_omitEmpty != null) this._omitEmpty = _omitEmpty;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fieldParameters(_optional, _explicit, _application, _private, _defaultValue, _tag, _stringType, _timeType, _set, _omitEmpty);
    }
}
