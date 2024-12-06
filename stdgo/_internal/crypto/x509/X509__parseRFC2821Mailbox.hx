package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _localPartBytes_5525424:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5528572:Bool = false;
        var _twoDots_5528145:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5527090:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5526053:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5525393i32;
                    } else {
                        _gotoNext = 5525424i32;
                    };
                } else if (__value__ == (5525393i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5525424i32;
                } else if (__value__ == (5525424i32)) {
                    _localPartBytes_5525424 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5525487i32;
                    } else {
                        _gotoNext = 5526991i32;
                    };
                } else if (__value__ == (5525487i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5525976i32;
                } else if (__value__ == (5525976i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5525992i32;
                } else if (__value__ == (5525992i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5525996i32;
                    } else {
                        _gotoNext = 5528336i32;
                    };
                } else if (__value__ == (5525996i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5526017i32;
                    } else {
                        _gotoNext = 5526053i32;
                    };
                } else if (__value__ == (5526017i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5526053i32;
                } else if (__value__ == (5526053i32)) {
                    _c_5526053 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5526083i32;
                } else if (__value__ == (5526083i32)) {
                    if (_c_5526053 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5526095i32;
                    } else if (_c_5526053 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5526137i32;
                    } else if (((((((((_c_5526053 == ((11 : stdgo.GoUInt8)) || _c_5526053 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5526053 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5526053 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5526053 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5526053 : Bool) && (_c_5526053 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5526053 : Bool) && (_c_5526053 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5526053 : Bool) && (_c_5526053 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5526053 : Bool) && (_c_5526053 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5526460i32;
                    } else {
                        _gotoNext = 5526939i32;
                    };
                } else if (__value__ == (5526095i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5525992i32;
                } else if (__value__ == (5526137i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5526192i32;
                    } else {
                        _gotoNext = 5526231i32;
                    };
                } else if (__value__ == (5526192i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5526231i32;
                } else if (__value__ == (5526231i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5526339i32;
                    } else {
                        _gotoNext = 5526421i32;
                    };
                } else if (__value__ == (5526339i32)) {
                    _localPartBytes_5525424 = (_localPartBytes_5525424.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5528336i32;
                } else if (__value__ == (5526421i32)) {
                    _gotoNext = 5526421i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5528336i32;
                } else if (__value__ == (5526460i32)) {
                    _localPartBytes_5525424 = (_localPartBytes_5525424.__append__(_c_5526053));
                    _gotoNext = 5528336i32;
                } else if (__value__ == (5526939i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5528336i32;
                } else if (__value__ == (5526991i32)) {
                    _gotoNext = 5526991i32;
                    _gotoNext = 5527016i32;
                } else if (__value__ == (5527016i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5527028i32;
                } else if (__value__ == (5527028i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5527044i32;
                    } else {
                        _gotoNext = 5527901i32;
                    };
                } else if (__value__ == (5527044i32)) {
                    _c_5527090 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5527105i32;
                } else if (__value__ == (5527105i32)) {
                    if (_c_5527090 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5527117i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5527090 : Bool) && (_c_5527090 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5527090 : Bool) && (_c_5527090 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5527090 : Bool) && (_c_5527090 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5527090 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5527090 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5527090 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5527440i32;
                    } else {
                        _gotoNext = 5527861i32;
                    };
                } else if (__value__ == (5527117i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5527385i32;
                    } else {
                        _gotoNext = 5527424i32;
                    };
                } else if (__value__ == (5527385i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5527424i32;
                } else if (__value__ == (5527424i32)) {
                    _gotoNext = 5527440i32;
                } else if (__value__ == (5527440i32)) {
                    _localPartBytes_5525424 = (_localPartBytes_5525424.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5527901i32;
                } else if (__value__ == (5527861i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5527028i32;
                } else if (__value__ == (5527901i32)) {
                    if ((_localPartBytes_5525424.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5527929i32;
                    } else {
                        _gotoNext = 5528145i32;
                    };
                } else if (__value__ == (5527929i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5528145i32;
                } else if (__value__ == (5528145i32)) {
                    _twoDots_5528145 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5525424[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5525424[((_localPartBytes_5525424.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5525424, _twoDots_5528145) : Bool)) {
                        _gotoNext = 5528300i32;
                    } else {
                        _gotoNext = 5528336i32;
                    };
                } else if (__value__ == (5528300i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5528336i32;
                } else if (__value__ == (5528336i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5528368i32;
                    } else {
                        _gotoNext = 5528398i32;
                    };
                } else if (__value__ == (5528368i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5528398i32;
                } else if (__value__ == (5528398i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5528572 = __tmp__._1;
                        };
                        if (!_ok_5528572) {
                            _gotoNext = 5528609i32;
                        } else {
                            _gotoNext = 5528640i32;
                        };
                    };
                } else if (__value__ == (5528609i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5528640i32;
                } else if (__value__ == (5528640i32)) {
                    _mailbox._local = (_localPartBytes_5525424 : stdgo.GoString)?.__copy__();
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
