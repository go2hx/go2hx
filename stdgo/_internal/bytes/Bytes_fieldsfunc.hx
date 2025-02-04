package stdgo._internal.bytes;
function fieldsFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        {};
        var _spans = (new stdgo.Slice<stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (32 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (32 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914)]) : stdgo.Slice<stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914>);
        var _start = (-1 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _size = (1 : stdgo.GoInt);
                var _r = (_s[(_i : stdgo.GoInt)] : stdgo.GoInt32);
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                        _r = @:tmpset0 __tmp__._0;
                        _size = @:tmpset0 __tmp__._1;
                    };
                };
                if (_f(_r)) {
                    if ((_start >= (0 : stdgo.GoInt) : Bool)) {
                        _spans = (_spans.__append__((new stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914(_start, _i) : stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914)));
                        _start = (-1 : stdgo.GoInt);
                    };
                } else {
                    if ((_start < (0 : stdgo.GoInt) : Bool)) {
                        _start = _i;
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        if ((_start >= (0 : stdgo.GoInt) : Bool)) {
            _spans = (_spans.__append__((new stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914(_start, (_s.length)) : stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914)));
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_spans.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _span in _spans) {
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(_span._start, _span._end, _span._end) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _a;
    }
