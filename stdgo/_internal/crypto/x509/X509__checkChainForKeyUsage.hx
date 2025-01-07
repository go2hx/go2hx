package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _i_5633230_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5633117:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5632896:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5632905_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5632713:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5632676:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5632348:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _requestedUsage_5633120:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5633221:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5633059:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usagesRemaining_5632462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5632348 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5632348.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5632440i32;
                    } else {
                        _gotoNext = 5632462i32;
                    };
                } else if (__value__ == (5632440i32)) {
                    return false;
                    _gotoNext = 5632462i32;
                } else if (__value__ == (5632462i32)) {
                    _usagesRemaining_5632462 = (_usages_5632348.length);
                    _gotoNext = 5632661i32;
                } else if (__value__ == (5632661i32)) {
                    _i_5632676 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5632672i32;
                } else if (__value__ == (5632672i32)) {
                    if (!nextCertBreak && ((_i_5632676 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5632709i32;
                    } else {
                        _gotoNext = 5633442i32;
                    };
                } else if (__value__ == (5632705i32)) {
                    _i_5632676--;
                    _gotoNext = 5632672i32;
                } else if (__value__ == (5632709i32)) {
                    _cert_5632713 = _chain[(_i_5632676 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5632713 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5632799i32;
                    } else {
                        _gotoNext = 5632889i32;
                    };
                } else if (__value__ == (5632799i32)) {
                    _i_5632676--;
                    _gotoNext = 5632672i32;
                } else if (__value__ == (5632889i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5633047i32;
                    } else {
                        _gotoNext = 5633053i32;
                    };
                } else if (__value__ == (5632893i32)) {
                    _i_5632905_0++;
                    _gotoNext = 5633048i32;
                } else if (__value__ == (5632928i32)) {
                    _usage_5632896 = (@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage[(_i_5632905_0 : stdgo.GoInt)];
                    if (_usage_5632896 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5632960i32;
                    } else {
                        _gotoNext = 5632893i32;
                    };
                } else if (__value__ == (5632960i32)) {
                    _i_5632676--;
                    _gotoNext = 5632672i32;
                } else if (__value__ == (5633047i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5632905_0 = __tmp__0;
                        _usage_5632896 = __tmp__1;
                    };
                    _gotoNext = 5633048i32;
                } else if (__value__ == (5633048i32)) {
                    if (_i_5632905_0 < ((@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5632928i32;
                    } else {
                        _gotoNext = 5633053i32;
                    };
                } else if (__value__ == (5633053i32)) {
                    _invalidUsage_5633059 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5633091i32;
                } else if (__value__ == (5633091i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5632348.length)) {
                        _gotoNext = 5633434i32;
                    } else {
                        _gotoNext = 5632705i32;
                    };
                } else if (__value__ == (5633117i32)) {
                    _i_5633117++;
                    _gotoNext = 5633435i32;
                } else if (__value__ == (5633151i32)) {
                    _requestedUsage_5633120 = _usages_5632348[(_i_5633117 : stdgo.GoInt)];
                    if (_requestedUsage_5633120 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5633190i32;
                    } else {
                        _gotoNext = 5633214i32;
                    };
                } else if (__value__ == (5633190i32)) {
                    _i_5633117++;
                    _gotoNext = 5633435i32;
                } else if (__value__ == (5633214i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5633329i32;
                    } else {
                        _gotoNext = 5633336i32;
                    };
                } else if (__value__ == (5633218i32)) {
                    _i_5633230_0++;
                    _gotoNext = 5633330i32;
                } else if (__value__ == (5633253i32)) {
                    _usage_5633221 = (@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage[(_i_5633230_0 : stdgo.GoInt)];
                    if (_requestedUsage_5633120 == (_usage_5633221)) {
                        _gotoNext = 5633286i32;
                    } else {
                        _gotoNext = 5633218i32;
                    };
                } else if (__value__ == (5633286i32)) {
                    _i_5633117++;
                    _gotoNext = 5633435i32;
                } else if (__value__ == (5633329i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5633230_0 = __tmp__0;
                        _usage_5633221 = __tmp__1;
                    };
                    _gotoNext = 5633330i32;
                } else if (__value__ == (5633330i32)) {
                    if (_i_5633230_0 < ((@:checkr _cert_5632713 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5633253i32;
                    } else {
                        _gotoNext = 5633336i32;
                    };
                } else if (__value__ == (5633336i32)) {
                    _usages_5632348[(_i_5633117 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5632462--;
                    if (_usagesRemaining_5632462 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5633409i32;
                    } else {
                        _gotoNext = 5633117i32;
                    };
                } else if (__value__ == (5633409i32)) {
                    return false;
                    _gotoNext = 5633117i32;
                } else if (__value__ == (5633434i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5632348[(0i32 : stdgo.GoInt)];
                        _i_5633117 = __tmp__0;
                        _requestedUsage_5633120 = __tmp__1;
                    };
                    _gotoNext = 5633435i32;
                } else if (__value__ == (5633435i32)) {
                    if (_i_5633117 < (_usages_5632348.length)) {
                        _gotoNext = 5633151i32;
                    } else {
                        _gotoNext = 5632705i32;
                    };
                } else if (__value__ == (5633442i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
