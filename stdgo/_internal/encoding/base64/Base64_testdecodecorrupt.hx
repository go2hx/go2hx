package stdgo._internal.encoding.base64;
function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0>(24, 24, ...[
({ _input : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("\n" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AAA=\n" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AAAA\n" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("!!!!" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("====" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("x===" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("=AAA" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("A=AA" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AA=A" : stdgo.GoString), _offset : (2 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AA==A" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AAA=AAAA" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AAAAA" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AAAAAA" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("A=" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("A==" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AA=" : stdgo.GoString), _offset : (3 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AA==" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AAA=" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AAAA" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("AAAAAA=" : stdgo.GoString), _offset : (7 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("YWJjZA=====" : stdgo.GoString), _offset : (8 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("A!\n" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0),
({ _input : ("A=\n" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0)].concat([for (i in 24 ... (24 > 24 ? 24 : 24 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.encoding.base64.Base64_t__struct_0.T__struct_0>);
        for (__0 => _tc in _testCases) {
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodedLen((_tc._input.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = @:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decode(_dbuf, (_tc._input : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_tc._offset == ((-1 : stdgo.GoInt))) {
                if (_err != null) {
                    @:check2r _t.error(stdgo.Go.toInterface(("Decoder wrongly detected corruption in" : stdgo.GoString)), stdgo.Go.toInterface(_tc._input));
                };
                continue;
            };
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError))) {
                    var _err:stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError) : __type__.__underlying__().value;
                    stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Corruption in %q at offset %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface((_err : stdgo.GoInt)), stdgo.Go.toInterface(_tc._offset));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    @:check2r _t.error(stdgo.Go.toInterface(("Decoder failed to detect corruption in" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tc)));
                };
            };
        };
    }
