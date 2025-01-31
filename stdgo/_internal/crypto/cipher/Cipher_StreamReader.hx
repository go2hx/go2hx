package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_StreamReader_static_extension.StreamReader_static_extension) class StreamReader {
    public var s : stdgo._internal.crypto.cipher.Cipher_Stream.Stream = (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream);
    public var r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?s:stdgo._internal.crypto.cipher.Cipher_Stream.Stream, ?r:stdgo._internal.io.Io_Reader.Reader) {
        if (s != null) this.s = s;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StreamReader(s, r);
    }
}
