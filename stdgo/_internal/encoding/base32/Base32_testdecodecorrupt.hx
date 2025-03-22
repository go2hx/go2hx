package stdgo._internal.encoding.base32;
function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1>(23, 23, ...[
({ _input : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("!!!!" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("x===" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AA=A====" : stdgo.GoString), _offset : (2 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAA=AAAA" : stdgo.GoString), _offset : (3 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("MMMMMMMMM" : stdgo.GoString), _offset : (8 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("MMMMMM" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("A=" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AA=" : stdgo.GoString), _offset : (3 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AA==" : stdgo.GoString), _offset : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AA===" : stdgo.GoString), _offset : (5 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAA=" : stdgo.GoString), _offset : (5 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAA==" : stdgo.GoString), _offset : (6 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAAA=" : stdgo.GoString), _offset : (6 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAAA==" : stdgo.GoString), _offset : (7 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("A=======" : stdgo.GoString), _offset : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AA======" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAA=====" : stdgo.GoString), _offset : (3 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAA====" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAAA===" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAAAA==" : stdgo.GoString), _offset : (6 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAAAAA=" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1),
({ _input : ("AAAAAAAA" : stdgo.GoString), _offset : (-1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1)].concat([for (i in 23 ... (23 > 23 ? 23 : 23 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _offset : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.encoding.base32.Base32_t__struct_1.T__struct_1>);
        for (__0 => _tc in _testCases) {
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodedLen((_tc._input.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = @:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decode(_dbuf, (_tc._input : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_tc._offset == ((-1 : stdgo.GoInt))) {
                if (_err != null) {
                    @:check2r _t.error(stdgo.Go.toInterface(("Decoder wrongly detected corruption in" : stdgo.GoString)), stdgo.Go.toInterface(_tc._input));
                };
                continue;
            };
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError))) {
                    var _err:stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError) : __type__.__underlying__().value);
                    stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Corruption in %q at offset %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface((_err : stdgo.GoInt)), stdgo.Go.toInterface(_tc._offset));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    @:check2r _t.error(stdgo.Go.toInterface(("Decoder failed to detect corruption in" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tc)));
                };
            };
        };
    }
