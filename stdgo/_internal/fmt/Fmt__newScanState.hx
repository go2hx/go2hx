package stdgo._internal.fmt;
function _newScanState(_r:stdgo._internal.io.Io_Reader.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{ var _0 : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>; var _1 : stdgo._internal.fmt.Fmt_T_ssave.T_ssave; } {
        var _s = (null : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>), _old = ({} : stdgo._internal.fmt.Fmt_T_ssave.T_ssave);
        _s = (stdgo.Go.typeAssert((stdgo._internal.fmt.Fmt__ssFree._ssFree.get() : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>)) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_RuneScanner.RuneScanner)) : stdgo._internal.io.Io_RuneScanner.RuneScanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_RuneScanner.RuneScanner), _1 : false };
            }, _rs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _s._rs = _rs;
            } else {
                _s._rs = stdgo.Go.asInterface((stdgo.Go.setRef(({ _reader : _r, _peekRune : (-1 : stdgo.GoInt32) } : stdgo._internal.fmt.Fmt_T_readRune.T_readRune)) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_readRune.T_readRune>));
            };
        };
        _s._ssave._nlIsSpace = _nlIsSpace;
        _s._ssave._nlIsEnd = _nlIsEnd;
        _s._atEOF = false;
        _s._ssave._limit = (1073741824 : stdgo.GoInt);
        _s._ssave._argLimit = (1073741824 : stdgo.GoInt);
        _s._ssave._maxWid = (1073741824 : stdgo.GoInt);
        _s._ssave._validSave = true;
        _s._count = (0 : stdgo.GoInt);
        return { _0 : _s, _1 : _old };
    }
