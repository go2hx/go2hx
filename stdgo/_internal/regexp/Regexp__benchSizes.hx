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
var _benchSizes : stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4>(6, 6, ...[({ _name : ("16" : stdgo.GoString), _n : (16 : stdgo.GoInt) } : stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4), ({ _name : ("32" : stdgo.GoString), _n : (32 : stdgo.GoInt) } : stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4), ({ _name : ("1K" : stdgo.GoString), _n : (1024 : stdgo.GoInt) } : stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4), ({ _name : ("32K" : stdgo.GoString), _n : (32768 : stdgo.GoInt) } : stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4), ({ _name : ("1M" : stdgo.GoString), _n : (1048576 : stdgo.GoInt) } : stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4), ({ _name : ("32M" : stdgo.GoString), _n : (33554432 : stdgo.GoInt) } : stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _n : (0 : stdgo.GoInt) } : stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_T__struct_4.T__struct_4>);
