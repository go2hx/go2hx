package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var _toValidUTF8Tests : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_11.T__struct_11> = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_11.T__struct_11>(14, 14, ...[
({ _in : stdgo.Go.str()?.__copy__(), _repl : ("�" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : ("abc" : stdgo.GoString), _repl : ("�" : stdgo.GoString), _out : ("abc" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : ("\ufddd" : stdgo.GoString), _repl : ("�" : stdgo.GoString), _out : ("\ufddd" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str("a", 255, "b")?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("a�b" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str("a", 255, "b�")?.__copy__(), _repl : ("X" : stdgo.GoString), _out : ("aXb�" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255)?.__copy__(), _repl : stdgo.Go.str()?.__copy__(), _out : ("a☺b☺c☺" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str("a☺", 255, "b☺", 192, 175, "c☺", 255)?.__copy__(), _repl : ("日本語" : stdgo.GoString), _out : ("a☺日本語b☺日本語c☺日本語" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str(192, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str(224, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str(237, 160, 128)?.__copy__(), _repl : ("abc" : stdgo.GoString), _out : ("abc" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str(237, 191, 191)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str(240, 128, 128, 175)?.__copy__(), _repl : ("☺" : stdgo.GoString), _out : ("☺" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str(248, 128, 128, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11),
({ _in : stdgo.Go.str(252, 128, 128, 128, 128, 175)?.__copy__(), _repl : ("�" : stdgo.GoString), _out : ("�" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _repl : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_11.T__struct_11)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_11.T__struct_11>);
