package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5574202:Bool = false;
        var _twoDots_5573775:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5572720:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5571683:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5571054:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5571023i32;
                    } else {
                        _gotoNext = 5571054i32;
                    };
                } else if (__value__ == (5571023i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5571054i32;
                } else if (__value__ == (5571054i32)) {
                    _localPartBytes_5571054 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5571117i32;
                    } else {
                        _gotoNext = 5572621i32;
                    };
                } else if (__value__ == (5571117i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5571606i32;
                } else if (__value__ == (5571606i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5571622i32;
                } else if (__value__ == (5571622i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5571626i32;
                    } else {
                        _gotoNext = 5573966i32;
                    };
                } else if (__value__ == (5571626i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5571647i32;
                    } else {
                        _gotoNext = 5571683i32;
                    };
                } else if (__value__ == (5571647i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5571683i32;
                } else if (__value__ == (5571683i32)) {
                    _c_5571683 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5571713i32;
                } else if (__value__ == (5571713i32)) {
                    if (_c_5571683 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5571725i32;
                    } else if (_c_5571683 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5571767i32;
                    } else if (((((((((_c_5571683 == ((11 : stdgo.GoUInt8)) || _c_5571683 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5571683 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5571683 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5571683 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5571683 : Bool) && (_c_5571683 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5571683 : Bool) && (_c_5571683 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5571683 : Bool) && (_c_5571683 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5571683 : Bool) && (_c_5571683 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5572090i32;
                    } else {
                        _gotoNext = 5572569i32;
                    };
                } else if (__value__ == (5571725i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5571622i32;
                } else if (__value__ == (5571767i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5571822i32;
                    } else {
                        _gotoNext = 5571861i32;
                    };
                } else if (__value__ == (5571822i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5571861i32;
                } else if (__value__ == (5571861i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5571969i32;
                    } else {
                        _gotoNext = 5572051i32;
                    };
                } else if (__value__ == (5571969i32)) {
                    _localPartBytes_5571054 = (_localPartBytes_5571054.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5571622i32;
                } else if (__value__ == (5572051i32)) {
                    _gotoNext = 5572051i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5571622i32;
                } else if (__value__ == (5572090i32)) {
                    _localPartBytes_5571054 = (_localPartBytes_5571054.__append__(_c_5571683));
                    _gotoNext = 5571622i32;
                } else if (__value__ == (5572569i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5571622i32;
                } else if (__value__ == (5572621i32)) {
                    _gotoNext = 5572621i32;
                    _gotoNext = 5572646i32;
                } else if (__value__ == (5572646i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5572658i32;
                } else if (__value__ == (5572658i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5572674i32;
                    } else {
                        _gotoNext = 5573531i32;
                    };
                } else if (__value__ == (5572674i32)) {
                    _c_5572720 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5572735i32;
                } else if (__value__ == (5572735i32)) {
                    if (_c_5572720 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5572747i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5572720 : Bool) && (_c_5572720 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5572720 : Bool) && (_c_5572720 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5572720 : Bool) && (_c_5572720 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5572720 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5572720 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5572720 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5573070i32;
                    } else {
                        _gotoNext = 5573491i32;
                    };
                } else if (__value__ == (5572747i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5573015i32;
                    } else {
                        _gotoNext = 5573054i32;
                    };
                } else if (__value__ == (5573015i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5573054i32;
                } else if (__value__ == (5573054i32)) {
                    _gotoNext = 5573070i32;
                } else if (__value__ == (5573070i32)) {
                    _localPartBytes_5571054 = (_localPartBytes_5571054.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5572658i32;
                } else if (__value__ == (5573491i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5572658i32;
                } else if (__value__ == (5573531i32)) {
                    if ((_localPartBytes_5571054.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5573559i32;
                    } else {
                        _gotoNext = 5573775i32;
                    };
                } else if (__value__ == (5573559i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5573775i32;
                } else if (__value__ == (5573775i32)) {
                    _twoDots_5573775 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5571054[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5571054[((_localPartBytes_5571054.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5571054, _twoDots_5573775) : Bool)) {
                        _gotoNext = 5573930i32;
                    } else {
                        _gotoNext = 5573966i32;
                    };
                } else if (__value__ == (5573930i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5573966i32;
                } else if (__value__ == (5573966i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5573998i32;
                    } else {
                        _gotoNext = 5574028i32;
                    };
                } else if (__value__ == (5573998i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5574028i32;
                } else if (__value__ == (5574028i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5574202 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_5574202) {
                            _gotoNext = 5574239i32;
                        } else {
                            _gotoNext = 5574270i32;
                        };
                    };
                } else if (__value__ == (5574239i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5574270i32;
                } else if (__value__ == (5574270i32)) {
                    _mailbox._local = (_localPartBytes_5571054 : stdgo.GoString)?.__copy__();
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
