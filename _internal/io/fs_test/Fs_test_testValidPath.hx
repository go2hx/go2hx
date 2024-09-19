package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testValidPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.io.fs_test.Fs_test__isValidPathTests._isValidPathTests) {
            var _ok = (stdgo._internal.io.fs.Fs_validPath.validPath(_tt._name?.__copy__()) : Bool);
            if (_ok != (_tt._ok)) {
                _t.errorf(("ValidPath(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
            };
        };
    }
