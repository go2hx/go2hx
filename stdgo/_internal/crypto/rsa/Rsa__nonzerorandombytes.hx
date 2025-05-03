package stdgo._internal.crypto.rsa;
function _nonZeroRandomBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _random:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_random, _s);
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L235"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L236"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L239"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L240"
                while (_s[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_random, (_s.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L242"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L243"
                        return _err;
                    };
                    _s[(_i : stdgo.GoInt)] = (_s[(_i : stdgo.GoInt)] ^ ((66 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L251"
        return _err;
    }
