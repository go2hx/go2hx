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
var _onePassTests : stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6>(35, 35, ...[
({ _re : ("^(?:a|(?:a*))$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(a)|(?:a*))$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:(?:.(?:$))?))$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^abcd$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:a{0,})*?)$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:a+)*)$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:a|(?:aa)))$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:[^\\s\\S])$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:a{3,4}){0,})$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:(?:a*)+))$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^[a-c]+$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^[a-c]*$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:a*)$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:aa)|a)$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^[a-c]*" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^...$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:a|(?:aa))$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a((b))c$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a.[l-nA-Cg-j]?e$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a((b))$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:(b)|(c))c$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:(b*)|(c))c$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:b|c)$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:b?|c)$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:b?|c?)$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:b?|c+)$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:b+|(bc))d$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:bc)+$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(?:[bcd])+$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a((?:[bcd])+)$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^a(:?b|c)*d$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^.bc(d|e)*$" : stdgo.GoString), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:aa)|.)$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ("^(?:(?:a{1,2}){1,2})$" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6),
({ _re : ((("^l" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("o" : stdgo.GoString), (512 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("ng$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _isOnePass : true } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6)].concat([for (i in 35 ... (35 > 35 ? 35 : 35 : stdgo.GoInt).toBasic()) ({ _re : ("" : stdgo.GoString), _isOnePass : false } : stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_6.T__struct_6>);
