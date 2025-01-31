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
function _newPrinter():stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> {
        var _p = (stdgo.Go.typeAssert((@:check2 stdgo._internal.fmt.Fmt__ppFree._ppFree.get() : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>)) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        (@:checkr _p ?? throw "null pointer dereference")._panicking = false;
        (@:checkr _p ?? throw "null pointer dereference")._erroring = false;
        (@:checkr _p ?? throw "null pointer dereference")._wrapErrs = false;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._init((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>));
        return _p;
    }
