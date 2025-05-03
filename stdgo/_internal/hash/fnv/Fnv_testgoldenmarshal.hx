package stdgo._internal.hash.fnv;
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0>(6, 6, ...[({ _name : ("32" : stdgo.GoString), _newHash : function():stdgo._internal.hash.Hash_hash.Hash {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L110"
            return stdgo._internal.hash.fnv.Fnv_new32.new32();
        }, _gold : stdgo._internal.hash.fnv.Fnv__golden32._golden32 } : stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0), ({ _name : ("32a" : stdgo.GoString), _newHash : function():stdgo._internal.hash.Hash_hash.Hash {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L111"
            return stdgo._internal.hash.fnv.Fnv_new32a.new32a();
        }, _gold : stdgo._internal.hash.fnv.Fnv__golden32a._golden32a } : stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0), ({ _name : ("64" : stdgo.GoString), _newHash : function():stdgo._internal.hash.Hash_hash.Hash {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L112"
            return stdgo._internal.hash.fnv.Fnv_new64.new64();
        }, _gold : stdgo._internal.hash.fnv.Fnv__golden64._golden64 } : stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0), ({ _name : ("64a" : stdgo.GoString), _newHash : function():stdgo._internal.hash.Hash_hash.Hash {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L113"
            return stdgo._internal.hash.fnv.Fnv_new64a.new64a();
        }, _gold : stdgo._internal.hash.fnv.Fnv__golden64a._golden64a } : stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0), ({ _name : ("128" : stdgo.GoString), _newHash : function():stdgo._internal.hash.Hash_hash.Hash {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L114"
            return stdgo._internal.hash.fnv.Fnv_new128.new128();
        }, _gold : stdgo._internal.hash.fnv.Fnv__golden128._golden128 } : stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0), ({ _name : ("128a" : stdgo.GoString), _newHash : function():stdgo._internal.hash.Hash_hash.Hash {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L115"
            return stdgo._internal.hash.fnv.Fnv_new128a.new128a();
        }, _gold : stdgo._internal.hash.fnv.Fnv__golden128a._golden128a } : stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _newHash : null, _gold : (null : stdgo.Slice<stdgo._internal.hash.fnv.Fnv_t_golden.T_golden>) } : stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.hash.fnv.Fnv_t__struct_0.T__struct_0>);
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L117"
        for (__0 => _tt in _tests) {
            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L118"
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L119"
                for (__9 => _g in _tt._gold) {
                    var _h = (_tt._newHash() : stdgo._internal.hash.Hash_hash.Hash);
                    var _h2 = (_tt._newHash() : stdgo._internal.hash.Hash_hash.Hash);
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L123"
                    stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L126"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L127"
                        _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L128"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L131"
                    if ((_state : stdgo.GoString) != (_g._halfState)) {
                        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L132"
                        _t.errorf(("checksum(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfState));
                        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L133"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L136"
                    {
                        var _err = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_state) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L137"
                            _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L138"
                            continue;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L141"
                    stdgo._internal.io.Io_writestring.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L142"
                    stdgo._internal.io.Io_writestring.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L144"
                    {
                        var __0 = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), __1 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
var _actual2 = __1, _actual = __0;
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _actual2)) {
                            //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L145"
                            _t.errorf(("hash(%q) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_actual2));
                        };
                    };
                };
            });
        };
    }
