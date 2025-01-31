package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
var _htmlAutoClose : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(13, 13, ...[
("basefont" : stdgo.GoString),
("br" : stdgo.GoString),
("area" : stdgo.GoString),
("link" : stdgo.GoString),
("img" : stdgo.GoString),
("param" : stdgo.GoString),
("hr" : stdgo.GoString),
("input" : stdgo.GoString),
("col" : stdgo.GoString),
("frame" : stdgo.GoString),
("isindex" : stdgo.GoString),
("base" : stdgo.GoString),
("meta" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
