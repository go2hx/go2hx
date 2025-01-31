package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.StreamReader_asInterface) class StreamReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo._internal.crypto.cipher.Cipher_StreamReader.StreamReader, _dst:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.crypto.cipher.Cipher_StreamReader.StreamReader = _r?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _r.r.read(_dst);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        _r.s.xORKeyStream((_dst.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : _n, _1 : _err };
    }
}
