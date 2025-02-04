package stdgo._internal.strconv;
@:structInit @:using(stdgo._internal.strconv.Strconv_t_floatinfo_static_extension.T_floatInfo_static_extension) class T_floatInfo {
    public var _mantbits : stdgo.GoUInt = 0;
    public var _expbits : stdgo.GoUInt = 0;
    public var _bias : stdgo.GoInt = 0;
    public function new(?_mantbits:stdgo.GoUInt, ?_expbits:stdgo.GoUInt, ?_bias:stdgo.GoInt) {
        if (_mantbits != null) this._mantbits = _mantbits;
        if (_expbits != null) this._expbits = _expbits;
        if (_bias != null) this._bias = _bias;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_floatInfo(_mantbits, _expbits, _bias);
    }
}
