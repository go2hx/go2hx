package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testBuilderWrite2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        for (__0 => _tt in (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_0.T__struct_0>(4, 4, ...[({ _name : ("Write" : stdgo.GoString), _fn : function(_b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return _b.write((("hello 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        }, _n : (("hello 世界" : stdgo.GoString).length), _want : ("hello 世界" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_0.T__struct_0), ({ _name : ("WriteRune" : stdgo.GoString), _fn : function(_b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return _b.writeRune((97 : stdgo.GoInt32));
        }, _n : (1 : stdgo.GoInt), _want : ("a" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_0.T__struct_0), ({ _name : ("WriteRuneWide" : stdgo.GoString), _fn : function(_b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return _b.writeRune((19990 : stdgo.GoInt32));
        }, _n : (3 : stdgo.GoInt), _want : ("世" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_0.T__struct_0), ({ _name : ("WriteString" : stdgo.GoString), _fn : function(_b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return _b.writeString(("hello 世界" : stdgo.GoString));
        }, _n : (("hello 世界" : stdgo.GoString).length), _want : ("hello 世界" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_0.T__struct_0)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _fn : null, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_0.T__struct_0)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_0.T__struct_0>)) {
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                var __tmp__ = _tt._fn((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("first call: got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if (_n != (_tt._n)) {
                    _t.errorf(("first call: got n=%d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tt._n));
                };
                _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), _tt._want?.__copy__());
                {
                    var __tmp__ = _tt._fn((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(("second call: got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if (_n != (_tt._n)) {
                    _t.errorf(("second call: got n=%d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tt._n));
                };
                _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), (_tt._want + _tt._want?.__copy__() : stdgo.GoString)?.__copy__());
            });
        };
    }
