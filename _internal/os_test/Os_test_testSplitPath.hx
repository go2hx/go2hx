package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testSplitPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        for (__8 => _tt in (new stdgo.Slice<_internal.os_test.Os_test_T__struct_6.T__struct_6>(15, 15, ...[
({ _path : ("a" : stdgo.GoString), _wantDir : ("." : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("a/" : stdgo.GoString), _wantDir : ("." : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("a//" : stdgo.GoString), _wantDir : ("." : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("a/b" : stdgo.GoString), _wantDir : ("a" : stdgo.GoString), _wantBase : ("b" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("a/b/" : stdgo.GoString), _wantDir : ("a" : stdgo.GoString), _wantBase : ("b" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("a/b/c" : stdgo.GoString), _wantDir : ("a/b" : stdgo.GoString), _wantBase : ("c" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("/a" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("/a/" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("/a/b" : stdgo.GoString), _wantDir : ("/a" : stdgo.GoString), _wantBase : ("b" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("/a/b/" : stdgo.GoString), _wantDir : ("/a" : stdgo.GoString), _wantBase : ("b" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("/a/b/c" : stdgo.GoString), _wantDir : ("/a/b" : stdgo.GoString), _wantBase : ("c" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("//a" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("//a/" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("///a" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6),
({ _path : ("///a/" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _wantDir : ("" : stdgo.GoString), _wantBase : ("" : stdgo.GoString) } : _internal.os_test.Os_test_T__struct_6.T__struct_6)])) : stdgo.Slice<_internal.os_test.Os_test_T__struct_6.T__struct_6>)) {
            {
                var __tmp__ = stdgo._internal.os.Os_splitPath.splitPath(_tt._path?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _base:stdgo.GoString = __tmp__._1;
                if (((_dir != _tt._wantDir) || (_base != _tt._wantBase) : Bool)) {
                    _t.errorf(("splitPath(%q) = %q, %q, want %q, %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_base), stdgo.Go.toInterface(_tt._wantDir), stdgo.Go.toInterface(_tt._wantBase));
                };
            };
        };
    }
