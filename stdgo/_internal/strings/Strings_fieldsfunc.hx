package stdgo._internal.strings;
function fieldsFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoString> {
        {};
        var _spans = (new stdgo.Slice<stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (32 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (32 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921)]) : stdgo.Slice<stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921>);
        var _start = (-1 : stdgo.GoInt);
        for (_end => _rune in _s) {
            if (_f(_rune)) {
                if ((_start >= (0 : stdgo.GoInt) : Bool)) {
                    _spans = (_spans.__append__((new stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921(_start, _end) : stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921)));
                    _start = (-1 ^ _start);
                };
            } else {
                if ((_start < (0 : stdgo.GoInt) : Bool)) {
                    _start = _end;
                };
            };
        };
        if ((_start >= (0 : stdgo.GoInt) : Bool)) {
            _spans = (_spans.__append__((new stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921(_start, (_s.length)) : stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921)));
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_spans.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _span in _spans) {
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(_span._start, _span._end) : stdgo.GoString)?.__copy__();
        };
        return _a;
    }
