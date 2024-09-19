package _internal.internal.godebug_test;
import stdgo._internal.internal.godebug.Godebug;
function testGet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _foo = stdgo._internal.internal.godebug.Godebug_new_.new_(("#foo" : stdgo.GoString));
        var _tests = (new stdgo.Slice<_internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0>(12, 12, ...[
({ _godebug : stdgo.Go.str()?.__copy__(), _setting : stdgo._internal.internal.godebug.Godebug_new_.new_(("#" : stdgo.GoString)), _want : stdgo.Go.str()?.__copy__() } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : stdgo.Go.str()?.__copy__(), _setting : _foo, _want : stdgo.Go.str()?.__copy__() } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : ("foo=bar" : stdgo.GoString), _setting : _foo, _want : ("bar" : stdgo.GoString) } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : ("foo=bar,after=x" : stdgo.GoString), _setting : _foo, _want : ("bar" : stdgo.GoString) } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : ("before=x,foo=bar,after=x" : stdgo.GoString), _setting : _foo, _want : ("bar" : stdgo.GoString) } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : ("before=x,foo=bar" : stdgo.GoString), _setting : _foo, _want : ("bar" : stdgo.GoString) } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : (",,,foo=bar,,," : stdgo.GoString), _setting : _foo, _want : ("bar" : stdgo.GoString) } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : ("foodecoy=wrong,foo=bar" : stdgo.GoString), _setting : _foo, _want : ("bar" : stdgo.GoString) } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : ("foo=" : stdgo.GoString), _setting : _foo, _want : stdgo.Go.str()?.__copy__() } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : ("foo" : stdgo.GoString), _setting : _foo, _want : stdgo.Go.str()?.__copy__() } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : (",foo" : stdgo.GoString), _setting : _foo, _want : stdgo.Go.str()?.__copy__() } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0),
({ _godebug : ("foo=bar,baz" : stdgo.GoString), _setting : stdgo._internal.internal.godebug.Godebug_new_.new_(("#loooooooong" : stdgo.GoString)), _want : stdgo.Go.str()?.__copy__() } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _godebug : ("" : stdgo.GoString), _setting : (null : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_Setting.Setting>), _want : ("" : stdgo.GoString) } : _internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0)])) : stdgo.Slice<_internal.internal.godebug_test.Godebug_test_T__struct_0.T__struct_0>);
        for (__0 => _tt in _tests) {
            _t.setenv(("GODEBUG" : stdgo.GoString), _tt._godebug?.__copy__());
            var _got = (_tt._setting.value()?.__copy__() : stdgo.GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("get(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._godebug), stdgo.Go.toInterface(_tt._setting._setting._info.name()), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
