package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5491649:Bool = false;
        var _twoDots_5491222:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5490167:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5489130:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5488501:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5488470i32;
                    } else {
                        _gotoNext = 5488501i32;
                    };
                } else if (__value__ == (5488470i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5488501i32;
                } else if (__value__ == (5488501i32)) {
                    _localPartBytes_5488501 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5488564i32;
                    } else {
                        _gotoNext = 5490068i32;
                    };
                } else if (__value__ == (5488564i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5489053i32;
                } else if (__value__ == (5489053i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5489069i32;
                } else if (__value__ == (5489069i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5489073i32;
                    } else {
                        _gotoNext = 5491413i32;
                    };
                } else if (__value__ == (5489073i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5489094i32;
                    } else {
                        _gotoNext = 5489130i32;
                    };
                } else if (__value__ == (5489094i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5489130i32;
                } else if (__value__ == (5489130i32)) {
                    _c_5489130 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5489160i32;
                } else if (__value__ == (5489160i32)) {
                    if (_c_5489130 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5489172i32;
                    } else if (_c_5489130 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5489214i32;
                    } else if (((((((((_c_5489130 == ((11 : stdgo.GoUInt8)) || _c_5489130 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5489130 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5489130 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5489130 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5489130 : Bool) && (_c_5489130 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5489130 : Bool) && (_c_5489130 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5489130 : Bool) && (_c_5489130 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5489130 : Bool) && (_c_5489130 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5489537i32;
                    } else {
                        _gotoNext = 5490016i32;
                    };
                } else if (__value__ == (5489172i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5489069i32;
                } else if (__value__ == (5489214i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5489269i32;
                    } else {
                        _gotoNext = 5489308i32;
                    };
                } else if (__value__ == (5489269i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5489308i32;
                } else if (__value__ == (5489308i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5489416i32;
                    } else {
                        _gotoNext = 5489498i32;
                    };
                } else if (__value__ == (5489416i32)) {
                    _localPartBytes_5488501 = (_localPartBytes_5488501.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5491413i32;
                } else if (__value__ == (5489498i32)) {
                    _gotoNext = 5489498i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5491413i32;
                } else if (__value__ == (5489537i32)) {
                    _localPartBytes_5488501 = (_localPartBytes_5488501.__append__(_c_5489130));
                    _gotoNext = 5491413i32;
                } else if (__value__ == (5490016i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5491413i32;
                } else if (__value__ == (5490068i32)) {
                    _gotoNext = 5490068i32;
                    _gotoNext = 5490093i32;
                } else if (__value__ == (5490093i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5490105i32;
                } else if (__value__ == (5490105i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5490121i32;
                    } else {
                        _gotoNext = 5490978i32;
                    };
                } else if (__value__ == (5490121i32)) {
                    _c_5490167 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5490182i32;
                } else if (__value__ == (5490182i32)) {
                    if (_c_5490167 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5490194i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5490167 : Bool) && (_c_5490167 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5490167 : Bool) && (_c_5490167 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5490167 : Bool) && (_c_5490167 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5490167 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5490167 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5490167 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5490517i32;
                    } else {
                        _gotoNext = 5490938i32;
                    };
                } else if (__value__ == (5490194i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5490462i32;
                    } else {
                        _gotoNext = 5490501i32;
                    };
                } else if (__value__ == (5490462i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5490501i32;
                } else if (__value__ == (5490501i32)) {
                    _gotoNext = 5490517i32;
                } else if (__value__ == (5490517i32)) {
                    _localPartBytes_5488501 = (_localPartBytes_5488501.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5490978i32;
                } else if (__value__ == (5490938i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5490105i32;
                } else if (__value__ == (5490978i32)) {
                    if ((_localPartBytes_5488501.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5491006i32;
                    } else {
                        _gotoNext = 5491222i32;
                    };
                } else if (__value__ == (5491006i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5491222i32;
                } else if (__value__ == (5491222i32)) {
                    _twoDots_5491222 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5488501[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5488501[((_localPartBytes_5488501.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5488501, _twoDots_5491222) : Bool)) {
                        _gotoNext = 5491377i32;
                    } else {
                        _gotoNext = 5491413i32;
                    };
                } else if (__value__ == (5491377i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5491413i32;
                } else if (__value__ == (5491413i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5491445i32;
                    } else {
                        _gotoNext = 5491475i32;
                    };
                } else if (__value__ == (5491445i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5491475i32;
                } else if (__value__ == (5491475i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5491649 = __tmp__._1;
                        };
                        if (!_ok_5491649) {
                            _gotoNext = 5491686i32;
                        } else {
                            _gotoNext = 5491717i32;
                        };
                    };
                } else if (__value__ == (5491686i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5491717i32;
                } else if (__value__ == (5491717i32)) {
                    _mailbox._local = (_localPartBytes_5488501 : stdgo.GoString)?.__copy__();
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
