package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_5594182:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5597330:Bool = false;
        var _twoDots_5596903:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5595848:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5594811:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5594151i32;
                    } else {
                        _gotoNext = 5594182i32;
                    };
                } else if (__value__ == (5594151i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5594182i32;
                } else if (__value__ == (5594182i32)) {
                    _localPartBytes_5594182 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5594245i32;
                    } else {
                        _gotoNext = 5595749i32;
                    };
                } else if (__value__ == (5594245i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5594734i32;
                } else if (__value__ == (5594734i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5594750i32;
                } else if (__value__ == (5594750i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5594754i32;
                    } else {
                        _gotoNext = 5597094i32;
                    };
                } else if (__value__ == (5594754i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5594775i32;
                    } else {
                        _gotoNext = 5594811i32;
                    };
                } else if (__value__ == (5594775i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5594811i32;
                } else if (__value__ == (5594811i32)) {
                    _c_5594811 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 5594841i32;
                } else if (__value__ == (5594841i32)) {
                    if (_c_5594811 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5594853i32;
                    } else if (_c_5594811 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5594895i32;
                    } else if (((((((((_c_5594811 == ((11 : stdgo.GoUInt8)) || _c_5594811 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5594811 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5594811 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5594811 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5594811 : Bool) && (_c_5594811 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5594811 : Bool) && (_c_5594811 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5594811 : Bool) && (_c_5594811 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5594811 : Bool) && (_c_5594811 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5595218i32;
                    } else {
                        _gotoNext = 5595697i32;
                    };
                } else if (__value__ == (5594853i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5594750i32;
                } else if (__value__ == (5594895i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5594950i32;
                    } else {
                        _gotoNext = 5594989i32;
                    };
                } else if (__value__ == (5594950i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5594989i32;
                } else if (__value__ == (5594989i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5595097i32;
                    } else {
                        _gotoNext = 5595179i32;
                    };
                } else if (__value__ == (5595097i32)) {
                    _localPartBytes_5594182 = (_localPartBytes_5594182.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5597094i32;
                } else if (__value__ == (5595179i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5597094i32;
                } else if (__value__ == (5595218i32)) {
                    _localPartBytes_5594182 = (_localPartBytes_5594182.__append__(_c_5594811));
                    _gotoNext = 5597094i32;
                } else if (__value__ == (5595697i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5597094i32;
                } else if (__value__ == (5595749i32)) {
                    _gotoNext = 5595774i32;
                } else if (__value__ == (5595774i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5595786i32;
                } else if (__value__ == (5595786i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5595802i32;
                    } else {
                        _gotoNext = 5596659i32;
                    };
                } else if (__value__ == (5595802i32)) {
                    _c_5595848 = _in[(0 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 5595863i32;
                } else if (__value__ == (5595863i32)) {
                    if (_c_5595848 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5595875i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5595848 : Bool) && (_c_5595848 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5595848 : Bool) && (_c_5595848 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5595848 : Bool) && (_c_5595848 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5595848 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5595848 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5595848 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5596198i32;
                    } else {
                        _gotoNext = 5596619i32;
                    };
                } else if (__value__ == (5595875i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5596143i32;
                    } else {
                        _gotoNext = 5596182i32;
                    };
                } else if (__value__ == (5596143i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5596182i32;
                } else if (__value__ == (5596182i32)) {
                    _gotoNext = 5596198i32;
                } else if (__value__ == (5596198i32)) {
                    _localPartBytes_5594182 = (_localPartBytes_5594182.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5596659i32;
                } else if (__value__ == (5596619i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5595786i32;
                } else if (__value__ == (5596659i32)) {
                    if ((_localPartBytes_5594182.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5596687i32;
                    } else {
                        _gotoNext = 5596903i32;
                    };
                } else if (__value__ == (5596687i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5596903i32;
                } else if (__value__ == (5596903i32)) {
                    _twoDots_5596903 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5594182[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5594182[((_localPartBytes_5594182.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5594182, _twoDots_5596903) : Bool)) {
                        _gotoNext = 5597058i32;
                    } else {
                        _gotoNext = 5597094i32;
                    };
                } else if (__value__ == (5597058i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5597094i32;
                } else if (__value__ == (5597094i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5597126i32;
                    } else {
                        _gotoNext = 5597156i32;
                    };
                } else if (__value__ == (5597126i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5597156i32;
                } else if (__value__ == (5597156i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5597330 = __tmp__._1;
                        };
                        if (!_ok_5597330) {
                            _gotoNext = 5597367i32;
                        } else {
                            _gotoNext = 5597398i32;
                        };
                    };
                } else if (__value__ == (5597367i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5597398i32;
                } else if (__value__ == (5597398i32)) {
                    _mailbox._local = (_localPartBytes_5594182 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
