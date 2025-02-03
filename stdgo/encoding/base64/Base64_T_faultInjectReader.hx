package stdgo.encoding.base64;
@:structInit @:using(stdgo.encoding.base64.Base64.T_faultInjectReader_static_extension) abstract T_faultInjectReader(stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader) from stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader to stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader {
    public var _source(get, set) : String;
    function get__source():String return this._source;
    function set__source(v:String):String {
        this._source = (v : stdgo.GoString);
        return v;
    }
    public var _nextc(get, set) : stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>;
    function get__nextc():stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead> return this._nextc;
    function set__nextc(v:stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>):stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead> {
        this._nextc = (v : stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>);
        return v;
    }
    public function new(?_source:String, ?_nextc:stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>) this = new stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader((_source : stdgo.GoString), (_nextc : stdgo.Chan<stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
