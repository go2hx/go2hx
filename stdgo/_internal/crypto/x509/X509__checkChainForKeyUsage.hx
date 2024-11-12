package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var nextCertBreak = false;
        var _usage_5633878:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5633887_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5633777:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5633553:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5633562_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5633005:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _i_5633774:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5633716:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _cert_5633370:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _i_5633333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5633119:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5633005 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5633005, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5633097i32;
                    } else {
                        _gotoNext = 5633119i32;
                    };
                } else if (__value__ == (5633097i32)) {
                    return false;
                    _gotoNext = 5633119i32;
                } else if (__value__ == (5633119i32)) {
                    _usagesRemaining_5633119 = (_usages_5633005.length);
                    _gotoNext = 5633318i32;
                } else if (__value__ == (5633318i32)) {
                    _i_5633333 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5633329i32;
                } else if (__value__ == (5633329i32)) {
                    if (!nextCertBreak && ((_i_5633333 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5633366i32;
                    } else {
                        _gotoNext = 5634099i32;
                    };
                } else if (__value__ == (5633362i32)) {
                    _i_5633333--;
                    _gotoNext = 5633329i32;
                } else if (__value__ == (5633366i32)) {
                    _cert_5633370 = _chain[(_i_5633333 : stdgo.GoInt)];
                    if (((_cert_5633370.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5633370.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5633456i32;
                    } else {
                        _gotoNext = 5633546i32;
                    };
                } else if (__value__ == (5633456i32)) {
                    _i_5633333--;
                    _gotoNext = 5633329i32;
                } else if (__value__ == (5633546i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5633370.extKeyUsage.length)) {
                        _gotoNext = 5633704i32;
                    } else {
                        _gotoNext = 5633710i32;
                    };
                } else if (__value__ == (5633550i32)) {
                    _i_5633562_0++;
                    _gotoNext = 5633705i32;
                } else if (__value__ == (5633585i32)) {
                    _usage_5633553 = _cert_5633370.extKeyUsage[(_i_5633562_0 : stdgo.GoInt)];
                    if (_usage_5633553 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5633617i32;
                    } else {
                        _gotoNext = 5633550i32;
                    };
                } else if (__value__ == (5633617i32)) {
                    _i_5633333--;
                    _gotoNext = 5633329i32;
                } else if (__value__ == (5633704i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5633370.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5633562_0 = __tmp__0;
                        _usage_5633553 = __tmp__1;
                    };
                    _gotoNext = 5633705i32;
                } else if (__value__ == (5633705i32)) {
                    if (_i_5633562_0 < (_cert_5633370.extKeyUsage.length)) {
                        _gotoNext = 5633585i32;
                    } else {
                        _gotoNext = 5633710i32;
                    };
                } else if (__value__ == (5633710i32)) {
                    _invalidUsage_5633716 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5633748i32;
                } else if (__value__ == (5633748i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5633005.length)) {
                        _gotoNext = 5634091i32;
                    } else {
                        _gotoNext = 5633362i32;
                    };
                } else if (__value__ == (5633774i32)) {
                    _i_5633774++;
                    _gotoNext = 5634092i32;
                } else if (__value__ == (5633808i32)) {
                    _requestedUsage_5633777 = _usages_5633005[(_i_5633774 : stdgo.GoInt)];
                    if (_requestedUsage_5633777 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5633847i32;
                    } else {
                        _gotoNext = 5633871i32;
                    };
                } else if (__value__ == (5633847i32)) {
                    _i_5633774++;
                    _gotoNext = 5634092i32;
                } else if (__value__ == (5633871i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5633370.extKeyUsage.length)) {
                        _gotoNext = 5633986i32;
                    } else {
                        _gotoNext = 5633993i32;
                    };
                } else if (__value__ == (5633875i32)) {
                    _i_5633887_0++;
                    _gotoNext = 5633987i32;
                } else if (__value__ == (5633910i32)) {
                    _usage_5633878 = _cert_5633370.extKeyUsage[(_i_5633887_0 : stdgo.GoInt)];
                    if (_requestedUsage_5633777 == (_usage_5633878)) {
                        _gotoNext = 5633943i32;
                    } else {
                        _gotoNext = 5633875i32;
                    };
                } else if (__value__ == (5633943i32)) {
                    _i_5633774++;
                    _gotoNext = 5634092i32;
                } else if (__value__ == (5633986i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5633370.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5633887_0 = __tmp__0;
                        _usage_5633878 = __tmp__1;
                    };
                    _gotoNext = 5633987i32;
                } else if (__value__ == (5633987i32)) {
                    if (_i_5633887_0 < (_cert_5633370.extKeyUsage.length)) {
                        _gotoNext = 5633910i32;
                    } else {
                        _gotoNext = 5633993i32;
                    };
                } else if (__value__ == (5633993i32)) {
                    _usages_5633005[(_i_5633774 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5633119--;
                    if (_usagesRemaining_5633119 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5634066i32;
                    } else {
                        _gotoNext = 5633774i32;
                    };
                } else if (__value__ == (5634066i32)) {
                    return false;
                    _gotoNext = 5633774i32;
                } else if (__value__ == (5634091i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5633005[(0i32 : stdgo.GoInt)];
                        _i_5633774 = __tmp__0;
                        _requestedUsage_5633777 = __tmp__1;
                    };
                    _gotoNext = 5634092i32;
                } else if (__value__ == (5634092i32)) {
                    if (_i_5633774 < (_usages_5633005.length)) {
                        _gotoNext = 5633808i32;
                    } else {
                        _gotoNext = 5633362i32;
                    };
                } else if (__value__ == (5634099i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
