package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_StreamWriter_static_extension.StreamWriter_static_extension) class StreamWriter {
    public var s : stdgo._internal.crypto.cipher.Cipher_Stream.Stream = (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream);
    public var w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?s:stdgo._internal.crypto.cipher.Cipher_Stream.Stream, ?w:stdgo._internal.io.Io_Writer.Writer, ?err:stdgo.Error) {
        if (s != null) this.s = s;
        if (w != null) this.w = w;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StreamWriter(s, w, err);
    }
}
