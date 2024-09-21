package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testFormatDirEntry(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in _internal.io.fs_test.Fs_test__formatTests._formatTests) {
            var _got = (stdgo._internal.io.fs.Fs_formatDirEntry.formatDirEntry(stdgo.Go.asInterface((stdgo.Go.setRef(_test._input) : stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>)))?.__copy__() : stdgo.GoString);
            if (_got != (_test._wantDirEntry)) {
                _t.errorf(("%d: FormatDirEntry(%#v) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._input)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantDirEntry));
            };
        };
    }
