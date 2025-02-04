package stdgo._internal.crypto.cipher;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_streamreader_static_extension.StreamReader_static_extension) class StreamReader {
    public var s : stdgo._internal.crypto.cipher.Cipher_stream.Stream = (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream);
    public var r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?s:stdgo._internal.crypto.cipher.Cipher_stream.Stream, ?r:stdgo._internal.io.Io_reader.Reader) {
        if (s != null) this.s = s;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StreamReader(s, r);
    }
}
