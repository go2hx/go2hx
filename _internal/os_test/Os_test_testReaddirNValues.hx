package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReaddirNValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("test.short; skipping" : stdgo.GoString)));
        };
        _t.parallel();
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (105 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = stdgo._internal.os.Os_create.create(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__())?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("Create: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _f.write((stdgo._internal.strings.Strings_repeat.repeat(("X" : stdgo.GoString), _i) : stdgo.Slice<stdgo.GoUInt8>));
                _f.close();
            });
        };
        var _d:stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        var _openDir = (function():Void {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__());
                _d = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Open directory: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        } : () -> Void);
        var _readdirExpect = (function(_n:stdgo.GoInt, _want:stdgo.GoInt, _wantErr:stdgo.Error):Void {
            _t.helper();
            var __tmp__ = _d.readdir(_n), _fi:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr))) {
                _t.fatalf(("Readdir of %d got error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr));
            };
            {
                var __0 = (_fi.length : stdgo.GoInt), __1 = (_want : stdgo.GoInt);
var _e = __1, _g = __0;
                if (_g != (_e)) {
                    _t.errorf(("Readdir of %d got %d files, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
                };
            };
        } : (stdgo.GoInt, stdgo.GoInt, stdgo.Error) -> Void);
        var _readDirExpect = (function(_n:stdgo.GoInt, _want:stdgo.GoInt, _wantErr:stdgo.Error):Void {
            _t.helper();
            var __tmp__ = _d.readDir(_n), _de:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr))) {
                _t.fatalf(("ReadDir of %d got error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr));
            };
            {
                var __0 = (_de.length : stdgo.GoInt), __1 = (_want : stdgo.GoInt);
var _e = __1, _g = __0;
                if (_g != (_e)) {
                    _t.errorf(("ReadDir of %d got %d files, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
                };
            };
        } : (stdgo.GoInt, stdgo.GoInt, stdgo.Error) -> Void);
        var _readdirnamesExpect = (function(_n:stdgo.GoInt, _want:stdgo.GoInt, _wantErr:stdgo.Error):Void {
            _t.helper();
            var __tmp__ = _d.readdirnames(_n), _fi:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr))) {
                _t.fatalf(("Readdirnames of %d got error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr));
            };
            {
                var __0 = (_fi.length : stdgo.GoInt), __1 = (_want : stdgo.GoInt);
var _e = __1, _g = __0;
                if (_g != (_e)) {
                    _t.errorf(("Readdirnames of %d got %d files, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
                };
            };
        } : (stdgo.GoInt, stdgo.GoInt, stdgo.Error) -> Void);
        for (__16 => _fn in (new stdgo.Slice<(stdgo.GoInt, stdgo.GoInt, stdgo.Error) -> Void>(3, 3, ...[_readdirExpect, _readdirnamesExpect, _readDirExpect]) : stdgo.Slice<(stdgo.GoInt, stdgo.GoInt, stdgo.Error) -> Void>)) {
            _openDir();
            _fn((0 : stdgo.GoInt), (105 : stdgo.GoInt), (null : stdgo.Error));
            _fn((0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Error));
            _d.close();
            _openDir();
            _fn((-1 : stdgo.GoInt), (105 : stdgo.GoInt), (null : stdgo.Error));
            _fn((-2 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Error));
            _fn((0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Error));
            _d.close();
            _openDir();
            _fn((1 : stdgo.GoInt), (1 : stdgo.GoInt), (null : stdgo.Error));
            _fn((2 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Error));
            _fn((105 : stdgo.GoInt), (102 : stdgo.GoInt), (null : stdgo.Error));
            _fn((3 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.io.Io_eof.eof);
            _d.close();
        };
    }
