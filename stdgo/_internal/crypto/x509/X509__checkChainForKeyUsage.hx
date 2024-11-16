package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var nextCertBreak = false;
        var _i_5552863:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5552649:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5553417_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5553307:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5553304:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5553246:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5553092_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5552900:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usages_5552535:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5553408:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5553083:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5552535 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5552535, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5552627i32;
                    } else {
                        _gotoNext = 5552649i32;
                    };
                } else if (__value__ == (5552627i32)) {
                    return false;
                    _gotoNext = 5552649i32;
                } else if (__value__ == (5552649i32)) {
                    _usagesRemaining_5552649 = (_usages_5552535.length);
                    _gotoNext = 5552848i32;
                } else if (__value__ == (5552848i32)) {
                    _i_5552863 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5552859i32;
                } else if (__value__ == (5552859i32)) {
                    if (!nextCertBreak && ((_i_5552863 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5552896i32;
                    } else {
                        _gotoNext = 5553629i32;
                    };
                } else if (__value__ == (5552892i32)) {
                    _i_5552863--;
                    _gotoNext = 5552859i32;
                } else if (__value__ == (5552896i32)) {
                    _cert_5552900 = _chain[(_i_5552863 : stdgo.GoInt)];
                    if (((_cert_5552900.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5552900.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5552986i32;
                    } else {
                        _gotoNext = 5553076i32;
                    };
                } else if (__value__ == (5552986i32)) {
                    _i_5552863--;
                    _gotoNext = 5552859i32;
                } else if (__value__ == (5553076i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5552900.extKeyUsage.length)) {
                        _gotoNext = 5553234i32;
                    } else {
                        _gotoNext = 5553240i32;
                    };
                } else if (__value__ == (5553080i32)) {
                    _i_5553092_0++;
                    _gotoNext = 5553235i32;
                } else if (__value__ == (5553115i32)) {
                    _usage_5553083 = _cert_5552900.extKeyUsage[(_i_5553092_0 : stdgo.GoInt)];
                    if (_usage_5553083 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5553147i32;
                    } else {
                        _gotoNext = 5553080i32;
                    };
                } else if (__value__ == (5553147i32)) {
                    _i_5552863--;
                    _gotoNext = 5552859i32;
                } else if (__value__ == (5553234i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5552900.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5553092_0 = __tmp__0;
                        _usage_5553083 = __tmp__1;
                    };
                    _gotoNext = 5553235i32;
                } else if (__value__ == (5553235i32)) {
                    if (_i_5553092_0 < (_cert_5552900.extKeyUsage.length)) {
                        _gotoNext = 5553115i32;
                    } else {
                        _gotoNext = 5553240i32;
                    };
                } else if (__value__ == (5553240i32)) {
                    _invalidUsage_5553246 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5553278i32;
                } else if (__value__ == (5553278i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5552535.length)) {
                        _gotoNext = 5553621i32;
                    } else {
                        _gotoNext = 5552892i32;
                    };
                } else if (__value__ == (5553304i32)) {
                    _i_5553304++;
                    _gotoNext = 5553622i32;
                } else if (__value__ == (5553338i32)) {
                    _requestedUsage_5553307 = _usages_5552535[(_i_5553304 : stdgo.GoInt)];
                    if (_requestedUsage_5553307 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5553377i32;
                    } else {
                        _gotoNext = 5553401i32;
                    };
                } else if (__value__ == (5553377i32)) {
                    _i_5553304++;
                    _gotoNext = 5553622i32;
                } else if (__value__ == (5553401i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5552900.extKeyUsage.length)) {
                        _gotoNext = 5553516i32;
                    } else {
                        _gotoNext = 5553523i32;
                    };
                } else if (__value__ == (5553405i32)) {
                    _i_5553417_0++;
                    _gotoNext = 5553517i32;
                } else if (__value__ == (5553440i32)) {
                    _usage_5553408 = _cert_5552900.extKeyUsage[(_i_5553417_0 : stdgo.GoInt)];
                    if (_requestedUsage_5553307 == (_usage_5553408)) {
                        _gotoNext = 5553473i32;
                    } else {
                        _gotoNext = 5553405i32;
                    };
                } else if (__value__ == (5553473i32)) {
                    _i_5553304++;
                    _gotoNext = 5553622i32;
                } else if (__value__ == (5553516i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5552900.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5553417_0 = __tmp__0;
                        _usage_5553408 = __tmp__1;
                    };
                    _gotoNext = 5553517i32;
                } else if (__value__ == (5553517i32)) {
                    if (_i_5553417_0 < (_cert_5552900.extKeyUsage.length)) {
                        _gotoNext = 5553440i32;
                    } else {
                        _gotoNext = 5553523i32;
                    };
                } else if (__value__ == (5553523i32)) {
                    _usages_5552535[(_i_5553304 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5552649--;
                    if (_usagesRemaining_5552649 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5553596i32;
                    } else {
                        _gotoNext = 5553304i32;
                    };
                } else if (__value__ == (5553596i32)) {
                    return false;
                    _gotoNext = 5553304i32;
                } else if (__value__ == (5553621i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5552535[(0i32 : stdgo.GoInt)];
                        _i_5553304 = __tmp__0;
                        _requestedUsage_5553307 = __tmp__1;
                    };
                    _gotoNext = 5553622i32;
                } else if (__value__ == (5553622i32)) {
                    if (_i_5553304 < (_usages_5552535.length)) {
                        _gotoNext = 5553338i32;
                    } else {
                        _gotoNext = 5552892i32;
                    };
                } else if (__value__ == (5553629i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
