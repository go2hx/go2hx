package stdgo.crypto.cipher;
@:structInit @:using(stdgo.crypto.cipher.Cipher.StreamWriter_static_extension) abstract StreamWriter(stdgo._internal.crypto.cipher.Cipher_StreamWriter.StreamWriter) from stdgo._internal.crypto.cipher.Cipher_StreamWriter.StreamWriter to stdgo._internal.crypto.cipher.Cipher_StreamWriter.StreamWriter {
    public var s(get, set) : Stream;
    function get_s():Stream return this.s;
    function set_s(v:Stream):Stream {
        this.s = v;
        return v;
    }
    public var w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_w():stdgo._internal.io.Io_Writer.Writer return this.w;
    function set_w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.w = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?s:Stream, ?w:stdgo._internal.io.Io_Writer.Writer, ?err:stdgo.Error) this = new stdgo._internal.crypto.cipher.Cipher_StreamWriter.StreamWriter(s, w, (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
