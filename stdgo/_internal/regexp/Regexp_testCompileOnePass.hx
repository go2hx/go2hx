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
function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>), __1:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), __2:stdgo.Error = (null : stdgo.Error);
var _err = __2, _re = __1, _p = __0;
        for (__0 => _test in stdgo._internal.regexp.Regexp__onePassTests._onePassTests) {
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_test._re?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                    _re = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2r _t.errorf(("Parse(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            _re = @:check2r _re.simplify();
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re);
                    _p = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2r _t.errorf(("Compile(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            var _isOnePass = (stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) != null && ((stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) : Dynamic).__nil__ == null || !(stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) : Dynamic).__nil__) : Bool);
            if (_isOnePass != (_test._isOnePass)) {
                @:check2r _t.errorf(("CompileOnePass(%q) got isOnePass=%v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_isOnePass), stdgo.Go.toInterface(_test._isOnePass));
            };
        };
    }
