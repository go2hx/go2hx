package stdgo._internal.mime;
@:structInit @:using(stdgo._internal.mime.Mime_worddecoder_static_extension.WordDecoder_static_extension) class WordDecoder {
    public var charsetReader : (stdgo.GoString, stdgo._internal.io.Io_reader.Reader) -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; } = null;
    public function new(?charsetReader:(stdgo.GoString, stdgo._internal.io.Io_reader.Reader) -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; }) {
        if (charsetReader != null) this.charsetReader = charsetReader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new WordDecoder(charsetReader);
    }
}
