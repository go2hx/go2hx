package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
var _instOpNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("InstAlt" : stdgo.GoString),
("InstAltMatch" : stdgo.GoString),
("InstCapture" : stdgo.GoString),
("InstEmptyWidth" : stdgo.GoString),
("InstMatch" : stdgo.GoString),
("InstFail" : stdgo.GoString),
("InstNop" : stdgo.GoString),
("InstRune" : stdgo.GoString),
("InstRune1" : stdgo.GoString),
("InstRuneAny" : stdgo.GoString),
("InstRuneAnyNotNL" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
