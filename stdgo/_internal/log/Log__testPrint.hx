package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.runtime.Runtime;
function _testPrint(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _flag:stdgo.GoInt, _prefix:stdgo.GoString, _pattern:stdgo.GoString, _useFormat:Bool):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.log.Log_setOutput.setOutput(stdgo.Go.asInterface(_buf));
        stdgo._internal.log.Log_setFlags.setFlags(_flag);
        stdgo._internal.log.Log_setPrefix.setPrefix(_prefix?.__copy__());
        if (_useFormat) {
            stdgo._internal.log.Log_printf.printf(("hello %d world" : stdgo.GoString), stdgo.Go.toInterface((23 : stdgo.GoInt)));
        } else {
            stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface((23 : stdgo.GoInt)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
        };
        var _line = ((@:check2r _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _line = (_line.__slice__((0 : stdgo.GoInt), ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _pattern = ((("^" : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString) + ("hello 23 world$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo._internal.regexp.Regexp_matchString.matchString(_pattern?.__copy__(), _line?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("pattern did not compile:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_matched) {
            @:check2r _t.errorf(("log output should match %q is %q" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_line));
        };
        stdgo._internal.log.Log_setOutput.setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr));
    }
