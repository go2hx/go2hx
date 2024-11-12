package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _c_5607819:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5606782:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5606153:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5609301:Bool = false;
        var _twoDots_5608874:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5606122i32;
                    } else {
                        _gotoNext = 5606153i32;
                    };
                } else if (__value__ == (5606122i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5606153i32;
                } else if (__value__ == (5606153i32)) {
                    _localPartBytes_5606153 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5606216i32;
                    } else {
                        _gotoNext = 5607720i32;
                    };
                } else if (__value__ == (5606216i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5606705i32;
                } else if (__value__ == (5606705i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5606721i32;
                } else if (__value__ == (5606721i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5606725i32;
                    } else {
                        _gotoNext = 5609065i32;
                    };
                } else if (__value__ == (5606725i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5606746i32;
                    } else {
                        _gotoNext = 5606782i32;
                    };
                } else if (__value__ == (5606746i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5606782i32;
                } else if (__value__ == (5606782i32)) {
                    _c_5606782 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5606812i32;
                } else if (__value__ == (5606812i32)) {
                    if (_c_5606782 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5606824i32;
                    } else if (_c_5606782 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5606866i32;
                    } else if (((((((((_c_5606782 == ((11 : stdgo.GoUInt8)) || _c_5606782 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5606782 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5606782 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5606782 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5606782 : Bool) && (_c_5606782 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5606782 : Bool) && (_c_5606782 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5606782 : Bool) && (_c_5606782 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5606782 : Bool) && (_c_5606782 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5607189i32;
                    } else {
                        _gotoNext = 5607668i32;
                    };
                } else if (__value__ == (5606824i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5606721i32;
                } else if (__value__ == (5606866i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5606921i32;
                    } else {
                        _gotoNext = 5606960i32;
                    };
                } else if (__value__ == (5606921i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5606960i32;
                } else if (__value__ == (5606960i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5607068i32;
                    } else {
                        _gotoNext = 5607150i32;
                    };
                } else if (__value__ == (5607068i32)) {
                    _localPartBytes_5606153 = (_localPartBytes_5606153.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5609065i32;
                } else if (__value__ == (5607150i32)) {
                    _gotoNext = 5607150i32;
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5609065i32;
                } else if (__value__ == (5607189i32)) {
                    _localPartBytes_5606153 = (_localPartBytes_5606153.__append__(_c_5606782));
                    _gotoNext = 5609065i32;
                } else if (__value__ == (5607668i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5609065i32;
                } else if (__value__ == (5607720i32)) {
                    _gotoNext = 5607720i32;
                    _gotoNext = 5607745i32;
                } else if (__value__ == (5607745i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5607757i32;
                } else if (__value__ == (5607757i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5607773i32;
                    } else {
                        _gotoNext = 5608630i32;
                    };
                } else if (__value__ == (5607773i32)) {
                    _c_5607819 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5607834i32;
                } else if (__value__ == (5607834i32)) {
                    if (_c_5607819 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5607846i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5607819 : Bool) && (_c_5607819 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5607819 : Bool) && (_c_5607819 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5607819 : Bool) && (_c_5607819 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5607819 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5607819 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5607819 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5608169i32;
                    } else {
                        _gotoNext = 5608590i32;
                    };
                } else if (__value__ == (5607846i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608114i32;
                    } else {
                        _gotoNext = 5608153i32;
                    };
                } else if (__value__ == (5608114i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5608153i32;
                } else if (__value__ == (5608153i32)) {
                    _gotoNext = 5608169i32;
                } else if (__value__ == (5608169i32)) {
                    _localPartBytes_5606153 = (_localPartBytes_5606153.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608630i32;
                } else if (__value__ == (5608590i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5607757i32;
                } else if (__value__ == (5608630i32)) {
                    if ((_localPartBytes_5606153.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608658i32;
                    } else {
                        _gotoNext = 5608874i32;
                    };
                } else if (__value__ == (5608658i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5608874i32;
                } else if (__value__ == (5608874i32)) {
                    _twoDots_5608874 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5606153[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5606153[((_localPartBytes_5606153.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5606153, _twoDots_5608874) : Bool)) {
                        _gotoNext = 5609029i32;
                    } else {
                        _gotoNext = 5609065i32;
                    };
                } else if (__value__ == (5609029i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5609065i32;
                } else if (__value__ == (5609065i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5609097i32;
                    } else {
                        _gotoNext = 5609127i32;
                    };
                } else if (__value__ == (5609097i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5609127i32;
                } else if (__value__ == (5609127i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5609301 = __tmp__._1;
                        };
                        if (!_ok_5609301) {
                            _gotoNext = 5609338i32;
                        } else {
                            _gotoNext = 5609369i32;
                        };
                    };
                } else if (__value__ == (5609338i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5609369i32;
                } else if (__value__ == (5609369i32)) {
                    _mailbox._local = (_localPartBytes_5606153 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
