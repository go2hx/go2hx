package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_inputbytes_static_extension.T_inputBytes_static_extension) class T_inputBytes {
    public var _str : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_str:stdgo.Slice<stdgo.GoUInt8>) {
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputBytes(_str);
    }
}
