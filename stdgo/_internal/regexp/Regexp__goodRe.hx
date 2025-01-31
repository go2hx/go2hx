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
var _goodRe : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(17, 17, ...[
stdgo.Go.str()?.__copy__(),
("." : stdgo.GoString),
("^.$" : stdgo.GoString),
("a" : stdgo.GoString),
("a*" : stdgo.GoString),
("a+" : stdgo.GoString),
("a?" : stdgo.GoString),
("a|b" : stdgo.GoString),
("a*|b*" : stdgo.GoString),
("(a*|b)(c*|d)" : stdgo.GoString),
("[a-z]" : stdgo.GoString),
("[a-abc-c\\-\\]\\[]" : stdgo.GoString),
("[a-z]+" : stdgo.GoString),
("[abc]" : stdgo.GoString),
("[^1234]" : stdgo.GoString),
("[^\\n]" : stdgo.GoString),
("\\!\\\\" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
