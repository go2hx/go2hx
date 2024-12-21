package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _cert_5622946:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _usagesRemaining_5622695:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5622581:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5623454:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5623292:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5623138_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _i_5622909:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5623463_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5623353:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5623350:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5623129:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5622581 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5622581.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5622673i32;
                    } else {
                        _gotoNext = 5622695i32;
                    };
                } else if (__value__ == (5622673i32)) {
                    return false;
                    _gotoNext = 5622695i32;
                } else if (__value__ == (5622695i32)) {
                    _usagesRemaining_5622695 = (_usages_5622581.length);
                    _gotoNext = 5622894i32;
                } else if (__value__ == (5622894i32)) {
                    _i_5622909 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5622905i32;
                } else if (__value__ == (5622905i32)) {
                    if (!nextCertBreak && ((_i_5622909 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5622942i32;
                    } else {
                        _gotoNext = 5623675i32;
                    };
                } else if (__value__ == (5622938i32)) {
                    _i_5622909--;
                    _gotoNext = 5622905i32;
                } else if (__value__ == (5622942i32)) {
                    _cert_5622946 = _chain[(_i_5622909 : stdgo.GoInt)];
                    if (((_cert_5622946.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5622946.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5623032i32;
                    } else {
                        _gotoNext = 5623122i32;
                    };
                } else if (__value__ == (5623032i32)) {
                    _i_5622909--;
                    _gotoNext = 5622905i32;
                } else if (__value__ == (5623122i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5622946.extKeyUsage.length)) {
                        _gotoNext = 5623280i32;
                    } else {
                        _gotoNext = 5623286i32;
                    };
                } else if (__value__ == (5623126i32)) {
                    _i_5623138_0++;
                    _gotoNext = 5623281i32;
                } else if (__value__ == (5623161i32)) {
                    _usage_5623129 = _cert_5622946.extKeyUsage[(_i_5623138_0 : stdgo.GoInt)];
                    if (_usage_5623129 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5623193i32;
                    } else {
                        _gotoNext = 5623126i32;
                    };
                } else if (__value__ == (5623193i32)) {
                    _i_5622909--;
                    _gotoNext = 5622905i32;
                } else if (__value__ == (5623280i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5622946.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5623138_0 = __tmp__0;
                        _usage_5623129 = __tmp__1;
                    };
                    _gotoNext = 5623281i32;
                } else if (__value__ == (5623281i32)) {
                    if (_i_5623138_0 < (_cert_5622946.extKeyUsage.length)) {
                        _gotoNext = 5623161i32;
                    } else {
                        _gotoNext = 5623286i32;
                    };
                } else if (__value__ == (5623286i32)) {
                    _invalidUsage_5623292 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5623324i32;
                } else if (__value__ == (5623324i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5622581.length)) {
                        _gotoNext = 5623667i32;
                    } else {
                        _gotoNext = 5622938i32;
                    };
                } else if (__value__ == (5623350i32)) {
                    _i_5623350++;
                    _gotoNext = 5623668i32;
                } else if (__value__ == (5623384i32)) {
                    _requestedUsage_5623353 = _usages_5622581[(_i_5623350 : stdgo.GoInt)];
                    if (_requestedUsage_5623353 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5623423i32;
                    } else {
                        _gotoNext = 5623447i32;
                    };
                } else if (__value__ == (5623423i32)) {
                    _i_5623350++;
                    _gotoNext = 5623668i32;
                } else if (__value__ == (5623447i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5622946.extKeyUsage.length)) {
                        _gotoNext = 5623562i32;
                    } else {
                        _gotoNext = 5623569i32;
                    };
                } else if (__value__ == (5623451i32)) {
                    _i_5623463_0++;
                    _gotoNext = 5623563i32;
                } else if (__value__ == (5623486i32)) {
                    _usage_5623454 = _cert_5622946.extKeyUsage[(_i_5623463_0 : stdgo.GoInt)];
                    if (_requestedUsage_5623353 == (_usage_5623454)) {
                        _gotoNext = 5623519i32;
                    } else {
                        _gotoNext = 5623451i32;
                    };
                } else if (__value__ == (5623519i32)) {
                    _i_5623350++;
                    _gotoNext = 5623668i32;
                } else if (__value__ == (5623562i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5622946.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5623463_0 = __tmp__0;
                        _usage_5623454 = __tmp__1;
                    };
                    _gotoNext = 5623563i32;
                } else if (__value__ == (5623563i32)) {
                    if (_i_5623463_0 < (_cert_5622946.extKeyUsage.length)) {
                        _gotoNext = 5623486i32;
                    } else {
                        _gotoNext = 5623569i32;
                    };
                } else if (__value__ == (5623569i32)) {
                    _usages_5622581[(_i_5623350 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5622695--;
                    if (_usagesRemaining_5622695 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5623642i32;
                    } else {
                        _gotoNext = 5623350i32;
                    };
                } else if (__value__ == (5623642i32)) {
                    return false;
                    _gotoNext = 5623350i32;
                } else if (__value__ == (5623667i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5622581[(0i32 : stdgo.GoInt)];
                        _i_5623350 = __tmp__0;
                        _requestedUsage_5623353 = __tmp__1;
                    };
                    _gotoNext = 5623668i32;
                } else if (__value__ == (5623668i32)) {
                    if (_i_5623350 < (_usages_5622581.length)) {
                        _gotoNext = 5623384i32;
                    } else {
                        _gotoNext = 5622938i32;
                    };
                } else if (__value__ == (5623675i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
