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
var _badRe : stdgo.Slice<stdgo._internal.regexp.Regexp_T_stringError.T_stringError> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_T_stringError.T_stringError>(12, 12, ...[
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("*" : stdgo.GoString), ("missing argument to repetition operator: `*`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("+" : stdgo.GoString), ("missing argument to repetition operator: `+`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("?" : stdgo.GoString), ("missing argument to repetition operator: `?`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("(abc" : stdgo.GoString), ("missing closing ): `(abc`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("abc)" : stdgo.GoString), ("unexpected ): `abc)`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("x[a-z" : stdgo.GoString), ("missing closing ]: `[a-z`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("[z-a]" : stdgo.GoString), ("invalid character class range: `z-a`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("abc\\" : stdgo.GoString), ("trailing backslash at end of expression" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("a**" : stdgo.GoString), ("invalid nested repetition operator: `**`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("a*+" : stdgo.GoString), ("invalid nested repetition operator: `*+`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(("\\x" : stdgo.GoString), ("invalid escape sequence: `\\x`" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError),
(new stdgo._internal.regexp.Regexp_T_stringError.T_stringError(stdgo._internal.strings.Strings_repeat.repeat(("\\pL" : stdgo.GoString), (27000 : stdgo.GoInt))?.__copy__(), ("expression too large" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_T_stringError.T_stringError)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_T_stringError.T_stringError)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_stringError.T_stringError>);
