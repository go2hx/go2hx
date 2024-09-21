package _internal.crypto.rand_test;
function testIntReads(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                var _max = (((1i64 : stdgo.GoInt64) << (_i : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("max=%d" : stdgo.GoString), stdgo.Go.toInterface(_max))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var _reader = (stdgo.Go.setRef(({ _r : stdgo._internal.crypto.rand.Rand_reader.reader } : _internal.crypto.rand_test.Rand_test_T_countingReader.T_countingReader)) : stdgo.Ref<_internal.crypto.rand_test.Rand_test_T_countingReader.T_countingReader>);
                    var __tmp__ = stdgo._internal.crypto.rand.Rand_int_.int_(stdgo.Go.asInterface(_reader), stdgo._internal.math.big.Big_newInt.newInt(_max)), __8:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Can\'t generate random value: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_err));
                    };
                    var _expected = (((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
                    if (_reader._n != (_expected)) {
                        _t.errorf(("Int(reader, %d) should read %d bytes, but it read: %d" : stdgo.GoString), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_reader._n));
                    };
                });
            });
        };
    }
