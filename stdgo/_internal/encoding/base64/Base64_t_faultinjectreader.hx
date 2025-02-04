package stdgo._internal.encoding.base64;
@:structInit @:using(stdgo._internal.encoding.base64.Base64_t_faultinjectreader_static_extension.T_faultInjectReader_static_extension) class T_faultInjectReader {
    public var _source : stdgo.GoString = "";
    public var _nextc : stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead> = (null : stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>);
    public function new(?_source:stdgo.GoString, ?_nextc:stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>) {
        if (_source != null) this._source = _source;
        if (_nextc != null) this._nextc = _nextc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_faultInjectReader(_source, _nextc);
    }
}
