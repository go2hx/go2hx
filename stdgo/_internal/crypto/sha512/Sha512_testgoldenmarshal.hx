package stdgo._internal.crypto.sha512;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.crypto.sha512.Sha512_t__struct_1.T__struct_1>(4, 4, ...[({ _name : ("512/224" : stdgo.GoString), _newHash : stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224, _golden : stdgo._internal.crypto.sha512.Sha512__golden224._golden224 } : stdgo._internal.crypto.sha512.Sha512_t__struct_1.T__struct_1), ({ _name : ("512/256" : stdgo.GoString), _newHash : stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256, _golden : stdgo._internal.crypto.sha512.Sha512__golden256._golden256 } : stdgo._internal.crypto.sha512.Sha512_t__struct_1.T__struct_1), ({ _name : ("384" : stdgo.GoString), _newHash : stdgo._internal.crypto.sha512.Sha512_new384.new384, _golden : stdgo._internal.crypto.sha512.Sha512__golden384._golden384 } : stdgo._internal.crypto.sha512.Sha512_t__struct_1.T__struct_1), ({ _name : ("512" : stdgo.GoString), _newHash : stdgo._internal.crypto.sha512.Sha512_new_.new_, _golden : stdgo._internal.crypto.sha512.Sha512__golden512._golden512 } : stdgo._internal.crypto.sha512.Sha512_t__struct_1.T__struct_1)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _newHash : null, _golden : (null : stdgo.Slice<stdgo._internal.crypto.sha512.Sha512_t_sha512test.T_sha512Test>) } : stdgo._internal.crypto.sha512.Sha512_t__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.crypto.sha512.Sha512_t__struct_1.T__struct_1>);
        for (__0 => _tt in _tests) {
            @:check2r _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                for (__9 => _test in _tt._golden) {
                    var _h = (_tt._newHash() : stdgo._internal.hash.Hash_hash.Hash);
                    var _h2 = (_tt._newHash() : stdgo._internal.hash.Hash_hash.Hash);
                    stdgo._internal.io.Io_writestring.writeString(_h, (_test._in.__slice__(0, ((_test._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        return;
                    };
                    if ((_state : stdgo.GoString) != (_test._halfState)) {
                        @:check2r _t.errorf(("New%s(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_test._halfState));
                        continue;
                    };
                    {
                        var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                        if (_err != null) {
                            @:check2r _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            return;
                        };
                    };
                    stdgo._internal.io.Io_writestring.writeString(_h, (_test._in.__slice__(((_test._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    stdgo._internal.io.Io_writestring.writeString(_h2, (_test._in.__slice__(((_test._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    {
                        var __0 = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), __1 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
var _actual2 = __1, _actual = __0;
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _actual2)) {
                            @:check2r _t.errorf(("New%s(%q) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_actual2));
                        };
                    };
                };
            });
        };
    }
