package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(("^x{1,1000}y{1,1000}$" : stdgo.GoString), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("parse: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(@:check2r _re.simplify()), _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("compile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) != null && ((stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) : Dynamic).__nil__ == null || !(stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) : Dynamic).__nil__))) {
            @:check2r _t.fatalf(("makeOnePass succeeded; wanted nil" : stdgo.GoString));
        };
    }
