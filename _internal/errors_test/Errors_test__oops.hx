package _internal.errors_test;
function _oops():stdgo.Error {
        return stdgo.Go.asInterface((new _internal.errors_test.Errors_test_MyError.MyError(stdgo._internal.time.Time_date.date((1989 : stdgo.GoInt), (3 : stdgo._internal.time.Time_Month.Month), (15 : stdgo.GoInt), (22 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__(), ("the file system has gone away" : stdgo.GoString)) : _internal.errors_test.Errors_test_MyError.MyError));
    }
