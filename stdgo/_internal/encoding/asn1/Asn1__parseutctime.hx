package stdgo._internal.encoding.asn1;
function _parseUTCTime(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.time.Time_time.Time), _err = (null : stdgo.Error);
        var _s = ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _formatStr = (("0601021504Z0700" : stdgo.GoString) : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(_formatStr?.__copy__(), _s?.__copy__());
            _ret = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            _formatStr = ("060102150405Z0700" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.time.Time_parse.parse(_formatStr?.__copy__(), _s?.__copy__());
                _ret = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : _ret, _1 : _err };
        };
        {
            var _serialized = (_ret.format(_formatStr?.__copy__())?.__copy__() : stdgo.GoString);
            if (_serialized != (_s)) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("asn1: time did not serialize back to the original value and may be invalid: given %q, but serialized as %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_serialized));
                return { _0 : _ret, _1 : _err };
            };
        };
        if ((_ret.year() >= (2050 : stdgo.GoInt) : Bool)) {
            _ret = _ret.addDate((-100 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        };
        return { _0 : _ret, _1 : _err };
    }
