package stdgo.encoding.base64;
@:structInit @:using(stdgo.encoding.base64.Base64.T_newlineFilteringReader_static_extension) abstract T_newlineFilteringReader(stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader) from stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader to stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader {
    public var _wrapped(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__wrapped():stdgo._internal.io.Io_Reader.Reader return this._wrapped;
    function set__wrapped(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._wrapped = v;
        return v;
    }
    public function new(?_wrapped:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader(_wrapped);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
