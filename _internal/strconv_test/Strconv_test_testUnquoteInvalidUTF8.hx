package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_4.T__struct_4>(5, 5, ...[({ _in : ("\"foo\"" : stdgo.GoString), _want : ("foo" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : _internal.strconv_test.Strconv_test_T__struct_4.T__struct_4), ({ _in : ("\"foo" : stdgo.GoString), _wantErr : stdgo._internal.strconv.Strconv_errSyntax.errSyntax, _want : ("" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_4.T__struct_4), ({ _in : stdgo.Go.str("\"", 192, "\"")?.__copy__(), _want : ("�" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : _internal.strconv_test.Strconv_test_T__struct_4.T__struct_4), ({ _in : stdgo.Go.str("\"a", 192, "\"")?.__copy__(), _want : ("a�" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : _internal.strconv_test.Strconv_test_T__struct_4.T__struct_4), ({ _in : stdgo.Go.str("\"\\t", 192, "\"")?.__copy__(), _want : ("\t�" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : _internal.strconv_test.Strconv_test_T__struct_4.T__struct_4)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : _internal.strconv_test.Strconv_test_T__struct_4.T__struct_4)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_4.T__struct_4>);
        for (__0 => _tt in _tests) {
            _internal.strconv_test.Strconv_test__testUnquote._testUnquote(_t, _tt._in?.__copy__(), _tt._want?.__copy__(), _tt._wantErr);
        };
    }
