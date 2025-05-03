package stdgo._internal.crypto.rsa;
function _incCounter(_c:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L440"
        {
            _c[(3 : stdgo.GoInt)]++;
            if (_c[(3 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L441"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L443"
        {
            _c[(2 : stdgo.GoInt)]++;
            if (_c[(2 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L444"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L446"
        {
            _c[(1 : stdgo.GoInt)]++;
            if (_c[(1 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L447"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L449"
        _c[(0 : stdgo.GoInt)]++;
    }
