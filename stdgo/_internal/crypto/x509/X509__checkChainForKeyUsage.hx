package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _i_5623512_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5623320:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _i_5623283:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5623069:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5623837_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5623724:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_5623503:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _requestedUsage_5623727:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5623666:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var nextCertBreak = false;
        var _usages_5622955:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5623828:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5622955 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5622955.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5623047i32;
                    } else {
                        _gotoNext = 5623069i32;
                    };
                } else if (__value__ == (5623047i32)) {
                    return false;
                    _gotoNext = 5623069i32;
                } else if (__value__ == (5623069i32)) {
                    _usagesRemaining_5623069 = (_usages_5622955.length);
                    _gotoNext = 5623268i32;
                } else if (__value__ == (5623268i32)) {
                    _i_5623283 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5623279i32;
                } else if (__value__ == (5623279i32)) {
                    if (!nextCertBreak && ((_i_5623283 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5623316i32;
                    } else {
                        _gotoNext = 5624049i32;
                    };
                } else if (__value__ == (5623312i32)) {
                    _i_5623283--;
                    _gotoNext = 5623279i32;
                } else if (__value__ == (5623316i32)) {
                    _cert_5623320 = _chain[(_i_5623283 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5623320 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5623406i32;
                    } else {
                        _gotoNext = 5623496i32;
                    };
                } else if (__value__ == (5623406i32)) {
                    _i_5623283--;
                    _gotoNext = 5623279i32;
                } else if (__value__ == (5623496i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5623654i32;
                    } else {
                        _gotoNext = 5623660i32;
                    };
                } else if (__value__ == (5623500i32)) {
                    _i_5623512_0++;
                    _gotoNext = 5623655i32;
                } else if (__value__ == (5623535i32)) {
                    _usage_5623503 = (@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage[(_i_5623512_0 : stdgo.GoInt)];
                    if (_usage_5623503 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5623567i32;
                    } else {
                        _gotoNext = 5623500i32;
                    };
                } else if (__value__ == (5623567i32)) {
                    _i_5623283--;
                    _gotoNext = 5623279i32;
                } else if (__value__ == (5623654i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5623512_0 = __tmp__0;
                        _usage_5623503 = __tmp__1;
                    };
                    _gotoNext = 5623655i32;
                } else if (__value__ == (5623655i32)) {
                    if (_i_5623512_0 < ((@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5623535i32;
                    } else {
                        _gotoNext = 5623660i32;
                    };
                } else if (__value__ == (5623660i32)) {
                    _invalidUsage_5623666 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5623698i32;
                } else if (__value__ == (5623698i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5622955.length)) {
                        _gotoNext = 5624041i32;
                    } else {
                        _gotoNext = 5623312i32;
                    };
                } else if (__value__ == (5623724i32)) {
                    _i_5623724++;
                    _gotoNext = 5624042i32;
                } else if (__value__ == (5623758i32)) {
                    _requestedUsage_5623727 = _usages_5622955[(_i_5623724 : stdgo.GoInt)];
                    if (_requestedUsage_5623727 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5623797i32;
                    } else {
                        _gotoNext = 5623821i32;
                    };
                } else if (__value__ == (5623797i32)) {
                    _i_5623724++;
                    _gotoNext = 5624042i32;
                } else if (__value__ == (5623821i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5623936i32;
                    } else {
                        _gotoNext = 5623943i32;
                    };
                } else if (__value__ == (5623825i32)) {
                    _i_5623837_0++;
                    _gotoNext = 5623937i32;
                } else if (__value__ == (5623860i32)) {
                    _usage_5623828 = (@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage[(_i_5623837_0 : stdgo.GoInt)];
                    if (_requestedUsage_5623727 == (_usage_5623828)) {
                        _gotoNext = 5623893i32;
                    } else {
                        _gotoNext = 5623825i32;
                    };
                } else if (__value__ == (5623893i32)) {
                    _i_5623724++;
                    _gotoNext = 5624042i32;
                } else if (__value__ == (5623936i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5623837_0 = __tmp__0;
                        _usage_5623828 = __tmp__1;
                    };
                    _gotoNext = 5623937i32;
                } else if (__value__ == (5623937i32)) {
                    if (_i_5623837_0 < ((@:checkr _cert_5623320 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5623860i32;
                    } else {
                        _gotoNext = 5623943i32;
                    };
                } else if (__value__ == (5623943i32)) {
                    _usages_5622955[(_i_5623724 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5623069--;
                    if (_usagesRemaining_5623069 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5624016i32;
                    } else {
                        _gotoNext = 5623724i32;
                    };
                } else if (__value__ == (5624016i32)) {
                    return false;
                    _gotoNext = 5623724i32;
                } else if (__value__ == (5624041i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5622955[(0i32 : stdgo.GoInt)];
                        _i_5623724 = __tmp__0;
                        _requestedUsage_5623727 = __tmp__1;
                    };
                    _gotoNext = 5624042i32;
                } else if (__value__ == (5624042i32)) {
                    if (_i_5623724 < (_usages_5622955.length)) {
                        _gotoNext = 5623758i32;
                    } else {
                        _gotoNext = 5623312i32;
                    };
                } else if (__value__ == (5624049i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
