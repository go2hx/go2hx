package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _localPartBytes_5603473:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5606621:Bool = false;
        var _twoDots_5606194:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5605139:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5604102:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5603442i32;
                    } else {
                        _gotoNext = 5603473i32;
                    };
                } else if (__value__ == (5603442i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603473i32;
                } else if (__value__ == (5603473i32)) {
                    _localPartBytes_5603473 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5603536i32;
                    } else {
                        _gotoNext = 5605040i32;
                    };
                } else if (__value__ == (5603536i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5604025i32;
                } else if (__value__ == (5604025i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5604041i32;
                } else if (__value__ == (5604041i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5604045i32;
                    } else {
                        _gotoNext = 5606385i32;
                    };
                } else if (__value__ == (5604045i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5604066i32;
                    } else {
                        _gotoNext = 5604102i32;
                    };
                } else if (__value__ == (5604066i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5604102i32;
                } else if (__value__ == (5604102i32)) {
                    _c_5604102 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5604132i32;
                } else if (__value__ == (5604132i32)) {
                    if (_c_5604102 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5604144i32;
                    } else if (_c_5604102 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5604186i32;
                    } else if (((((((((_c_5604102 == ((11 : stdgo.GoUInt8)) || _c_5604102 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5604102 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5604102 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5604102 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5604102 : Bool) && (_c_5604102 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5604102 : Bool) && (_c_5604102 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5604102 : Bool) && (_c_5604102 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5604102 : Bool) && (_c_5604102 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5604509i32;
                    } else {
                        _gotoNext = 5604988i32;
                    };
                } else if (__value__ == (5604144i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5604041i32;
                } else if (__value__ == (5604186i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5604241i32;
                    } else {
                        _gotoNext = 5604280i32;
                    };
                } else if (__value__ == (5604241i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5604280i32;
                } else if (__value__ == (5604280i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5604388i32;
                    } else {
                        _gotoNext = 5604470i32;
                    };
                } else if (__value__ == (5604388i32)) {
                    _localPartBytes_5603473 = (_localPartBytes_5603473.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5606385i32;
                } else if (__value__ == (5604470i32)) {
                    _gotoNext = 5604470i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5606385i32;
                } else if (__value__ == (5604509i32)) {
                    _localPartBytes_5603473 = (_localPartBytes_5603473.__append__(_c_5604102));
                    _gotoNext = 5606385i32;
                } else if (__value__ == (5604988i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606385i32;
                } else if (__value__ == (5605040i32)) {
                    _gotoNext = 5605040i32;
                    _gotoNext = 5605065i32;
                } else if (__value__ == (5605065i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5605077i32;
                } else if (__value__ == (5605077i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5605093i32;
                    } else {
                        _gotoNext = 5605950i32;
                    };
                } else if (__value__ == (5605093i32)) {
                    _c_5605139 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5605154i32;
                } else if (__value__ == (5605154i32)) {
                    if (_c_5605139 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5605166i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5605139 : Bool) && (_c_5605139 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5605139 : Bool) && (_c_5605139 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5605139 : Bool) && (_c_5605139 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5605139 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5605139 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5605139 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5605489i32;
                    } else {
                        _gotoNext = 5605910i32;
                    };
                } else if (__value__ == (5605166i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5605434i32;
                    } else {
                        _gotoNext = 5605473i32;
                    };
                } else if (__value__ == (5605434i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605473i32;
                } else if (__value__ == (5605473i32)) {
                    _gotoNext = 5605489i32;
                } else if (__value__ == (5605489i32)) {
                    _localPartBytes_5603473 = (_localPartBytes_5603473.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5605950i32;
                } else if (__value__ == (5605910i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5605077i32;
                } else if (__value__ == (5605950i32)) {
                    if ((_localPartBytes_5603473.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5605978i32;
                    } else {
                        _gotoNext = 5606194i32;
                    };
                } else if (__value__ == (5605978i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606194i32;
                } else if (__value__ == (5606194i32)) {
                    _twoDots_5606194 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5603473[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5603473[((_localPartBytes_5603473.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5603473, _twoDots_5606194) : Bool)) {
                        _gotoNext = 5606349i32;
                    } else {
                        _gotoNext = 5606385i32;
                    };
                } else if (__value__ == (5606349i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606385i32;
                } else if (__value__ == (5606385i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5606417i32;
                    } else {
                        _gotoNext = 5606447i32;
                    };
                } else if (__value__ == (5606417i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606447i32;
                } else if (__value__ == (5606447i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5606621 = __tmp__._1;
                        };
                        if (!_ok_5606621) {
                            _gotoNext = 5606658i32;
                        } else {
                            _gotoNext = 5606689i32;
                        };
                    };
                } else if (__value__ == (5606658i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5606689i32;
                } else if (__value__ == (5606689i32)) {
                    _mailbox._local = (_localPartBytes_5603473 : stdgo.GoString)?.__copy__();
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
