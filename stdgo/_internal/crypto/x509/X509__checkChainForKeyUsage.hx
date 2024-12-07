package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usage_5630039:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5629938:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5629531:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _invalidUsage_5629877:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5629714:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5629723_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5629494:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5629280:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5629166:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5630048_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5629935:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5629166 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5629166, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5629258i32;
                    } else {
                        _gotoNext = 5629280i32;
                    };
                } else if (__value__ == (5629258i32)) {
                    return false;
                    _gotoNext = 5629280i32;
                } else if (__value__ == (5629280i32)) {
                    _usagesRemaining_5629280 = (_usages_5629166.length);
                    _gotoNext = 5629479i32;
                } else if (__value__ == (5629479i32)) {
                    _i_5629494 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5629490i32;
                } else if (__value__ == (5629490i32)) {
                    if (!nextCertBreak && ((_i_5629494 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5629527i32;
                    } else {
                        _gotoNext = 5630260i32;
                    };
                } else if (__value__ == (5629523i32)) {
                    _i_5629494--;
                    _gotoNext = 5629490i32;
                } else if (__value__ == (5629527i32)) {
                    _cert_5629531 = _chain[(_i_5629494 : stdgo.GoInt)];
                    if (((_cert_5629531.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5629531.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5629617i32;
                    } else {
                        _gotoNext = 5629707i32;
                    };
                } else if (__value__ == (5629617i32)) {
                    _i_5629494--;
                    _gotoNext = 5629490i32;
                } else if (__value__ == (5629707i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5629531.extKeyUsage.length)) {
                        _gotoNext = 5629865i32;
                    } else {
                        _gotoNext = 5629871i32;
                    };
                } else if (__value__ == (5629711i32)) {
                    _i_5629723_0++;
                    _gotoNext = 5629866i32;
                } else if (__value__ == (5629746i32)) {
                    _usage_5629714 = _cert_5629531.extKeyUsage[(_i_5629723_0 : stdgo.GoInt)];
                    if (_usage_5629714 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5629778i32;
                    } else {
                        _gotoNext = 5629711i32;
                    };
                } else if (__value__ == (5629778i32)) {
                    _i_5629494--;
                    _gotoNext = 5629490i32;
                } else if (__value__ == (5629865i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5629531.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5629723_0 = __tmp__0;
                        _usage_5629714 = __tmp__1;
                    };
                    _gotoNext = 5629866i32;
                } else if (__value__ == (5629866i32)) {
                    if (_i_5629723_0 < (_cert_5629531.extKeyUsage.length)) {
                        _gotoNext = 5629746i32;
                    } else {
                        _gotoNext = 5629871i32;
                    };
                } else if (__value__ == (5629871i32)) {
                    _invalidUsage_5629877 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5629909i32;
                } else if (__value__ == (5629909i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5629166.length)) {
                        _gotoNext = 5630252i32;
                    } else {
                        _gotoNext = 5629523i32;
                    };
                } else if (__value__ == (5629935i32)) {
                    _i_5629935++;
                    _gotoNext = 5630253i32;
                } else if (__value__ == (5629969i32)) {
                    _requestedUsage_5629938 = _usages_5629166[(_i_5629935 : stdgo.GoInt)];
                    if (_requestedUsage_5629938 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5630008i32;
                    } else {
                        _gotoNext = 5630032i32;
                    };
                } else if (__value__ == (5630008i32)) {
                    _i_5629935++;
                    _gotoNext = 5630253i32;
                } else if (__value__ == (5630032i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5629531.extKeyUsage.length)) {
                        _gotoNext = 5630147i32;
                    } else {
                        _gotoNext = 5630154i32;
                    };
                } else if (__value__ == (5630036i32)) {
                    _i_5630048_0++;
                    _gotoNext = 5630148i32;
                } else if (__value__ == (5630071i32)) {
                    _usage_5630039 = _cert_5629531.extKeyUsage[(_i_5630048_0 : stdgo.GoInt)];
                    if (_requestedUsage_5629938 == (_usage_5630039)) {
                        _gotoNext = 5630104i32;
                    } else {
                        _gotoNext = 5630036i32;
                    };
                } else if (__value__ == (5630104i32)) {
                    _i_5629935++;
                    _gotoNext = 5630253i32;
                } else if (__value__ == (5630147i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5629531.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5630048_0 = __tmp__0;
                        _usage_5630039 = __tmp__1;
                    };
                    _gotoNext = 5630148i32;
                } else if (__value__ == (5630148i32)) {
                    if (_i_5630048_0 < (_cert_5629531.extKeyUsage.length)) {
                        _gotoNext = 5630071i32;
                    } else {
                        _gotoNext = 5630154i32;
                    };
                } else if (__value__ == (5630154i32)) {
                    _usages_5629166[(_i_5629935 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5629280--;
                    if (_usagesRemaining_5629280 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5630227i32;
                    } else {
                        _gotoNext = 5629935i32;
                    };
                } else if (__value__ == (5630227i32)) {
                    return false;
                    _gotoNext = 5629935i32;
                } else if (__value__ == (5630252i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5629166[(0i32 : stdgo.GoInt)];
                        _i_5629935 = __tmp__0;
                        _requestedUsage_5629938 = __tmp__1;
                    };
                    _gotoNext = 5630253i32;
                } else if (__value__ == (5630253i32)) {
                    if (_i_5629935 < (_usages_5629166.length)) {
                        _gotoNext = 5629969i32;
                    } else {
                        _gotoNext = 5629523i32;
                    };
                } else if (__value__ == (5630260i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
