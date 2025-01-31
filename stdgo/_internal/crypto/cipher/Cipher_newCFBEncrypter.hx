package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function newCFBEncrypter(_block:stdgo._internal.crypto.cipher.Cipher_Block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_Stream.Stream {
        return stdgo._internal.crypto.cipher.Cipher__newCFB._newCFB(_block, _iv, false);
    }
