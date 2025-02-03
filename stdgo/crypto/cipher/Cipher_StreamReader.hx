package stdgo.crypto.cipher;
@:structInit @:using(stdgo.crypto.cipher.Cipher.StreamReader_static_extension) abstract StreamReader(stdgo._internal.crypto.cipher.Cipher_StreamReader.StreamReader) from stdgo._internal.crypto.cipher.Cipher_StreamReader.StreamReader to stdgo._internal.crypto.cipher.Cipher_StreamReader.StreamReader {
    public var s(get, set) : Stream;
    function get_s():Stream return this.s;
    function set_s(v:Stream):Stream {
        this.s = v;
        return v;
    }
    public var r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_r():stdgo._internal.io.Io_Reader.Reader return this.r;
    function set_r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.r = v;
        return v;
    }
    public function new(?s:Stream, ?r:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.crypto.cipher.Cipher_StreamReader.StreamReader(s, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
