package stdgo._internal.crypto.aes;
function testExpandKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_7:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _j_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_5:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _j_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dec_3:stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
        var _enc_2:stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
        var _tt_1:stdgo._internal.crypto.aes.Aes_keytest.KeyTest = ({} : stdgo._internal.crypto.aes.Aes_keytest.KeyTest);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 4958773i64;
                } else if (__value__ == (4958773i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L218"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.crypto.aes.Aes__keytests._keyTests.length)) {
                        _gotoNext = 4959440i64;
                    } else {
                        _gotoNext = 4959443i64;
                    };
                } else if (__value__ == (4958781i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L218"
                    _i_0++;
                    _gotoNext = 4959441i64;
                } else if (__value__ == (4958805i64)) {
                    _tt_1 = stdgo._internal.crypto.aes.Aes__keytests._keyTests[(_i_0 : stdgo.GoInt)];
                    _enc_2 = (new stdgo.Slice<stdgo.GoUInt32>((_tt_1._enc.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L221"
                    if (_tt_1._dec != null) {
                        _gotoNext = 4958882i64;
                    } else {
                        _gotoNext = 4959128i64;
                    };
                } else if (__value__ == (4958882i64)) {
                    _dec_3 = (new stdgo.Slice<stdgo.GoUInt32>((_tt_1._dec.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                    _gotoNext = 4959128i64;
                } else if (__value__ == (4959128i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L227"
                    stdgo._internal.crypto.aes.Aes__expandkeygo._expandKeyGo(_tt_1._key, _enc_2, _dec_3);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L228"
                    if ((0i64 : stdgo.GoInt) < (_enc_2.length)) {
                        _gotoNext = 4959296i64;
                    } else {
                        _gotoNext = 4959301i64;
                    };
                } else if (__value__ == (4959164i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L228"
                    _j_4++;
                    _gotoNext = 4959297i64;
                } else if (__value__ == (4959182i64)) {
                    _v_5 = _enc_2[(_j_4 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L229"
                    if (_v_5 != (_tt_1._enc[(_j_4 : stdgo.GoInt)])) {
                        _gotoNext = 4959205i64;
                    } else {
                        _gotoNext = 4959164i64;
                    };
                } else if (__value__ == (4959205i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L230"
                    _t.errorf(("key %d: enc[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i_0), stdgo.Go.toInterface(_j_4), stdgo.Go.toInterface(_v_5), stdgo.Go.toInterface(_tt_1._enc[(_j_4 : stdgo.GoInt)]));
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L218"
                    _i_0++;
                    _gotoNext = 4959441i64;
                } else if (__value__ == (4959296i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _enc_2[(0i64 : stdgo.GoInt)];
                        _j_4 = @:binopAssign __tmp__0;
                        _v_5 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4959297i64;
                } else if (__value__ == (4959297i64)) {
                    //"file://#L0"
                    if (_j_4 < (_enc_2.length)) {
                        _gotoNext = 4959182i64;
                    } else {
                        _gotoNext = 4959301i64;
                    };
                } else if (__value__ == (4959301i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L234"
                    if ((0i64 : stdgo.GoInt) < (_dec_3.length)) {
                        _gotoNext = 4959437i64;
                    } else {
                        _gotoNext = 4958781i64;
                    };
                } else if (__value__ == (4959305i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L234"
                    _j_6++;
                    _gotoNext = 4959438i64;
                } else if (__value__ == (4959323i64)) {
                    _v_7 = _dec_3[(_j_6 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L235"
                    if (_v_7 != (_tt_1._dec[(_j_6 : stdgo.GoInt)])) {
                        _gotoNext = 4959346i64;
                    } else {
                        _gotoNext = 4959305i64;
                    };
                } else if (__value__ == (4959346i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L236"
                    _t.errorf(("key %d: dec[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i_0), stdgo.Go.toInterface(_j_6), stdgo.Go.toInterface(_v_7), stdgo.Go.toInterface(_tt_1._dec[(_j_6 : stdgo.GoInt)]));
                    //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L218"
                    _i_0++;
                    _gotoNext = 4959441i64;
                } else if (__value__ == (4959437i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _dec_3[(0i64 : stdgo.GoInt)];
                        _j_6 = @:binopAssign __tmp__0;
                        _v_7 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4959438i64;
                } else if (__value__ == (4959438i64)) {
                    //"file://#L0"
                    if (_j_6 < (_dec_3.length)) {
                        _gotoNext = 4959323i64;
                    } else {
                        _gotoNext = 4958781i64;
                    };
                } else if (__value__ == (4959440i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo._internal.crypto.aes.Aes__keytests._keyTests[(0i64 : stdgo.GoInt)];
                        _i_0 = @:binopAssign __tmp__0;
                        _tt_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4959441i64;
                } else if (__value__ == (4959441i64)) {
                    //"file://#L0"
                    if (_i_0 < (stdgo._internal.crypto.aes.Aes__keytests._keyTests.length)) {
                        _gotoNext = 4958805i64;
                    } else {
                        _gotoNext = 4959443i64;
                    };
                } else if (__value__ == (4959443i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
