package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testNumErrorUnwrap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _err = (stdgo.Go.setRef(({ err : stdgo._internal.strconv.Strconv_errSyntax.errSyntax } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>);
        if (!stdgo._internal.errors.Errors_is_.is_(stdgo.Go.asInterface(_err), stdgo._internal.strconv.Strconv_errSyntax.errSyntax)) {
            _t.error(stdgo.Go.toInterface(("errors.Is failed, wanted success" : stdgo.GoString)));
        };
    }
