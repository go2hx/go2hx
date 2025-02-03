package stdgo.mime;
@:structInit @:using(stdgo.mime.Mime.WordDecoder_static_extension) abstract WordDecoder(stdgo._internal.mime.Mime_WordDecoder.WordDecoder) from stdgo._internal.mime.Mime_WordDecoder.WordDecoder to stdgo._internal.mime.Mime_WordDecoder.WordDecoder {
    public var charsetReader(get, set) : (stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; };
    function get_charsetReader():(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } return (_0, _1) -> this.charsetReader(_0, _1);
    function set_charsetReader(v:(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
        this.charsetReader = v;
        return v;
    }
    public function new(?charsetReader:(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }) this = new stdgo._internal.mime.Mime_WordDecoder.WordDecoder(charsetReader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
