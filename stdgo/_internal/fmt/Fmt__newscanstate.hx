package stdgo._internal.fmt;
function _newScanState(_r:stdgo._internal.io.Io_reader.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{ var _0 : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>; var _1 : stdgo._internal.fmt.Fmt_t_ssave.T_ssave; } {
        var _s = (null : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>), _old = ({} : stdgo._internal.fmt.Fmt_t_ssave.T_ssave);
        _s = (stdgo.Go.typeAssert((@:check2 stdgo._internal.fmt.Fmt__ssfree._ssFree.get() : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>)) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_runescanner.RuneScanner)) : stdgo._internal.io.Io_runescanner.RuneScanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_runescanner.RuneScanner), _1 : false };
            }, _rs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _s ?? throw "null pointer dereference")._rs = _rs;
            } else {
                (@:checkr _s ?? throw "null pointer dereference")._rs = stdgo.Go.asInterface((stdgo.Go.setRef(({ _reader : _r, _peekRune : (-1 : stdgo.GoInt32) } : stdgo._internal.fmt.Fmt_t_readrune.T_readRune)) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>));
            };
        };
        (@:checkr _s ?? throw "null pointer dereference")._ssave._nlIsSpace = _nlIsSpace;
        (@:checkr _s ?? throw "null pointer dereference")._ssave._nlIsEnd = _nlIsEnd;
        (@:checkr _s ?? throw "null pointer dereference")._atEOF = false;
        (@:checkr _s ?? throw "null pointer dereference")._ssave._limit = (1073741824 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._ssave._argLimit = (1073741824 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._ssave._maxWid = (1073741824 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._ssave._validSave = true;
        (@:checkr _s ?? throw "null pointer dereference")._count = (0 : stdgo.GoInt);
        return { _0 : _s, _1 : _old };
    }
