package stdgo._internal.crypto.sha256;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.crypto.sha256.Sha256_t__struct_0.T__struct_0>(2, 2, ...[({ _name : ("256" : stdgo.GoString), _newHash : stdgo._internal.crypto.sha256.Sha256_new_.new_, _gold : stdgo._internal.crypto.sha256.Sha256__golden._golden } : stdgo._internal.crypto.sha256.Sha256_t__struct_0.T__struct_0), ({ _name : ("224" : stdgo.GoString), _newHash : stdgo._internal.crypto.sha256.Sha256_new224.new224, _gold : stdgo._internal.crypto.sha256.Sha256__golden224._golden224 } : stdgo._internal.crypto.sha256.Sha256_t__struct_0.T__struct_0)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _newHash : null, _gold : (null : stdgo.Slice<stdgo._internal.crypto.sha256.Sha256_t_sha256test.T_sha256Test>) } : stdgo._internal.crypto.sha256.Sha256_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.crypto.sha256.Sha256_t__struct_0.T__struct_0>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L151"
        for (__0 => _tt in _tests) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L152"
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L153"
                for (__9 => _g in _tt._gold) {
                    var _h = (_tt._newHash() : stdgo._internal.hash.Hash_hash.Hash);
                    var _h2 = (_tt._newHash() : stdgo._internal.hash.Hash_hash.Hash);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L157"
                    stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L160"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L161"
                        _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L162"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L165"
                    if ((_state : stdgo.GoString) != (_g._halfState)) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L166"
                        _t.errorf(("sha%s(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfState));
                        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L167"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L170"
                    {
                        var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L171"
                            _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L172"
                            continue;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L175"
                    stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L176"
                    stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L178"
                    {
                        var __0 = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), __1 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
var _actual2 = __1, _actual = __0;
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _actual2)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L179"
                            _t.errorf(("sha%s(%q) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_actual2));
                        };
                    };
                };
            });
        };
    }
