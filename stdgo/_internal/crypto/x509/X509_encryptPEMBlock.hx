package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function encryptPEMBlock(_rand:stdgo._internal.io.Io_Reader.Reader, _blockType:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _password:stdgo.Slice<stdgo.GoUInt8>, _alg:stdgo._internal.crypto.x509.X509_PEMCipher.PEMCipher):{ var _0 : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>; var _1 : stdgo.Error; } {
        var _ciph = stdgo._internal.crypto.x509.X509__cipherByKey._cipherByKey(_alg);
        if ((_ciph == null || (_ciph : Dynamic).__nil__)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown encryption mode" : stdgo.GoString)) };
        };
        var _iv = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _ciph ?? throw "null pointer dereference")._blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _iv), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("x509: cannot generate IV: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
        };
        var _key = (@:checkr _ciph ?? throw "null pointer dereference")._deriveKey(_password, (_iv.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var __tmp__ = (@:checkr _ciph ?? throw "null pointer dereference")._cipherFunc(_key), _block:stdgo._internal.crypto.cipher.Cipher_Block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _enc = (stdgo._internal.crypto.cipher.Cipher_newCBCEncrypter.newCBCEncrypter(_block, _iv) : stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode);
        var _pad = ((@:checkr _ciph ?? throw "null pointer dereference")._blockSize - ((_data.length) % (@:checkr _ciph ?? throw "null pointer dereference")._blockSize : stdgo.GoInt) : stdgo.GoInt);
        var _encrypted = (new stdgo.Slice<stdgo.GoUInt8>((_data.length : stdgo.GoInt).toBasic(), ((_data.length) + _pad : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _encrypted.__copyTo__(_data);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _pad : Bool)) {
                _encrypted = (_encrypted.__append__((_pad : stdgo.GoUInt8)));
                _i++;
            };
        };
        _enc.cryptBlocks(_encrypted, _encrypted);
        return { _0 : (stdgo.Go.setRef(({ type : _blockType?.__copy__(), headers : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(("Proc-Type" : stdgo.GoString), ("4,ENCRYPTED" : stdgo.GoString));
x.set(("DEK-Info" : stdgo.GoString), (((@:checkr _ciph ?? throw "null pointer dereference")._name + ("," : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.encoding.hex.Hex_encodeToString.encodeToString(_iv)?.__copy__() : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), bytes : _encrypted } : stdgo._internal.encoding.pem.Pem_Block.Block)) : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>), _1 : (null : stdgo.Error) };
    }
