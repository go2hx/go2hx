package stdgo._internal.strconv;
function _formatDigits(_dst:stdgo.Slice<stdgo.GoUInt8>, _shortest:Bool, _neg:Bool, _digs:stdgo._internal.strconv.Strconv_t_decimalslice.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L200"
        {
            final __value__ = _fmt;
            if (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L202"
                return stdgo._internal.strconv.Strconv__fmte._fmtE(_dst, _neg, _digs?.__copy__(), _prec, _fmt);
            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L204"
                return stdgo._internal.strconv.Strconv__fmtf._fmtF(_dst, _neg, _digs?.__copy__(), _prec);
            } else if (__value__ == ((103 : stdgo.GoUInt8)) || __value__ == ((71 : stdgo.GoUInt8))) {
                var _eprec = (_prec : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L208"
                if (((_eprec > _digs._nd : Bool) && (_digs._nd >= _digs._dp : Bool) : Bool)) {
                    _eprec = _digs._nd;
                };
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L214"
                if (_shortest) {
                    _eprec = (6 : stdgo.GoInt);
                };
                var _exp = (_digs._dp - (1 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L218"
                if (((_exp < (-4 : stdgo.GoInt) : Bool) || (_exp >= _eprec : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L219"
                    if ((_prec > _digs._nd : Bool)) {
                        _prec = _digs._nd;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L222"
                    return stdgo._internal.strconv.Strconv__fmte._fmtE(_dst, _neg, _digs?.__copy__(), (_prec - (1 : stdgo.GoInt) : stdgo.GoInt), ((_fmt + (101 : stdgo.GoUInt8) : stdgo.GoUInt8) - (103 : stdgo.GoUInt8) : stdgo.GoUInt8));
                };
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L224"
                if ((_prec > _digs._dp : Bool)) {
                    _prec = _digs._nd;
                };
                //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L227"
                return stdgo._internal.strconv.Strconv__fmtf._fmtF(_dst, _neg, _digs?.__copy__(), stdgo._internal.strconv.Strconv__max._max((_prec - _digs._dp : stdgo.GoInt), (0 : stdgo.GoInt)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/ftoa.go#L231"
        return (_dst.__append__((37 : stdgo.GoUInt8), _fmt) : stdgo.Slice<stdgo.GoUInt8>);
    }
