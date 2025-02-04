package stdgo._internal.encoding.base32;
@:structInit @:using(stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader_static_extension.T_newlineFilteringReader_static_extension) class T_newlineFilteringReader {
    public var _wrapped : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?_wrapped:stdgo._internal.io.Io_reader.Reader) {
        if (_wrapped != null) this._wrapped = _wrapped;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_newlineFilteringReader(_wrapped);
    }
}
