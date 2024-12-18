package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _c_5477775:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5476738:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5476109:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5479257:Bool = false;
        var _twoDots_5478830:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5476078i32;
                    } else {
                        _gotoNext = 5476109i32;
                    };
                } else if (__value__ == (5476078i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5476109i32;
                } else if (__value__ == (5476109i32)) {
                    _localPartBytes_5476109 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5476172i32;
                    } else {
                        _gotoNext = 5477676i32;
                    };
                } else if (__value__ == (5476172i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5476661i32;
                } else if (__value__ == (5476661i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5476677i32;
                } else if (__value__ == (5476677i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5476681i32;
                    } else {
                        _gotoNext = 5479021i32;
                    };
                } else if (__value__ == (5476681i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5476702i32;
                    } else {
                        _gotoNext = 5476738i32;
                    };
                } else if (__value__ == (5476702i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5476738i32;
                } else if (__value__ == (5476738i32)) {
                    _c_5476738 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5476768i32;
                } else if (__value__ == (5476768i32)) {
                    if (_c_5476738 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5476780i32;
                    } else if (_c_5476738 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5476822i32;
                    } else if (((((((((_c_5476738 == ((11 : stdgo.GoUInt8)) || _c_5476738 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5476738 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5476738 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5476738 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5476738 : Bool) && (_c_5476738 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5476738 : Bool) && (_c_5476738 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5476738 : Bool) && (_c_5476738 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5476738 : Bool) && (_c_5476738 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5477145i32;
                    } else {
                        _gotoNext = 5477624i32;
                    };
                } else if (__value__ == (5476780i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5476677i32;
                } else if (__value__ == (5476822i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5476877i32;
                    } else {
                        _gotoNext = 5476916i32;
                    };
                } else if (__value__ == (5476877i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5476916i32;
                } else if (__value__ == (5476916i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5477024i32;
                    } else {
                        _gotoNext = 5477106i32;
                    };
                } else if (__value__ == (5477024i32)) {
                    _localPartBytes_5476109 = (_localPartBytes_5476109.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5479021i32;
                } else if (__value__ == (5477106i32)) {
                    _gotoNext = 5477106i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5479021i32;
                } else if (__value__ == (5477145i32)) {
                    _localPartBytes_5476109 = (_localPartBytes_5476109.__append__(_c_5476738));
                    _gotoNext = 5479021i32;
                } else if (__value__ == (5477624i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5479021i32;
                } else if (__value__ == (5477676i32)) {
                    _gotoNext = 5477676i32;
                    _gotoNext = 5477701i32;
                } else if (__value__ == (5477701i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5477713i32;
                } else if (__value__ == (5477713i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5477729i32;
                    } else {
                        _gotoNext = 5478586i32;
                    };
                } else if (__value__ == (5477729i32)) {
                    _c_5477775 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5477790i32;
                } else if (__value__ == (5477790i32)) {
                    if (_c_5477775 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5477802i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5477775 : Bool) && (_c_5477775 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5477775 : Bool) && (_c_5477775 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5477775 : Bool) && (_c_5477775 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5477775 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5477775 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5477775 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5478125i32;
                    } else {
                        _gotoNext = 5478546i32;
                    };
                } else if (__value__ == (5477802i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5478070i32;
                    } else {
                        _gotoNext = 5478109i32;
                    };
                } else if (__value__ == (5478070i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5478109i32;
                } else if (__value__ == (5478109i32)) {
                    _gotoNext = 5478125i32;
                } else if (__value__ == (5478125i32)) {
                    _localPartBytes_5476109 = (_localPartBytes_5476109.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5478586i32;
                } else if (__value__ == (5478546i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5477713i32;
                } else if (__value__ == (5478586i32)) {
                    if ((_localPartBytes_5476109.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5478614i32;
                    } else {
                        _gotoNext = 5478830i32;
                    };
                } else if (__value__ == (5478614i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5478830i32;
                } else if (__value__ == (5478830i32)) {
                    _twoDots_5478830 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5476109[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5476109[((_localPartBytes_5476109.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5476109, _twoDots_5478830) : Bool)) {
                        _gotoNext = 5478985i32;
                    } else {
                        _gotoNext = 5479021i32;
                    };
                } else if (__value__ == (5478985i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5479021i32;
                } else if (__value__ == (5479021i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5479053i32;
                    } else {
                        _gotoNext = 5479083i32;
                    };
                } else if (__value__ == (5479053i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5479083i32;
                } else if (__value__ == (5479083i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5479257 = __tmp__._1;
                        };
                        if (!_ok_5479257) {
                            _gotoNext = 5479294i32;
                        } else {
                            _gotoNext = 5479325i32;
                        };
                    };
                } else if (__value__ == (5479294i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5479325i32;
                } else if (__value__ == (5479325i32)) {
                    _mailbox._local = (_localPartBytes_5476109 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
