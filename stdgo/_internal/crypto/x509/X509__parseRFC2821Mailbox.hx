package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_5603039:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5606187:Bool = false;
        var _twoDots_5605760:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5604705:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5603668:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5603008i32;
                    } else {
                        _gotoNext = 5603039i32;
                    };
                } else if (__value__ == (5603008i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603039i32;
                } else if (__value__ == (5603039i32)) {
                    _localPartBytes_5603039 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5603102i32;
                    } else {
                        _gotoNext = 5604606i32;
                    };
                } else if (__value__ == (5603102i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5603591i32;
                } else if (__value__ == (5603591i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5603607i32;
                } else if (__value__ == (5603607i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5603611i32;
                    } else {
                        _gotoNext = 5605951i32;
                    };
                } else if (__value__ == (5603611i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5603632i32;
                    } else {
                        _gotoNext = 5603668i32;
                    };
                } else if (__value__ == (5603632i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603668i32;
                } else if (__value__ == (5603668i32)) {
                    _c_5603668 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5603698i32;
                } else if (__value__ == (5603698i32)) {
                    if (_c_5603668 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5603710i32;
                    } else if (_c_5603668 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5603752i32;
                    } else if (((((((((_c_5603668 == ((11 : stdgo.GoUInt8)) || _c_5603668 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5603668 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5603668 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5603668 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5603668 : Bool) && (_c_5603668 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5603668 : Bool) && (_c_5603668 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5603668 : Bool) && (_c_5603668 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5603668 : Bool) && (_c_5603668 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5604075i32;
                    } else {
                        _gotoNext = 5604554i32;
                    };
                } else if (__value__ == (5603710i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5603607i32;
                } else if (__value__ == (5603752i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5603807i32;
                    } else {
                        _gotoNext = 5603846i32;
                    };
                } else if (__value__ == (5603807i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603846i32;
                } else if (__value__ == (5603846i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5603954i32;
                    } else {
                        _gotoNext = 5604036i32;
                    };
                } else if (__value__ == (5603954i32)) {
                    _localPartBytes_5603039 = (_localPartBytes_5603039.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5603607i32;
                } else if (__value__ == (5604036i32)) {
                    _gotoNext = 5604036i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5603607i32;
                } else if (__value__ == (5604075i32)) {
                    _localPartBytes_5603039 = (_localPartBytes_5603039.__append__(_c_5603668));
                    _gotoNext = 5603607i32;
                } else if (__value__ == (5604554i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603607i32;
                } else if (__value__ == (5604606i32)) {
                    _gotoNext = 5604606i32;
                    _gotoNext = 5604631i32;
                } else if (__value__ == (5604631i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5604643i32;
                } else if (__value__ == (5604643i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5604659i32;
                    } else {
                        _gotoNext = 5605516i32;
                    };
                } else if (__value__ == (5604659i32)) {
                    _c_5604705 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5604720i32;
                } else if (__value__ == (5604720i32)) {
                    if (_c_5604705 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5604732i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5604705 : Bool) && (_c_5604705 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5604705 : Bool) && (_c_5604705 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5604705 : Bool) && (_c_5604705 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5604705 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5604705 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5604705 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5605055i32;
                    } else {
                        _gotoNext = 5605476i32;
                    };
                } else if (__value__ == (5604732i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5605000i32;
                    } else {
                        _gotoNext = 5605039i32;
                    };
                } else if (__value__ == (5605000i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605039i32;
                } else if (__value__ == (5605039i32)) {
                    _gotoNext = 5605055i32;
                } else if (__value__ == (5605055i32)) {
                    _localPartBytes_5603039 = (_localPartBytes_5603039.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5604643i32;
                } else if (__value__ == (5605476i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5604643i32;
                } else if (__value__ == (5605516i32)) {
                    if ((_localPartBytes_5603039.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5605544i32;
                    } else {
                        _gotoNext = 5605760i32;
                    };
                } else if (__value__ == (5605544i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605760i32;
                } else if (__value__ == (5605760i32)) {
                    _twoDots_5605760 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5603039[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5603039[((_localPartBytes_5603039.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5603039, _twoDots_5605760) : Bool)) {
                        _gotoNext = 5605915i32;
                    } else {
                        _gotoNext = 5605951i32;
                    };
                } else if (__value__ == (5605915i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605951i32;
                } else if (__value__ == (5605951i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5605983i32;
                    } else {
                        _gotoNext = 5606013i32;
                    };
                } else if (__value__ == (5605983i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606013i32;
                } else if (__value__ == (5606013i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5606187 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5606187) {
                            _gotoNext = 5606224i32;
                        } else {
                            _gotoNext = 5606255i32;
                        };
                    };
                } else if (__value__ == (5606224i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606255i32;
                } else if (__value__ == (5606255i32)) {
                    _mailbox._local = (_localPartBytes_5603039 : stdgo.GoString)?.__copy__();
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
