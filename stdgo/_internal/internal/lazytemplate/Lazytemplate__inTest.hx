package stdgo._internal.internal.lazytemplate;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.text.template.Template;
var _inTest : Bool = (((stdgo._internal.os.Os_args.args.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(stdgo._internal.strings.Strings_trimSuffix.trimSuffix(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), (".exe" : stdgo.GoString))?.__copy__(), (".test" : stdgo.GoString)) : Bool);
