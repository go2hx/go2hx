package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var _trimTests : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_12.T__struct_12> = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_12.T__struct_12>(29, 29, ...[
({ _f : ("Trim" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("bb" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("ab" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("ab" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("ab" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("bba" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("b" : stdgo.GoString), _out : ("abba" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("abb" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : ("b" : stdgo.GoString), _out : ("abba" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("<tag>" : stdgo.GoString), _arg : ("<>" : stdgo.GoString), _out : ("tag" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("* listitem" : stdgo.GoString), _arg : (" *" : stdgo.GoString), _out : ("listitem" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("\"quote\"" : stdgo.GoString), _arg : ("\"" : stdgo.GoString), _out : ("quote" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("ⱯⱯɐɐⱯⱯ" : stdgo.GoString), _arg : ("Ɐ" : stdgo.GoString), _out : ("ɐɐ" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : stdgo.Go.str(128, "test", 255)?.__copy__(), _arg : stdgo.Go.str(255)?.__copy__(), _out : ("test" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : (" Ġ " : stdgo.GoString), _arg : (" " : stdgo.GoString), _out : ("Ġ" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : (" Ġİ0" : stdgo.GoString), _arg : ("0 " : stdgo.GoString), _out : ("Ġİ" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("Trim" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimLeft" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : ("abba" : stdgo.GoString), _arg : stdgo.Go.str()?.__copy__(), _out : ("abba" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : ("123" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : stdgo.Go.str()?.__copy__(), _arg : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimRight" : stdgo.GoString), _in : stdgo.Go.str("☺", 192)?.__copy__(), _arg : ("☺" : stdgo.GoString), _out : stdgo.Go.str("☺", 192)?.__copy__() } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimPrefix" : stdgo.GoString), _in : ("aabb" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("abb" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimPrefix" : stdgo.GoString), _in : ("aabb" : stdgo.GoString), _arg : ("b" : stdgo.GoString), _out : ("aabb" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimSuffix" : stdgo.GoString), _in : ("aabb" : stdgo.GoString), _arg : ("a" : stdgo.GoString), _out : ("aabb" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12),
({ _f : ("TrimSuffix" : stdgo.GoString), _in : ("aabb" : stdgo.GoString), _arg : ("b" : stdgo.GoString), _out : ("aab" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({ _f : ("" : stdgo.GoString), _in : ("" : stdgo.GoString), _arg : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_12.T__struct_12)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_12.T__struct_12>);
