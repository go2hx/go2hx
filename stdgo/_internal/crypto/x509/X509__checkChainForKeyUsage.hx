package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5572592:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5572601_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5572430:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5572276_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5571719:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5572267:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5572084:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5572047:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5571833:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5572491:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5572488:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5571719 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5571719, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5571811i32;
                    } else {
                        _gotoNext = 5571833i32;
                    };
                } else if (__value__ == (5571811i32)) {
                    return false;
                    _gotoNext = 5571833i32;
                } else if (__value__ == (5571833i32)) {
                    _usagesRemaining_5571833 = (_usages_5571719.length);
                    _gotoNext = 5572032i32;
                } else if (__value__ == (5572032i32)) {
                    _i_5572047 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5572043i32;
                } else if (__value__ == (5572043i32)) {
                    if (!nextCertBreak && ((_i_5572047 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5572080i32;
                    } else {
                        _gotoNext = 5572813i32;
                    };
                } else if (__value__ == (5572076i32)) {
                    _i_5572047--;
                    _gotoNext = 5572043i32;
                } else if (__value__ == (5572080i32)) {
                    _cert_5572084 = _chain[(_i_5572047 : stdgo.GoInt)];
                    if (((_cert_5572084.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5572084.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5572170i32;
                    } else {
                        _gotoNext = 5572260i32;
                    };
                } else if (__value__ == (5572170i32)) {
                    _i_5572047--;
                    _gotoNext = 5572043i32;
                } else if (__value__ == (5572260i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5572084.extKeyUsage.length)) {
                        _gotoNext = 5572418i32;
                    } else {
                        _gotoNext = 5572424i32;
                    };
                } else if (__value__ == (5572264i32)) {
                    _i_5572276_0++;
                    _gotoNext = 5572419i32;
                } else if (__value__ == (5572299i32)) {
                    _usage_5572267 = _cert_5572084.extKeyUsage[(_i_5572276_0 : stdgo.GoInt)];
                    if (_usage_5572267 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5572331i32;
                    } else {
                        _gotoNext = 5572264i32;
                    };
                } else if (__value__ == (5572331i32)) {
                    _i_5572047--;
                    _gotoNext = 5572043i32;
                } else if (__value__ == (5572418i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5572084.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5572276_0 = __tmp__0;
                        _usage_5572267 = __tmp__1;
                    };
                    _gotoNext = 5572419i32;
                } else if (__value__ == (5572419i32)) {
                    if (_i_5572276_0 < (_cert_5572084.extKeyUsage.length)) {
                        _gotoNext = 5572299i32;
                    } else {
                        _gotoNext = 5572424i32;
                    };
                } else if (__value__ == (5572424i32)) {
                    _invalidUsage_5572430 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5572462i32;
                } else if (__value__ == (5572462i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5571719.length)) {
                        _gotoNext = 5572805i32;
                    } else {
                        _gotoNext = 5572076i32;
                    };
                } else if (__value__ == (5572488i32)) {
                    _i_5572488++;
                    _gotoNext = 5572806i32;
                } else if (__value__ == (5572522i32)) {
                    _requestedUsage_5572491 = _usages_5571719[(_i_5572488 : stdgo.GoInt)];
                    if (_requestedUsage_5572491 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5572561i32;
                    } else {
                        _gotoNext = 5572585i32;
                    };
                } else if (__value__ == (5572561i32)) {
                    _i_5572488++;
                    _gotoNext = 5572806i32;
                } else if (__value__ == (5572585i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5572084.extKeyUsage.length)) {
                        _gotoNext = 5572700i32;
                    } else {
                        _gotoNext = 5572707i32;
                    };
                } else if (__value__ == (5572589i32)) {
                    _i_5572601_0++;
                    _gotoNext = 5572701i32;
                } else if (__value__ == (5572624i32)) {
                    _usage_5572592 = _cert_5572084.extKeyUsage[(_i_5572601_0 : stdgo.GoInt)];
                    if (_requestedUsage_5572491 == (_usage_5572592)) {
                        _gotoNext = 5572657i32;
                    } else {
                        _gotoNext = 5572589i32;
                    };
                } else if (__value__ == (5572657i32)) {
                    _i_5572488++;
                    _gotoNext = 5572806i32;
                } else if (__value__ == (5572700i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5572084.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5572601_0 = __tmp__0;
                        _usage_5572592 = __tmp__1;
                    };
                    _gotoNext = 5572701i32;
                } else if (__value__ == (5572701i32)) {
                    if (_i_5572601_0 < (_cert_5572084.extKeyUsage.length)) {
                        _gotoNext = 5572624i32;
                    } else {
                        _gotoNext = 5572707i32;
                    };
                } else if (__value__ == (5572707i32)) {
                    _usages_5571719[(_i_5572488 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5571833--;
                    if (_usagesRemaining_5571833 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5572780i32;
                    } else {
                        _gotoNext = 5572488i32;
                    };
                } else if (__value__ == (5572780i32)) {
                    return false;
                    _gotoNext = 5572488i32;
                } else if (__value__ == (5572805i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5571719[(0i32 : stdgo.GoInt)];
                        _i_5572488 = __tmp__0;
                        _requestedUsage_5572491 = __tmp__1;
                    };
                    _gotoNext = 5572806i32;
                } else if (__value__ == (5572806i32)) {
                    if (_i_5572488 < (_usages_5571719.length)) {
                        _gotoNext = 5572522i32;
                    } else {
                        _gotoNext = 5572076i32;
                    };
                } else if (__value__ == (5572813i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
