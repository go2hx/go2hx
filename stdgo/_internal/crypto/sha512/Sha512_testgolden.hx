package stdgo._internal.crypto.sha512;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.crypto.sha512.Sha512_t__struct_0.T__struct_0>(4, 4, ...[({ _name : ("SHA512/224" : stdgo.GoString), _oneShotHash : function(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            var _a = stdgo._internal.crypto.sha512.Sha512_sum512_224.sum512_224(_in)?.__copy__();
            return (_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        }, _digest : stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224(), _golden : stdgo._internal.crypto.sha512.Sha512__golden224._golden224 } : stdgo._internal.crypto.sha512.Sha512_t__struct_0.T__struct_0), ({ _name : ("SHA512/256" : stdgo.GoString), _oneShotHash : function(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            var _a = stdgo._internal.crypto.sha512.Sha512_sum512_256.sum512_256(_in)?.__copy__();
            return (_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        }, _digest : stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256(), _golden : stdgo._internal.crypto.sha512.Sha512__golden256._golden256 } : stdgo._internal.crypto.sha512.Sha512_t__struct_0.T__struct_0), ({ _name : ("SHA384" : stdgo.GoString), _oneShotHash : function(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            var _a = stdgo._internal.crypto.sha512.Sha512_sum384.sum384(_in)?.__copy__();
            return (_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        }, _digest : stdgo._internal.crypto.sha512.Sha512_new384.new384(), _golden : stdgo._internal.crypto.sha512.Sha512__golden384._golden384 } : stdgo._internal.crypto.sha512.Sha512_t__struct_0.T__struct_0), ({ _name : ("SHA512" : stdgo.GoString), _oneShotHash : function(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
            var _a = stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_in)?.__copy__();
            return (_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        }, _digest : stdgo._internal.crypto.sha512.Sha512_new_.new_(), _golden : stdgo._internal.crypto.sha512.Sha512__golden512._golden512 } : stdgo._internal.crypto.sha512.Sha512_t__struct_0.T__struct_0)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _oneShotHash : null, _digest : (null : stdgo._internal.hash.Hash_hash.Hash), _golden : (null : stdgo.Slice<stdgo._internal.crypto.sha512.Sha512_t_sha512test.T_sha512Test>) } : stdgo._internal.crypto.sha512.Sha512_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.crypto.sha512.Sha512_t__struct_0.T__struct_0>);
        for (__0 => _tt in _tests) {
            for (__1 => _test in _tt._golden) {
                var _in = (_test._in : stdgo.Slice<stdgo.GoUInt8>);
                stdgo._internal.crypto.sha512.Sha512__testhash._testHash(_t, _tt._name?.__copy__(), _test._in?.__copy__(), _test._out?.__copy__(), _tt._oneShotHash(_in), _tt._digest);
            };
        };
    }
