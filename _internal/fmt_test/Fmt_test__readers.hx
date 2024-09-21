package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
var _readers : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_11.T__struct_11> = (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_11.T__struct_11>(4, 4, ...[({ _name : ("StringReader" : stdgo.GoString), _f : function(_s:stdgo.GoString):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__()));
    } } : _internal.fmt_test.Fmt_test_T__struct_11.T__struct_11), ({ _name : ("ReaderOnly" : stdgo.GoString), _f : function(_s:stdgo.GoString):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface(({ reader : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__())) } : _internal.fmt_test.Fmt_test_T__struct_12.T__struct_12));
    } } : _internal.fmt_test.Fmt_test_T__struct_11.T__struct_11), ({ _name : ("OneByteReader" : stdgo.GoString), _f : function(_s:stdgo.GoString):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_oneByteReader.oneByteReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__())));
    } } : _internal.fmt_test.Fmt_test_T__struct_11.T__struct_11), ({ _name : ("DataErrReader" : stdgo.GoString), _f : function(_s:stdgo.GoString):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_dataErrReader.dataErrReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__())));
    } } : _internal.fmt_test.Fmt_test_T__struct_11.T__struct_11)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : _internal.fmt_test.Fmt_test_T__struct_11.T__struct_11)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_11.T__struct_11>);
