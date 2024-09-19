package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
var _isValidPathTests : stdgo.Slice<_internal.io.fs_test.Fs_test_T__struct_1.T__struct_1> = (new stdgo.Slice<_internal.io.fs_test.Fs_test_T__struct_1.T__struct_1>(23, 23, ...[
({ _name : ("." : stdgo.GoString), _ok : true } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x" : stdgo.GoString), _ok : true } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x/y" : stdgo.GoString), _ok : true } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : (".." : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("/" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x/" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("/x" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x/y/" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("/x/y" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("./" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("./x" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x/." : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x/./y" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("../" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("../x" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x/.." : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x/../y" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x//y" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x\\" : stdgo.GoString), _ok : true } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x\\y" : stdgo.GoString), _ok : true } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("x:y" : stdgo.GoString), _ok : true } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1),
({ _name : ("\\x" : stdgo.GoString), _ok : true } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1)].concat([for (i in 23 ... (23 > 23 ? 23 : 23 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _ok : false } : _internal.io.fs_test.Fs_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.io.fs_test.Fs_test_T__struct_1.T__struct_1>);
