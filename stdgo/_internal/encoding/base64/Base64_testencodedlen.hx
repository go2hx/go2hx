package stdgo._internal.encoding.base64;
function testEncodedLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L265"
        for (__0 => _tt in (new stdgo.Slice<stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1>(11, 11, ...[
({ _enc : stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding, _n : (1 : stdgo.GoInt), _want : (2 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding, _n : (2 : stdgo.GoInt), _want : (3 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding, _n : (3 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding, _n : (7 : stdgo.GoInt), _want : (10 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, _n : (1 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, _n : (2 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, _n : (3 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, _n : (4 : stdgo.GoInt), _want : (8 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, _n : (7 : stdgo.GoInt), _want : (12 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _enc : (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.encoding.base64.Base64_t__struct_1.T__struct_1>)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L282"
            {
                var _got = (_tt._enc.encodedLen(_tt._n) : stdgo.GoInt);
                if (_got != (_tt._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L283"
                    _t.errorf(("EncodedLen(%d): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
