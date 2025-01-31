package stdgo._internal.crypto.sha1;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _h = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        var _h2 = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        for (__0 => _g in stdgo._internal.crypto.sha1.Sha1__golden._golden) {
            _h.reset();
            _h2.reset();
            stdgo._internal.io.Io_writeString.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_state : stdgo.GoString) != (_g._halfState)) {
                @:check2r _t.errorf(("sha1(%q) state = %+q, want %+q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfState));
                continue;
            };
            {
                var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            stdgo._internal.io.Io_writeString.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            stdgo._internal.io.Io_writeString.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            {
                var __0 = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), __1 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
var _actual2 = __1, _actual = __0;
                if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _actual2)) {
                    @:check2r _t.errorf(("sha1(%q) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_actual2));
                };
            };
        };
    }
