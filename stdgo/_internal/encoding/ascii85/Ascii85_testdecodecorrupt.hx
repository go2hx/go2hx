package stdgo._internal.encoding.ascii85;
function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _examples = (new stdgo.Slice<stdgo._internal.encoding.ascii85.Ascii85_t_testdecodecorrupt___localname___corrupt_4391.T_testDecodeCorrupt___localname___corrupt_4391>(2, 2, ...[(new stdgo._internal.encoding.ascii85.Ascii85_t_testdecodecorrupt___localname___corrupt_4391.T_testDecodeCorrupt___localname___corrupt_4391(("v" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.encoding.ascii85.Ascii85_t_testdecodecorrupt___localname___corrupt_4391.T_testDecodeCorrupt___localname___corrupt_4391), (new stdgo._internal.encoding.ascii85.Ascii85_t_testdecodecorrupt___localname___corrupt_4391.T_testDecodeCorrupt___localname___corrupt_4391(("!z!!!!!!!!!" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.encoding.ascii85.Ascii85_t_testdecodecorrupt___localname___corrupt_4391.T_testDecodeCorrupt___localname___corrupt_4391)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.ascii85.Ascii85_t_testdecodecorrupt___localname___corrupt_4391.T_testDecodeCorrupt___localname___corrupt_4391)])) : stdgo.Slice<stdgo._internal.encoding.ascii85.Ascii85_t_testdecodecorrupt___localname___corrupt_4391.T_testDecodeCorrupt___localname___corrupt_4391>);
        for (__0 => _e in _examples) {
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) * (_e._e.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.ascii85.Ascii85_decode.decode(_dbuf, (_e._e : stdgo.Slice<stdgo.GoUInt8>), true), __1:stdgo.GoInt = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError))) {
                    var _err:stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError) : __type__.__underlying__().value);
                    stdgo._internal.encoding.ascii85.Ascii85__testequal._testEqual(_t, ("Corruption in %q at offset %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_e._e), stdgo.Go.toInterface((_err : stdgo.GoInt)), stdgo.Go.toInterface(_e._p));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    @:check2r _t.error(stdgo.Go.toInterface(("Decoder failed to detect corruption in" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
                };
            };
        };
    }
