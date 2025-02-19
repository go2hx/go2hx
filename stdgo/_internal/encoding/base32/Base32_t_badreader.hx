package stdgo._internal.encoding.base32;
@:structInit @:using(stdgo._internal.encoding.base32.Base32_t_badreader_static_extension.T_badReader_static_extension) class T_badReader {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public var _called : stdgo.GoInt = 0;
    public var _limit : stdgo.GoInt = 0;
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_errs:stdgo.Slice<stdgo.Error>, ?_called:stdgo.GoInt, ?_limit:stdgo.GoInt) {
        if (_data != null) this._data = _data;
        if (_errs != null) this._errs = _errs;
        if (_called != null) this._called = _called;
        if (_limit != null) this._limit = _limit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badReader(_data, _errs, _called, _limit);
    }
}
