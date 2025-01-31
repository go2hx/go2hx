package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void {
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.fmt.Fmt_T_scanError.T_scanError)) : stdgo._internal.fmt.Fmt_T_scanError.T_scanError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.fmt.Fmt_T_scanError.T_scanError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var __tmp__ = _se._err;
                            var x = (_errp : stdgo.Error);
                            x.error = __tmp__.error;
                        };
                    } else {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_e : stdgo.Error)) : stdgo.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _eof = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && (stdgo.Go.toInterface(_eof) == stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool)) {
                            {
                                var __tmp__ = _eof;
                                var x = (_errp : stdgo.Error);
                                x.error = __tmp__.error;
                            };
                        } else {
                            throw stdgo.Go.toInterface(_e);
                        };
                    };
                };
            };
        };
    }
