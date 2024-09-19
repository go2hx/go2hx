package stdgo._internal.crypto.rsa;
function _mgf1XOR(_out:stdgo.Slice<stdgo.GoUInt8>, _hash:stdgo._internal.hash.Hash_Hash.Hash, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _counter:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        var _digest:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _done = (0 : stdgo.GoInt);
        while ((_done < (_out.length) : Bool)) {
            _hash.write(_seed);
            _hash.write((_counter.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _digest = _hash.sum((_digest.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _hash.reset();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(((_i < (_digest.length) : Bool) && (_done < (_out.length) : Bool) : Bool), _i++, {
                    _out[(_done : stdgo.GoInt)] = (_out[(_done : stdgo.GoInt)] ^ (_digest[(_i : stdgo.GoInt)]) : stdgo.GoUInt8);
                    _done++;
                });
            };
            stdgo._internal.crypto.rsa.Rsa__incCounter._incCounter((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        };
    }