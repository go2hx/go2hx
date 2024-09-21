package _internal.hash_test;
function testMarshalHash(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.hash_test.Hash_test__marshalTests._marshalTests) {
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _buf) {
                    _buf[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                };
                var _h = (_tt._new() : stdgo._internal.hash.Hash_Hash.Hash);
                _h.write((_buf.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                var _sum = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                var _h2 = (_tt._new() : stdgo._internal.hash.Hash_Hash.Hash);
                var _h3 = (_tt._new() : stdgo._internal.hash.Hash_Hash.Hash);
                {};
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (249 : stdgo.GoInt) : Bool), _i++, {
                        _h2.write((_buf.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    });
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler), _1 : false };
                }, _h2m = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.fatalf(("Hash does not implement MarshalBinary" : stdgo.GoString));
                };
                var __tmp__ = _h2m.marshalBinary(), _enc:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("MarshalBinary: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_enc, _tt._golden)) {
                    _t.errorf(("MarshalBinary = %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_tt._golden));
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h3) : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler), _1 : false };
                }, _h3u = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.fatalf(("Hash does not implement UnmarshalBinary" : stdgo.GoString));
                };
                {
                    var _err = (_h3u.unmarshalBinary(_enc) : stdgo.Error);
                    if (_err != null) {
                        _t.fatalf(("UnmarshalBinary: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                _h2.write((_buf.__slice__((249 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _h3.write((_buf.__slice__((249 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                var _sum2 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                var _sum3 = _h3.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                if (!stdgo._internal.bytes.Bytes_equal.equal(_sum2, _sum)) {
                    _t.fatalf(("Sum after MarshalBinary = %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_sum2), stdgo.Go.toInterface(_sum));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_sum3, _sum)) {
                    _t.fatalf(("Sum after UnmarshalBinary = %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_sum3), stdgo.Go.toInterface(_sum));
                };
            });
        };
    }
