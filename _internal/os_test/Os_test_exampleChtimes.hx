package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleChtimes():Void {
        var _mtime = (stdgo._internal.time.Time_date.date((2006 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _atime = (stdgo._internal.time.Time_date.date((2007 : stdgo.GoInt), (3 : stdgo._internal.time.Time_Month.Month), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        {
            var _err = (stdgo._internal.os.Os_chtimes.chtimes(("some-filename" : stdgo.GoString), _atime?.__copy__(), _mtime?.__copy__()) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
