package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_chunkWriter_static_extension.T_chunkWriter_static_extension) class T_chunkWriter {
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
    public var _header : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _wroteHeader : Bool = false;
    public var _chunking : Bool = false;
    public function new(?_res:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, ?_header:stdgo._internal.net.http.Http_Header.Header, ?_wroteHeader:Bool, ?_chunking:Bool) {
        if (_res != null) this._res = _res;
        if (_header != null) this._header = _header;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_chunking != null) this._chunking = _chunking;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_chunkWriter(_res, _header, _wroteHeader, _chunking);
    }
}
