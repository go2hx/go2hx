package stdgo._internal.encoding.asn1;
function _appendTimeCommon(_dst:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.time.Time_time.Time):stdgo.Slice<stdgo.GoUInt8> {
        var __tmp__ = _t.date(), __0:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, (_month : stdgo.GoInt));
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, _day);
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, _hour);
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, _min);
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, _sec);
        var __tmp__ = _t.zone(), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if ((_offset / (60 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            return (_dst.__append__((90 : stdgo.GoUInt8)));
        } else if ((_offset > (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((43 : stdgo.GoUInt8)));
        } else if ((_offset < (0 : stdgo.GoInt) : Bool)) {
            _dst = (_dst.__append__((45 : stdgo.GoUInt8)));
        };
        var _offsetMinutes = (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
        if ((_offsetMinutes < (0 : stdgo.GoInt) : Bool)) {
            _offsetMinutes = -_offsetMinutes;
        };
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, (_offsetMinutes / (60 : stdgo.GoInt) : stdgo.GoInt));
        _dst = stdgo._internal.encoding.asn1.Asn1__appendtwodigits._appendTwoDigits(_dst, (_offsetMinutes % (60 : stdgo.GoInt) : stdgo.GoInt));
        return _dst;
    }
