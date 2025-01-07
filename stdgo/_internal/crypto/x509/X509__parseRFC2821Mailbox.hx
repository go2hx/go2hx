package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_5605496:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5608644:Bool = false;
        var _twoDots_5608217:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5607162:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5606125:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5605465i32;
                    } else {
                        _gotoNext = 5605496i32;
                    };
                } else if (__value__ == (5605465i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605496i32;
                } else if (__value__ == (5605496i32)) {
                    _localPartBytes_5605496 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5605559i32;
                    } else {
                        _gotoNext = 5607063i32;
                    };
                } else if (__value__ == (5605559i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5606048i32;
                } else if (__value__ == (5606048i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5606064i32;
                } else if (__value__ == (5606064i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5606068i32;
                    } else {
                        _gotoNext = 5608408i32;
                    };
                } else if (__value__ == (5606068i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5606089i32;
                    } else {
                        _gotoNext = 5606125i32;
                    };
                } else if (__value__ == (5606089i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606125i32;
                } else if (__value__ == (5606125i32)) {
                    _c_5606125 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5606155i32;
                } else if (__value__ == (5606155i32)) {
                    if (_c_5606125 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5606167i32;
                    } else if (_c_5606125 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5606209i32;
                    } else if (((((((((_c_5606125 == ((11 : stdgo.GoUInt8)) || _c_5606125 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5606125 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5606125 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5606125 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5606125 : Bool) && (_c_5606125 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5606125 : Bool) && (_c_5606125 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5606125 : Bool) && (_c_5606125 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5606125 : Bool) && (_c_5606125 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5606532i32;
                    } else {
                        _gotoNext = 5607011i32;
                    };
                } else if (__value__ == (5606167i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5606064i32;
                } else if (__value__ == (5606209i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5606264i32;
                    } else {
                        _gotoNext = 5606303i32;
                    };
                } else if (__value__ == (5606264i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606303i32;
                } else if (__value__ == (5606303i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5606411i32;
                    } else {
                        _gotoNext = 5606493i32;
                    };
                } else if (__value__ == (5606411i32)) {
                    _localPartBytes_5605496 = (_localPartBytes_5605496.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5606064i32;
                } else if (__value__ == (5606493i32)) {
                    _gotoNext = 5606493i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5606064i32;
                } else if (__value__ == (5606532i32)) {
                    _localPartBytes_5605496 = (_localPartBytes_5605496.__append__(_c_5606125));
                    _gotoNext = 5606064i32;
                } else if (__value__ == (5607011i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606064i32;
                } else if (__value__ == (5607063i32)) {
                    _gotoNext = 5607063i32;
                    _gotoNext = 5607088i32;
                } else if (__value__ == (5607088i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5607100i32;
                } else if (__value__ == (5607100i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5607116i32;
                    } else {
                        _gotoNext = 5607973i32;
                    };
                } else if (__value__ == (5607116i32)) {
                    _c_5607162 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5607177i32;
                } else if (__value__ == (5607177i32)) {
                    if (_c_5607162 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5607189i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5607162 : Bool) && (_c_5607162 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5607162 : Bool) && (_c_5607162 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5607162 : Bool) && (_c_5607162 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5607162 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5607162 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5607162 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5607512i32;
                    } else {
                        _gotoNext = 5607933i32;
                    };
                } else if (__value__ == (5607189i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5607457i32;
                    } else {
                        _gotoNext = 5607496i32;
                    };
                } else if (__value__ == (5607457i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5607496i32;
                } else if (__value__ == (5607496i32)) {
                    _gotoNext = 5607512i32;
                } else if (__value__ == (5607512i32)) {
                    _localPartBytes_5605496 = (_localPartBytes_5605496.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5607100i32;
                } else if (__value__ == (5607933i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5607100i32;
                } else if (__value__ == (5607973i32)) {
                    if ((_localPartBytes_5605496.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608001i32;
                    } else {
                        _gotoNext = 5608217i32;
                    };
                } else if (__value__ == (5608001i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608217i32;
                } else if (__value__ == (5608217i32)) {
                    _twoDots_5608217 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5605496[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5605496[((_localPartBytes_5605496.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5605496, _twoDots_5608217) : Bool)) {
                        _gotoNext = 5608372i32;
                    } else {
                        _gotoNext = 5608408i32;
                    };
                } else if (__value__ == (5608372i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608408i32;
                } else if (__value__ == (5608408i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5608440i32;
                    } else {
                        _gotoNext = 5608470i32;
                    };
                } else if (__value__ == (5608440i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608470i32;
                } else if (__value__ == (5608470i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5608644 = __tmp__._1;
                        };
                        if (!_ok_5608644) {
                            _gotoNext = 5608681i32;
                        } else {
                            _gotoNext = 5608712i32;
                        };
                    };
                } else if (__value__ == (5608681i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5608712i32;
                } else if (__value__ == (5608712i32)) {
                    _mailbox._local = (_localPartBytes_5605496 : stdgo.GoString)?.__copy__();
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
