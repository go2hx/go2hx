package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _checkErrorPredicate(_predName:stdgo.GoString, _pred:stdgo.Error -> Bool, _err:stdgo.Error, _target:stdgo.Error):stdgo.GoString {
        if (!_pred(_err)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s does not work as expected for %#v" : stdgo.GoString), stdgo.Go.toInterface(_predName), stdgo.Go.toInterface(_err))?.__copy__();
        };
        if (!stdgo._internal.errors.Errors_is_.is_(_err, _target)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("errors.Is(%#v, %#v) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_target))?.__copy__();
        };
        return stdgo.Go.str()?.__copy__();
    }
