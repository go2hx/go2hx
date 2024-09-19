package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var containsAnyTests : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_22.T__struct_22> = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_22.T__struct_22>(11, 11, ...[
({ _str : stdgo.Go.str()?.__copy__(), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : stdgo.Go.str()?.__copy__(), _substr : ("a" : stdgo.GoString), _expected : false } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : stdgo.Go.str()?.__copy__(), _substr : ("abc" : stdgo.GoString), _expected : false } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : ("a" : stdgo.GoString), _substr : stdgo.Go.str()?.__copy__(), _expected : false } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : ("a" : stdgo.GoString), _substr : ("a" : stdgo.GoString), _expected : true } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : ("aaa" : stdgo.GoString), _substr : ("a" : stdgo.GoString), _expected : true } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : ("abc" : stdgo.GoString), _substr : ("xyz" : stdgo.GoString), _expected : false } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : ("abc" : stdgo.GoString), _substr : ("xcz" : stdgo.GoString), _expected : true } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : ("a☺b☻c☹d" : stdgo.GoString), _substr : ("uvw☻xyz" : stdgo.GoString), _expected : true } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : ("aRegExp*" : stdgo.GoString), _substr : (".(|)*+?^$[]" : stdgo.GoString), _expected : true } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22),
({ _str : ((_internal.strings_test.Strings_test__dots._dots + _internal.strings_test.Strings_test__dots._dots?.__copy__() : stdgo.GoString) + _internal.strings_test.Strings_test__dots._dots?.__copy__() : stdgo.GoString)?.__copy__(), _substr : (" " : stdgo.GoString), _expected : false } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _str : ("" : stdgo.GoString), _substr : ("" : stdgo.GoString), _expected : false } : _internal.strings_test.Strings_test_T__struct_22.T__struct_22)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_22.T__struct_22>);
