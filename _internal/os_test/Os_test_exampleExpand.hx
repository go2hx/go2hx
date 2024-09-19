package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleExpand():Void {
        var _mapper = (function(_placeholderName:stdgo.GoString):stdgo.GoString {
            {
                final __value__ = _placeholderName;
                if (__value__ == (("DAY_PART" : stdgo.GoString))) {
                    return ("morning" : stdgo.GoString);
                } else if (__value__ == (("NAME" : stdgo.GoString))) {
                    return ("Gopher" : stdgo.GoString);
                };
            };
            return stdgo.Go.str()?.__copy__();
        } : stdgo.GoString -> stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.os.Os_expand.expand(("Good ${DAY_PART}, $NAME!" : stdgo.GoString), _mapper)));
    }
