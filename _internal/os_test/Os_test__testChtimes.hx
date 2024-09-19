package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testChtimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_name?.__copy__()), _st:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        var _preStat = (_st : stdgo._internal.io.fs.Fs_FileInfo.FileInfo);
        var _at = (stdgo._internal.os.Os_atime.atime(_preStat)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _mt = (_preStat.modTime()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        _err = stdgo._internal.os.Os_chtimes.chtimes(_name?.__copy__(), _at.add((-1000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _mt.add((-1000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
        if (_err != null) {
            _t.fatalf(("Chtimes %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_name?.__copy__());
            _st = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("second Stat %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        var _postStat = (_st : stdgo._internal.io.fs.Fs_FileInfo.FileInfo);
        var _pat = (stdgo._internal.os.Os_atime.atime(_postStat)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _pmt = (_postStat.modTime()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (!_pat.before(_at?.__copy__())) {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("plan9" : stdgo.GoString))) {} else if (__value__ == (("netbsd" : stdgo.GoString))) {
                    var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("/proc/mounts" : stdgo.GoString)), _mounts:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                    if (stdgo._internal.strings.Strings_contains.contains((_mounts : stdgo.GoString)?.__copy__(), ("noatime" : stdgo.GoString))) {
                        _t.logf(("AccessTime didn\'t go backwards, but see a filesystem mounted noatime; ignoring. Issue 19293." : stdgo.GoString));
                    } else {
                        _t.logf(("AccessTime didn\'t go backwards; was=%v, after=%v (Ignoring on NetBSD, assuming noatime, Issue 19293)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_at)), stdgo.Go.toInterface(stdgo.Go.asInterface(_pat)));
                    };
                } else {
                    _t.errorf(("AccessTime didn\'t go backwards; was=%v, after=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_at)), stdgo.Go.toInterface(stdgo.Go.asInterface(_pat)));
                };
            };
        };
        if (!_pmt.before(_mt?.__copy__())) {
            _t.errorf(("ModTime didn\'t go backwards; was=%v, after=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_pmt)));
        };
    }
