package _internal.crypto.rand_test;
function testIntMask(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _max = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_max <= (256 : stdgo.GoInt) : Bool), _max++, {
                _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("max=%d" : stdgo.GoString), stdgo.Go.toInterface(_max))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _max : Bool), _i++, {
                            if ((stdgo._internal.testing.Testing_short.short() && (_i == (0 : stdgo.GoInt)) : Bool)) {
                                _i = (_max - (1 : stdgo.GoInt) : stdgo.GoInt);
                            };
                            var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                            _b.writeByte((_i : stdgo.GoUInt8));
                            var __tmp__ = stdgo._internal.crypto.rand.Rand_int_.int_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo._internal.math.big.Big_newInt.newInt((_max : stdgo.GoInt64))), _n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _t.fatalf(("Can\'t generate random value: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_err));
                            };
                            if (_n.int64() != ((_i : stdgo.GoInt64))) {
                                _t.errorf(("Int(reader, %d) should have returned value of %d, but it returned: %v" : stdgo.GoString), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)));
                            };
                        });
                    };
                });
            });
        };
    }
