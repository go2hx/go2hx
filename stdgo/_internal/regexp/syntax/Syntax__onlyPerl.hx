package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
var _onlyPerl : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("[a-b-c]" : stdgo.GoString), ("\\Qabc\\E" : stdgo.GoString), ("\\Q*+?{[\\E" : stdgo.GoString), ("\\Q\\\\E" : stdgo.GoString), ("\\Q\\\\\\E" : stdgo.GoString), ("\\Q\\\\\\\\E" : stdgo.GoString), ("\\Q\\\\\\\\\\E" : stdgo.GoString), ("(?:a)" : stdgo.GoString), ("(?P<name>a)" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
