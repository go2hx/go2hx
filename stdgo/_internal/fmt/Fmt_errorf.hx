package stdgo._internal.fmt;
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newPrinter._newPrinter();
        _p._wrapErrs = true;
        _p._doPrintf(_format?.__copy__(), _a);
        var _s = ((_p._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = (_p._wrappedErrs.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                _err = stdgo._internal.errors.Errors_new_.new_(_s?.__copy__());
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _w = (stdgo.Go.setRef(({ _msg : _s?.__copy__() } : stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError)) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError>);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_a[(_p._wrappedErrs[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.Error)) : stdgo.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Error), _1 : false };
                    };
                    _w._err = __tmp__._0;
                };
                _err = stdgo.Go.asInterface(_w);
            } else {
                if (_p._reordered) {
                    stdgo._internal.sort.Sort_ints.ints(_p._wrappedErrs);
                };
                var _errs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
                for (_i => _argNum in _p._wrappedErrs) {
                    if (((_i > (0 : stdgo.GoInt) : Bool) && (_p._wrappedErrs[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == _argNum) : Bool)) {
                        continue;
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_a[(_argNum : stdgo.GoInt)] : stdgo.Error)) : stdgo.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _errs = (_errs.__append__(_e));
                        };
                    };
                };
                _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors(_s?.__copy__(), _errs) : stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors)) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors>));
            };
        };
        _p._free();
        return _err;
    }
