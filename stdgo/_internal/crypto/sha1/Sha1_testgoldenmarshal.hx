package stdgo._internal.crypto.sha1;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var _h2 = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L101"
        for (__0 => _g in stdgo._internal.crypto.sha1.Sha1__golden._golden) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L102"
            _h.reset();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L103"
            _h2.reset();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L105"
            stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L108"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L109"
                _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L110"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L113"
            if ((_state : stdgo.GoString) != (_g._halfState)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L114"
                _t.errorf(("sha1(%q) state = %+q, want %+q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfState));
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L115"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L118"
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L119"
                    _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L120"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L123"
            stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L124"
            stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L126"
            {
                var __0 = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), __1 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
var _actual2 = __1, _actual = __0;
                if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _actual2)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L127"
                    _t.errorf(("sha1(%q) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_actual2));
                };
            };
        };
    }
