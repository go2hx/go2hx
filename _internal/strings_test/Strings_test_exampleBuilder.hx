package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleBuilder():Void {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (1 : stdgo.GoInt) : Bool), _i--, {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("%d..." : stdgo.GoString), stdgo.Go.toInterface(_i));
            });
        };
        _b.writeString(("ignition" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
    }
