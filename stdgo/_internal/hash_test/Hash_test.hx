package stdgo._internal.hash_test;
import stdgo._internal.hash.Hash;
var _marshalTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(17, 17, ...[
({ _name : ("adler32" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.adler32.Adler32.new_();
    }, _golden : _fromHex(("61646c01460a789d" : stdgo.GoString)) } : T__struct_0),
({ _name : ("crc32" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.crc32.Crc32.newIEEE();
    }, _golden : _fromHex(("63726301ca87914dc956d3e8" : stdgo.GoString)) } : T__struct_0),
({ _name : ("crc64" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.crc64.Crc64.new_(stdgo._internal.hash.crc64.Crc64.makeTable((-2882303761517117440i64 : stdgo.GoUInt64)));
    }, _golden : _fromHex(("6372630273ba8484bbcd5def5d51c83c581695be" : stdgo.GoString)) } : T__struct_0),
({ _name : ("fnv32" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv.new32();
    }, _golden : _fromHex(("666e760171ba3d77" : stdgo.GoString)) } : T__struct_0),
({ _name : ("fnv32a" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv.new32a();
    }, _golden : _fromHex(("666e76027439f86f" : stdgo.GoString)) } : T__struct_0),
({ _name : ("fnv64" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv.new64();
    }, _golden : _fromHex(("666e7603cc64e0e97692c637" : stdgo.GoString)) } : T__struct_0),
({ _name : ("fnv64a" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv.new64a();
    }, _golden : _fromHex(("666e7604c522af9b0dede66f" : stdgo.GoString)) } : T__struct_0),
({ _name : ("fnv128" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv.new128();
    }, _golden : _fromHex(("666e760561587a70a0f66d7981dc980e2cabbaf7" : stdgo.GoString)) } : T__struct_0),
({ _name : ("fnv128a" : stdgo.GoString), _new : function():stdgo._internal.hash.Hash.Hash {
        return stdgo._internal.hash.fnv.Fnv.new128a();
    }, _golden : _fromHex(("666e7606a955802b0136cb67622b461d9f91e6ff" : stdgo.GoString)) } : T__struct_0),
({ _name : ("md5" : stdgo.GoString), _new : stdgo._internal.crypto.md5.Md5.new_, _golden : _fromHex(("6d643501a91b0023007aa14740a3979210b5f024c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : stdgo.GoString)) } : T__struct_0),
({ _name : ("sha1" : stdgo.GoString), _new : stdgo._internal.crypto.sha1.Sha1.new_, _golden : _fromHex(("736861016dad5acb4dc003952f7a0b352ee5537ec381a228c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : stdgo.GoString)) } : T__struct_0),
({ _name : ("sha224" : stdgo.GoString), _new : stdgo._internal.crypto.sha256.Sha256.new224, _golden : _fromHex(("73686102f8b92fc047c9b4d82f01a6370841277b7a0d92108440178c83db855a8e66c2d9c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : stdgo.GoString)) } : T__struct_0),
({ _name : ("sha256" : stdgo.GoString), _new : stdgo._internal.crypto.sha256.Sha256.new_, _golden : _fromHex(("736861032bed68b99987cae48183b2b049d393d0050868e4e8ba3730e9112b08765929b7c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : stdgo.GoString)) } : T__struct_0),
({ _name : ("sha384" : stdgo.GoString), _new : stdgo._internal.crypto.sha512.Sha512.new384, _golden : _fromHex(("736861046f1664d213dd802f7c47bc50637cf93592570a2b8695839148bf38341c6eacd05326452ef1cbe64d90f1ef73bb5ac7d2803565467d0ddb10c5ee3fc050f9f0c1808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : stdgo.GoString)) } : T__struct_0),
({ _name : ("sha512_224" : stdgo.GoString), _new : stdgo._internal.crypto.sha512.Sha512.new512_224, _golden : _fromHex(("736861056f1a450ec15af20572d0d1ee6518104d7cbbbe79a038557af5450ed7dbd420b53b7335209e951b4d9aff401f90549b9604fa3d823fbb8581c73582a88aa84022808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : stdgo.GoString)) } : T__struct_0),
({ _name : ("sha512_256" : stdgo.GoString), _new : stdgo._internal.crypto.sha512.Sha512.new512_256, _golden : _fromHex(("736861067c541f1d1a72536b1f5dad64026bcc7c508f8a2126b51f46f8b9bff63a26fee70980718031e96832e95547f4fe76160ff84076db53b4549b86354af8e17b5116808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : stdgo.GoString)) } : T__struct_0),
({ _name : ("sha512" : stdgo.GoString), _new : stdgo._internal.crypto.sha512.Sha512.new_, _golden : _fromHex(("736861078e03953cd57cd6879321270afa70c5827bb5b69be59a8f0130147e94f2aedf7bdc01c56c92343ca8bd837bb7f0208f5a23e155694516b6f147099d491a30b151808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : stdgo.GoString)) } : T__struct_0)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _new : null, _golden : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.hash_test.Hash_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.hash_test.Hash_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _name : stdgo.GoString;
    public var _new : () -> stdgo._internal.hash.Hash.Hash;
    public var _golden : stdgo.Slice<stdgo.GoUInt8>;
};
function example_binaryMarshaler():Void {
        {};
        var _first = stdgo._internal.crypto.sha256.Sha256.new_();
        _first.write((("The tunneling gopher digs downwards, " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_first) : stdgo._internal.encoding.Encoding.BinaryMarshaler)) : stdgo._internal.encoding.Encoding.BinaryMarshaler), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.encoding.Encoding.BinaryMarshaler), _1 : false };
        }, _marshaler = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(("first does not implement encoding.BinaryMarshaler" : stdgo.GoString)));
        };
        var __tmp__ = _marshaler.marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(("unable to marshal hash:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _second = stdgo._internal.crypto.sha256.Sha256.new_();
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_second) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.encoding.Encoding.BinaryUnmarshaler), _1 : false };
        }, _unmarshaler = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(("second does not implement encoding.BinaryUnmarshaler" : stdgo.GoString)));
        };
        {
            var _err = _unmarshaler.unmarshalBinary(_state);
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(("unable to unmarshal hash:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        _first.write((("unaware of what he will find." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _second.write((("unaware of what he will find." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        stdgo._internal.fmt.Fmt.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface(_first.sum((null : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.equal(_first.sum((null : stdgo.Slice<stdgo.GoUInt8>)), _second.sum((null : stdgo.Slice<stdgo.GoUInt8>)))));
    }
function _fromHex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        var __tmp__ = stdgo._internal.encoding.hex.Hex.decodeString(_s?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _b;
    }
function testMarshalHash(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _marshalTests) {
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _buf) {
                    _buf[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
                };
                var _h = _tt._new();
                _h.write((_buf.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                var _sum = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                var _h2 = _tt._new();
                var _h3 = _tt._new();
                {};
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (249 : stdgo.GoInt) : Bool), _i++, {
                        _h2.write((_buf.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    });
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding.BinaryMarshaler)) : stdgo._internal.encoding.Encoding.BinaryMarshaler), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.encoding.Encoding.BinaryMarshaler), _1 : false };
                }, _h2m = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.fatalf(("Hash does not implement MarshalBinary" : stdgo.GoString));
                };
                var __tmp__ = _h2m.marshalBinary(), _enc:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("MarshalBinary: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if (!stdgo._internal.bytes.Bytes.equal(_enc, _tt._golden)) {
                    _t.errorf(("MarshalBinary = %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_tt._golden));
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h3) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.encoding.Encoding.BinaryUnmarshaler), _1 : false };
                }, _h3u = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.fatalf(("Hash does not implement UnmarshalBinary" : stdgo.GoString));
                };
                {
                    var _err = _h3u.unmarshalBinary(_enc);
                    if (_err != null) {
                        _t.fatalf(("UnmarshalBinary: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                _h2.write((_buf.__slice__((249 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _h3.write((_buf.__slice__((249 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                var _sum2 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                var _sum3 = _h3.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                if (!stdgo._internal.bytes.Bytes.equal(_sum2, _sum)) {
                    _t.fatalf(("Sum after MarshalBinary = %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_sum2), stdgo.Go.toInterface(_sum));
                };
                if (!stdgo._internal.bytes.Bytes.equal(_sum3, _sum)) {
                    _t.fatalf(("Sum after UnmarshalBinary = %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_sum3), stdgo.Go.toInterface(_sum));
                };
            });
        };
    }
