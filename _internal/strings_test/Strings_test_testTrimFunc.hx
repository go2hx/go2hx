package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testTrimFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in _internal.strings_test.Strings_test__trimFuncTests._trimFuncTests) {
            var _trimmers = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_15.T__struct_15>(3, 3, ...[({ _name : ("TrimFunc" : stdgo.GoString), _trim : stdgo._internal.strings.Strings_trimFunc.trimFunc, _out : _tc._trimOut?.__copy__() } : _internal.strings_test.Strings_test_T__struct_15.T__struct_15), ({ _name : ("TrimLeftFunc" : stdgo.GoString), _trim : stdgo._internal.strings.Strings_trimLeftFunc.trimLeftFunc, _out : _tc._leftOut?.__copy__() } : _internal.strings_test.Strings_test_T__struct_15.T__struct_15), ({ _name : ("TrimRightFunc" : stdgo.GoString), _trim : stdgo._internal.strings.Strings_trimRightFunc.trimRightFunc, _out : _tc._rightOut?.__copy__() } : _internal.strings_test.Strings_test_T__struct_15.T__struct_15)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _trim : null, _out : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_15.T__struct_15)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_15.T__struct_15>);
            for (__1 => _trimmer in _trimmers) {
                var _actual = (_trimmer._trim(_tc._in?.__copy__(), _tc._f._f)?.__copy__() : stdgo.GoString);
                if (_actual != (_trimmer._out)) {
                    _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_trimmer._out));
                };
            };
        };
    }
