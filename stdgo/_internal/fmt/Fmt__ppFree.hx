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
var _ppFree : stdgo._internal.sync.Sync_Pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.fmt.Fmt_T_pp.T_pp)) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>)));
    } } : stdgo._internal.sync.Sync_Pool.Pool);
