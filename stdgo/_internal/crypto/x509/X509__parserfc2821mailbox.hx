package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5558959:Bool = false;
        var _twoDots_5558532:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5557477:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5556440:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5555811:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5555780i32;
                    } else {
                        _gotoNext = 5555811i32;
                    };
                } else if (__value__ == (5555780i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5555811i32;
                } else if (__value__ == (5555811i32)) {
                    _localPartBytes_5555811 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5555874i32;
                    } else {
                        _gotoNext = 5557378i32;
                    };
                } else if (__value__ == (5555874i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5556363i32;
                } else if (__value__ == (5556363i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5556379i32;
                } else if (__value__ == (5556379i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5556383i32;
                    } else {
                        _gotoNext = 5558723i32;
                    };
                } else if (__value__ == (5556383i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5556404i32;
                    } else {
                        _gotoNext = 5556440i32;
                    };
                } else if (__value__ == (5556404i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5556440i32;
                } else if (__value__ == (5556440i32)) {
                    _c_5556440 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5556470i32;
                } else if (__value__ == (5556470i32)) {
                    if (_c_5556440 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5556482i32;
                    } else if (_c_5556440 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5556524i32;
                    } else if (((((((((_c_5556440 == ((11 : stdgo.GoUInt8)) || _c_5556440 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5556440 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5556440 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5556440 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5556440 : Bool) && (_c_5556440 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5556440 : Bool) && (_c_5556440 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5556440 : Bool) && (_c_5556440 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5556440 : Bool) && (_c_5556440 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5556847i32;
                    } else {
                        _gotoNext = 5557326i32;
                    };
                } else if (__value__ == (5556482i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5556379i32;
                } else if (__value__ == (5556524i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5556579i32;
                    } else {
                        _gotoNext = 5556618i32;
                    };
                } else if (__value__ == (5556579i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5556618i32;
                } else if (__value__ == (5556618i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5556726i32;
                    } else {
                        _gotoNext = 5556808i32;
                    };
                } else if (__value__ == (5556726i32)) {
                    _localPartBytes_5555811 = (_localPartBytes_5555811.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5556379i32;
                } else if (__value__ == (5556808i32)) {
                    _gotoNext = 5556808i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5556379i32;
                } else if (__value__ == (5556847i32)) {
                    _localPartBytes_5555811 = (_localPartBytes_5555811.__append__(_c_5556440));
                    _gotoNext = 5556379i32;
                } else if (__value__ == (5557326i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5556379i32;
                } else if (__value__ == (5557378i32)) {
                    _gotoNext = 5557378i32;
                    _gotoNext = 5557403i32;
                } else if (__value__ == (5557403i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5557415i32;
                } else if (__value__ == (5557415i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5557431i32;
                    } else {
                        _gotoNext = 5558288i32;
                    };
                } else if (__value__ == (5557431i32)) {
                    _c_5557477 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5557492i32;
                } else if (__value__ == (5557492i32)) {
                    if (_c_5557477 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5557504i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5557477 : Bool) && (_c_5557477 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5557477 : Bool) && (_c_5557477 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5557477 : Bool) && (_c_5557477 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5557477 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5557477 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5557477 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5557827i32;
                    } else {
                        _gotoNext = 5558248i32;
                    };
                } else if (__value__ == (5557504i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5557772i32;
                    } else {
                        _gotoNext = 5557811i32;
                    };
                } else if (__value__ == (5557772i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5557811i32;
                } else if (__value__ == (5557811i32)) {
                    _gotoNext = 5557827i32;
                } else if (__value__ == (5557827i32)) {
                    _localPartBytes_5555811 = (_localPartBytes_5555811.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5557415i32;
                } else if (__value__ == (5558248i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5557415i32;
                } else if (__value__ == (5558288i32)) {
                    if ((_localPartBytes_5555811.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5558316i32;
                    } else {
                        _gotoNext = 5558532i32;
                    };
                } else if (__value__ == (5558316i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5558532i32;
                } else if (__value__ == (5558532i32)) {
                    _twoDots_5558532 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5555811[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5555811[((_localPartBytes_5555811.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5555811, _twoDots_5558532) : Bool)) {
                        _gotoNext = 5558687i32;
                    } else {
                        _gotoNext = 5558723i32;
                    };
                } else if (__value__ == (5558687i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5558723i32;
                } else if (__value__ == (5558723i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5558755i32;
                    } else {
                        _gotoNext = 5558785i32;
                    };
                } else if (__value__ == (5558755i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5558785i32;
                } else if (__value__ == (5558785i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5558959 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5558959) {
                            _gotoNext = 5558996i32;
                        } else {
                            _gotoNext = 5559027i32;
                        };
                    };
                } else if (__value__ == (5558996i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5559027i32;
                } else if (__value__ == (5559027i32)) {
                    _mailbox._local = (_localPartBytes_5555811 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
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
