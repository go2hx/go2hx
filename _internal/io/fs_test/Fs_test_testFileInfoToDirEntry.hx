package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testFileInfoToDirEntry(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testFs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
            x.set(("notadir.txt" : stdgo.GoString), ({ data : (("hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), mode : (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode), modTime : stdgo._internal.time.Time_now.now()?.__copy__(), sys : stdgo.Go.toInterface(stdgo.Go.pointer(_internal.io.fs_test.Fs_test__sysValue._sysValue)) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile));
x.set(("adir" : stdgo.GoString), ({ data : (null : stdgo.Slice<stdgo.GoUInt8>), mode : (-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode), modTime : stdgo._internal.time.Time_now.now()?.__copy__(), sys : stdgo.Go.toInterface(stdgo.Go.pointer(_internal.io.fs_test.Fs_test__sysValue._sysValue)) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>>) : stdgo._internal.testing.fstest.Fstest_MapFS.MapFS);
        var _tests = (new stdgo.Slice<_internal.io.fs_test.Fs_test_T__struct_3.T__struct_3>(2, 2, ...[({ _path : ("notadir.txt" : stdgo.GoString), _wantMode : (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode), _wantDir : false } : _internal.io.fs_test.Fs_test_T__struct_3.T__struct_3), ({ _path : ("adir" : stdgo.GoString), _wantMode : (-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode), _wantDir : true } : _internal.io.fs_test.Fs_test_T__struct_3.T__struct_3)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _wantMode : ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode), _wantDir : false } : _internal.io.fs_test.Fs_test_T__struct_3.T__struct_3)])) : stdgo.Slice<_internal.io.fs_test.Fs_test_T__struct_3.T__struct_3>);
        for (__0 => _test in _tests) {
            var _test = ({
                final x = _test;
                ({ _path : x._path?.__copy__(), _wantMode : x._wantMode, _wantDir : x._wantDir } : _internal.io.fs_test.Fs_test_T__struct_3.T__struct_3);
            } : _internal.io.fs_test.Fs_test_T__struct_3.T__struct_3);
            _t.run(_test._path?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(stdgo.Go.asInterface(_testFs), _test._path?.__copy__()), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var _dirEntry = (stdgo._internal.io.fs.Fs_fileInfoToDirEntry.fileInfoToDirEntry(_fi) : stdgo._internal.io.fs.Fs_DirEntry.DirEntry);
                {
                    var __0 = (_dirEntry.type() : stdgo._internal.io.fs.Fs_FileMode.FileMode), __1 = (_test._wantMode : stdgo._internal.io.fs.Fs_FileMode.FileMode);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        _t.errorf(("FileMode mismatch: got=%v, want=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w)));
                    };
                };
                {
                    var __0 = (_dirEntry.name()?.__copy__() : stdgo.GoString), __1 = (_test._path?.__copy__() : stdgo.GoString);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        _t.errorf(("Name mismatch: got=%v, want=%v" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
                {
                    var __0 = (_dirEntry.isDir() : Bool), __1 = (_test._wantDir : Bool);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        _t.errorf(("IsDir mismatch: got=%v, want=%v" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
            });
        };
    }
