package stdgo._internal.net.mail;
function parseDate(_date:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } {
        stdgo._internal.net.mail.Mail__dateLayoutsBuildOnce._dateLayoutsBuildOnce.do_(stdgo._internal.net.mail.Mail__buildDateLayouts._buildDateLayouts);
        _date = stdgo._internal.strings.Strings_replaceAll.replaceAll(_date?.__copy__(), ("\r\n" : stdgo.GoString), stdgo.Go.str()?.__copy__())?.__copy__();
        if (stdgo._internal.strings.Strings_contains.contains(_date?.__copy__(), ("\r" : stdgo.GoString))) {
            return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: header has a CR without LF" : stdgo.GoString)) };
        };
        var _p = (new stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser(_date?.__copy__(), null) : stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser);
        _p._skipSpace();
        {
            var _ind = (stdgo._internal.strings.Strings_indexAny.indexAny(_p._s?.__copy__(), ("+-" : stdgo.GoString)) : stdgo.GoInt);
            if (((_ind != (-1 : stdgo.GoInt)) && ((_p._s.length) >= (_ind + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                _date = (_p._s.__slice__(0, (_ind + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _p._s = (_p._s.__slice__((_ind + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else {
                var _ind = (stdgo._internal.strings.Strings_index.index(_p._s?.__copy__(), ("T" : stdgo.GoString)) : stdgo.GoInt);
                if (_ind == ((0 : stdgo.GoInt))) {
                    _ind = stdgo._internal.strings.Strings_index.index((_p._s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("T" : stdgo.GoString));
                    if (_ind != ((-1 : stdgo.GoInt))) {
                        _ind++;
                    };
                };
                if (((_ind != (-1 : stdgo.GoInt)) && ((_p._s.length) >= (_ind + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    _date = (_p._s.__slice__(0, (_ind + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _p._s = (_p._s.__slice__((_ind + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            };
        };
        if (!_p._skipCFWS()) {
            return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: misformatted parenthetical comment" : stdgo.GoString)) };
        };
        for (__0 => _layout in stdgo._internal.net.mail.Mail__dateLayouts._dateLayouts) {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(_layout?.__copy__(), _date?.__copy__()), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : stdgo._internal.errors.Errors_new_.new_(("mail: header could not be parsed" : stdgo.GoString)) };
    }