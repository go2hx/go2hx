package stdgo._internal.crypto.ed25519;
function generateKey(_rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey; var _1 : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey; var _2 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L139"
        if (_rand == null) {
            _rand = stdgo._internal.crypto.rand.Rand_reader.reader;
        };
        var _seed = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L144"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _seed), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L145"
                return { _0 : null, _1 : null, _2 : _err };
            };
        };
        var _privateKey = (stdgo._internal.crypto.ed25519.Ed25519_newkeyfromseed.newKeyFromSeed(_seed) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey);
        var _publicKey = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L150"
        _publicKey.__copyTo__((_privateKey.__slice__((32 : stdgo.GoInt)) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L152"
        return { _0 : _publicKey, _1 : _privateKey, _2 : (null : stdgo.Error) };
    }
