package stdgo._internal.crypto.md5;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L90"
        for (__0 => _g in stdgo._internal.crypto.md5.Md5__golden._golden) {
            var _h = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
            var _h2 = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L94"
            stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L97"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L98"
                _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L99"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L102"
            if ((_state : stdgo.GoString) != (_g._halfState)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L103"
                _t.errorf(("md5(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfState));
                //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L104"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L107"
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L108"
                    _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L109"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L112"
            stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L113"
            stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L115"
            {
                var __0 = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), __1 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
var _actual2 = __1, _actual = __0;
                if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _actual2)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L116"
                    _t.errorf(("md5(%q) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_actual2));
                };
            };
        };
    }
