package stdgo._internal.encoding.asn1;
function _parseGeneralizedTime(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.time.Time_time.Time), _err = (null : stdgo.Error);
        {};
        var _s = ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            {
                var __tmp__ = stdgo._internal.time.Time_parse.parse(("20060102150405.999999999Z0700" : stdgo.GoString), _s?.__copy__());
                _ret = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
        };
        {
            var _serialized = (_ret.format(("20060102150405.999999999Z0700" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_serialized != (_s)) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("asn1: time did not serialize back to the original value and may be invalid: given %q, but serialized as %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_serialized));
            };
        };
        return { _0 : _ret, _1 : _err };
    }
