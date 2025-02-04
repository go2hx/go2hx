package stdgo._internal.crypto.cipher;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_streamwriter_static_extension.StreamWriter_static_extension) class StreamWriter {
    public var s : stdgo._internal.crypto.cipher.Cipher_stream.Stream = (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream);
    public var w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?s:stdgo._internal.crypto.cipher.Cipher_stream.Stream, ?w:stdgo._internal.io.Io_writer.Writer, ?err:stdgo.Error) {
        if (s != null) this.s = s;
        if (w != null) this.w = w;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StreamWriter(s, w, err);
    }
}
