package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import _internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
function _nonZeroRandomBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _random:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        var _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_random, _s);
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                while (_s[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_random, (_s.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return _err;
                    };
                    _s[(_i : stdgo.GoInt)] = (_s[(_i : stdgo.GoInt)] ^ ((66 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                _i++;
            };
        };
        return _err;
    }
