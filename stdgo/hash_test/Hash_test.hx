package stdgo.hash_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    
    
    
**/
private var _marshalTests = (new Slice<T__struct_0>(
0,
0,
({ _name : ("adler32" : GoString), _new : function():Hash {
        return stdgo.hash.adler32.Adler32.new_();
    }, _golden : _fromHex(("61646c01460a789d" : GoString)) } : T__struct_0),
({ _name : ("crc32" : GoString), _new : function():Hash {
        return stdgo.hash.crc32.Crc32.newIEEE();
    }, _golden : _fromHex(("63726301ca87914dc956d3e8" : GoString)) } : T__struct_0),
({ _name : ("crc64" : GoString), _new : function():Hash {
        return stdgo.hash.crc64.Crc64.new_(stdgo.hash.crc64.Crc64.makeTable(("15564440312192434176" : GoUInt64)));
    }, _golden : _fromHex(("6372630273ba8484bbcd5def5d51c83c581695be" : GoString)) } : T__struct_0),
({ _name : ("fnv32" : GoString), _new : function():Hash {
        return stdgo.hash.fnv.Fnv.new32();
    }, _golden : _fromHex(("666e760171ba3d77" : GoString)) } : T__struct_0),
({ _name : ("fnv32a" : GoString), _new : function():Hash {
        return stdgo.hash.fnv.Fnv.new32a();
    }, _golden : _fromHex(("666e76027439f86f" : GoString)) } : T__struct_0),
({ _name : ("fnv64" : GoString), _new : function():Hash {
        return stdgo.hash.fnv.Fnv.new64();
    }, _golden : _fromHex(("666e7603cc64e0e97692c637" : GoString)) } : T__struct_0),
({ _name : ("fnv64a" : GoString), _new : function():Hash {
        return stdgo.hash.fnv.Fnv.new64a();
    }, _golden : _fromHex(("666e7604c522af9b0dede66f" : GoString)) } : T__struct_0),
({ _name : ("fnv128" : GoString), _new : function():Hash {
        return stdgo.hash.fnv.Fnv.new128();
    }, _golden : _fromHex(("666e760561587a70a0f66d7981dc980e2cabbaf7" : GoString)) } : T__struct_0),
({ _name : ("fnv128a" : GoString), _new : function():Hash {
        return stdgo.hash.fnv.Fnv.new128a();
    }, _golden : _fromHex(("666e7606a955802b0136cb67622b461d9f91e6ff" : GoString)) } : T__struct_0),
({ _name : ("md5" : GoString), _new : stdgo.crypto.md5.Md5.new_, _golden : _fromHex(("6d643501a91b0023007aa14740a3979210b5f024c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : GoString)) } : T__struct_0),
({ _name : ("sha1" : GoString), _new : stdgo.crypto.sha1.Sha1.new_, _golden : _fromHex(("736861016dad5acb4dc003952f7a0b352ee5537ec381a228c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : GoString)) } : T__struct_0),
({ _name : ("sha224" : GoString), _new : stdgo.crypto.sha256.Sha256.new224, _golden : _fromHex(("73686102f8b92fc047c9b4d82f01a6370841277b7a0d92108440178c83db855a8e66c2d9c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : GoString)) } : T__struct_0),
({ _name : ("sha256" : GoString), _new : stdgo.crypto.sha256.Sha256.new_, _golden : _fromHex(("736861032bed68b99987cae48183b2b049d393d0050868e4e8ba3730e9112b08765929b7c0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : GoString)) } : T__struct_0),
({ _name : ("sha384" : GoString), _new : stdgo.crypto.sha512.Sha512.new384, _golden : _fromHex(("736861046f1664d213dd802f7c47bc50637cf93592570a2b8695839148bf38341c6eacd05326452ef1cbe64d90f1ef73bb5ac7d2803565467d0ddb10c5ee3fc050f9f0c1808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : GoString)) } : T__struct_0),
({ _name : ("sha512_224" : GoString), _new : stdgo.crypto.sha512.Sha512.new512_224, _golden : _fromHex(("736861056f1a450ec15af20572d0d1ee6518104d7cbbbe79a038557af5450ed7dbd420b53b7335209e951b4d9aff401f90549b9604fa3d823fbb8581c73582a88aa84022808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : GoString)) } : T__struct_0),
({ _name : ("sha512_256" : GoString), _new : stdgo.crypto.sha512.Sha512.new512_256, _golden : _fromHex(("736861067c541f1d1a72536b1f5dad64026bcc7c508f8a2126b51f46f8b9bff63a26fee70980718031e96832e95547f4fe76160ff84076db53b4549b86354af8e17b5116808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : GoString)) } : T__struct_0),
({ _name : ("sha512" : GoString), _new : stdgo.crypto.sha512.Sha512.new_, _golden : _fromHex(("736861078e03953cd57cd6879321270afa70c5827bb5b69be59a8f0130147e94f2aedf7bdc01c56c92343ca8bd837bb7f0208f5a23e155694516b6f147099d491a30b151808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f80000000000000000000000000000f9" : GoString)) } : T__struct_0)) : Slice<T__struct_0>);
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.hash_test.Hash_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.hash_test.Hash_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _name : GoString;
    public var _new : () -> Hash;
    public var _golden : Slice<GoUInt8>;
};
function example_binaryMarshaler():Void {
        {};
        var _first:Hash = stdgo.crypto.sha256.Sha256.new_();
        _first.write((("The tunneling gopher digs downwards, " : GoString) : Slice<GoByte>));
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_first) : stdgo.encoding.Encoding.BinaryMarshaler)) : stdgo.encoding.Encoding.BinaryMarshaler), ok : true };
        } catch(_) {
            { value : (null : stdgo.encoding.Encoding.BinaryMarshaler), ok : false };
        }, _marshaler = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            stdgo.log.Log.fatal(Go.toInterface(("first does not implement encoding.BinaryMarshaler" : GoString)));
        };
        var __tmp__ = _marshaler.marshalBinary(), _state:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(("unable to marshal hash:" : GoString)), Go.toInterface(_err));
        };
        var _second:Hash = stdgo.crypto.sha256.Sha256.new_();
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_second) : stdgo.encoding.Encoding.BinaryUnmarshaler)) : stdgo.encoding.Encoding.BinaryUnmarshaler), ok : true };
        } catch(_) {
            { value : (null : stdgo.encoding.Encoding.BinaryUnmarshaler), ok : false };
        }, _unmarshaler = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            stdgo.log.Log.fatal(Go.toInterface(("second does not implement encoding.BinaryUnmarshaler" : GoString)));
        };
        {
            var _err:Error = _unmarshaler.unmarshalBinary(_state);
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(("unable to unmarshal hash:" : GoString)), Go.toInterface(_err));
            };
        };
        _first.write((("unaware of what he will find." : GoString) : Slice<GoByte>));
        _second.write((("unaware of what he will find." : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf(("%x\n" : GoString), Go.toInterface(_first.sum((null : Slice<GoUInt8>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equal(_first.sum((null : Slice<GoUInt8>)), _second.sum((null : Slice<GoUInt8>)))));
    }
private function _fromHex(_s:GoString):Slice<GoByte> {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_s), _b:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        return _b;
    }
function testMarshalHash(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _marshalTests) {
            _t.run(_tt._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _buf = new Slice<GoUInt8>((256 : GoInt).toBasic(), 0, ...[for (i in 0 ... (256 : GoInt).toBasic()) (0 : GoUInt8)]);
                for (_i in 0 ... _buf.length.toBasic()) {
                    _buf[(_i : GoInt)] = (_i : GoByte);
                };
                var _h:Hash = _tt._new();
                _h.write((_buf.__slice__(0, (256 : GoInt)) : Slice<GoUInt8>));
                var _sum = _h.sum((null : Slice<GoUInt8>));
                var _h2:Hash = _tt._new();
                var _h3:Hash = _tt._new();
                {};
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (249 : GoInt), _i++, {
                        _h2.write((_buf.__slice__(_i, _i + (1 : GoInt)) : Slice<GoUInt8>));
                    });
                };
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_h2) : stdgo.encoding.Encoding.BinaryMarshaler)) : stdgo.encoding.Encoding.BinaryMarshaler), ok : true };
                } catch(_) {
                    { value : (null : stdgo.encoding.Encoding.BinaryMarshaler), ok : false };
                }, _h2m = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    _t.fatalf(("Hash does not implement MarshalBinary" : GoString));
                };
                var __tmp__ = _h2m.marshalBinary(), _enc:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("MarshalBinary: %v" : GoString), Go.toInterface(_err));
                };
                if (!stdgo.bytes.Bytes.equal(_enc, _tt._golden)) {
                    _t.errorf(("MarshalBinary = %x, want %x" : GoString), Go.toInterface(_enc), Go.toInterface(_tt._golden));
                };
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_h3) : stdgo.encoding.Encoding.BinaryUnmarshaler)) : stdgo.encoding.Encoding.BinaryUnmarshaler), ok : true };
                } catch(_) {
                    { value : (null : stdgo.encoding.Encoding.BinaryUnmarshaler), ok : false };
                }, _h3u = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    _t.fatalf(("Hash does not implement UnmarshalBinary" : GoString));
                };
                {
                    var _err:Error = _h3u.unmarshalBinary(_enc);
                    if (_err != null) {
                        _t.fatalf(("UnmarshalBinary: %v" : GoString), Go.toInterface(_err));
                    };
                };
                _h2.write((_buf.__slice__((249 : GoInt)) : Slice<GoUInt8>));
                _h3.write((_buf.__slice__((249 : GoInt)) : Slice<GoUInt8>));
                var _sum2 = _h2.sum((null : Slice<GoUInt8>));
                var _sum3 = _h3.sum((null : Slice<GoUInt8>));
                if (!stdgo.bytes.Bytes.equal(_sum2, _sum)) {
                    _t.fatalf(("Sum after MarshalBinary = %x, want %x" : GoString), Go.toInterface(_sum2), Go.toInterface(_sum));
                };
                if (!stdgo.bytes.Bytes.equal(_sum3, _sum)) {
                    _t.fatalf(("Sum after UnmarshalBinary = %x, want %x" : GoString), Go.toInterface(_sum3), Go.toInterface(_sum));
                };
            });
        };
    }
