package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
@:local @:using(stdgo._internal.text.scanner.Scanner_T__struct_1_static_extension.T__struct_1_static_extension) @:using(stdgo._internal.text.scanner.Scanner_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _in : stdgo.GoString;
    public var _want : stdgo.GoString;
    public var _mode : stdgo.GoUInt;
};
