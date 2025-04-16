package stdgo._internal.crypto.aes;
function testExpandKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _j_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dec_3:stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
        var _enc_2:stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
        var _tt_1:stdgo._internal.crypto.aes.Aes_keytest.KeyTest = ({} : stdgo._internal.crypto.aes.Aes_keytest.KeyTest);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_7:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _j_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_5:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4861417i32;
                } else if (__value__ == (4861417i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.crypto.aes.Aes__keytests._keyTests.length)) {
                        _gotoNext = 4862084i32;
                    } else {
                        _gotoNext = 4862087i32;
                    };
                } else if (__value__ == (4861425i32)) {
                    _i_0++;
                    _gotoNext = 4862085i32;
                } else if (__value__ == (4861449i32)) {
                    _tt_1 = stdgo._internal.crypto.aes.Aes__keytests._keyTests[(_i_0 : stdgo.GoInt)];
                    _enc_2 = (new stdgo.Slice<stdgo.GoUInt32>((_tt_1._enc.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                    if (_tt_1._dec != null) {
                        _gotoNext = 4861526i32;
                    } else {
                        _gotoNext = 4861772i32;
                    };
                } else if (__value__ == (4861526i32)) {
                    _dec_3 = (new stdgo.Slice<stdgo.GoUInt32>((_tt_1._dec.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                    _gotoNext = 4861772i32;
                } else if (__value__ == (4861772i32)) {
                    stdgo._internal.crypto.aes.Aes__expandkeygo._expandKeyGo(_tt_1._key, _enc_2, _dec_3);
                    if ((0i32 : stdgo.GoInt) < (_enc_2.length)) {
                        _gotoNext = 4861940i32;
                    } else {
                        _gotoNext = 4861945i32;
                    };
                } else if (__value__ == (4861808i32)) {
                    _j_4++;
                    _gotoNext = 4861941i32;
                } else if (__value__ == (4861826i32)) {
                    _v_5 = _enc_2[(_j_4 : stdgo.GoInt)];
                    if (_v_5 != (_tt_1._enc[(_j_4 : stdgo.GoInt)])) {
                        _gotoNext = 4861849i32;
                    } else {
                        _gotoNext = 4861808i32;
                    };
                } else if (__value__ == (4861849i32)) {
                    @:check2r _t.errorf(("key %d: enc[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i_0), stdgo.Go.toInterface(_j_4), stdgo.Go.toInterface(_v_5), stdgo.Go.toInterface(_tt_1._enc[(_j_4 : stdgo.GoInt)]));
                    _i_0++;
                    _gotoNext = 4862085i32;
                } else if (__value__ == (4861940i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _enc_2[(0i32 : stdgo.GoInt)];
                        _j_4 = @:binopAssign __tmp__0;
                        _v_5 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4861941i32;
                } else if (__value__ == (4861941i32)) {
                    if (_j_4 < (_enc_2.length)) {
                        _gotoNext = 4861826i32;
                    } else {
                        _gotoNext = 4861945i32;
                    };
                } else if (__value__ == (4861945i32)) {
                    if ((0i32 : stdgo.GoInt) < (_dec_3.length)) {
                        _gotoNext = 4862081i32;
                    } else {
                        _gotoNext = 4861425i32;
                    };
                } else if (__value__ == (4861949i32)) {
                    _j_6++;
                    _gotoNext = 4862082i32;
                } else if (__value__ == (4861967i32)) {
                    _v_7 = _dec_3[(_j_6 : stdgo.GoInt)];
                    if (_v_7 != (_tt_1._dec[(_j_6 : stdgo.GoInt)])) {
                        _gotoNext = 4861990i32;
                    } else {
                        _gotoNext = 4861949i32;
                    };
                } else if (__value__ == (4861990i32)) {
                    @:check2r _t.errorf(("key %d: dec[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i_0), stdgo.Go.toInterface(_j_6), stdgo.Go.toInterface(_v_7), stdgo.Go.toInterface(_tt_1._dec[(_j_6 : stdgo.GoInt)]));
                    _i_0++;
                    _gotoNext = 4862085i32;
                } else if (__value__ == (4862081i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _dec_3[(0i32 : stdgo.GoInt)];
                        _j_6 = @:binopAssign __tmp__0;
                        _v_7 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4862082i32;
                } else if (__value__ == (4862082i32)) {
                    if (_j_6 < (_dec_3.length)) {
                        _gotoNext = 4861967i32;
                    } else {
                        _gotoNext = 4861425i32;
                    };
                } else if (__value__ == (4862084i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.crypto.aes.Aes__keytests._keyTests[(0i32 : stdgo.GoInt)];
                        _i_0 = @:binopAssign __tmp__0;
                        _tt_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4862085i32;
                } else if (__value__ == (4862085i32)) {
                    if (_i_0 < (stdgo._internal.crypto.aes.Aes__keytests._keyTests.length)) {
                        _gotoNext = 4861449i32;
                    } else {
                        _gotoNext = 4862087i32;
                    };
                } else if (__value__ == (4862087i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
