package stdgo._internal.internal.testenv;
function goTool():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (!stdgo._internal.internal.testenv.Testenv_hasGoBuild.hasGoBuild()) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("platform cannot run go tool" : stdgo.GoString)) };
        };
        @:check2 stdgo._internal.internal.testenv.Testenv__goToolOnce._goToolOnce.do_(function():Void {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("go" : stdgo.GoString));
                stdgo._internal.internal.testenv.Testenv__goToolPath._goToolPath = @:tmpset0 __tmp__._0?.__copy__();
                stdgo._internal.internal.testenv.Testenv__goToolErr._goToolErr = @:tmpset0 __tmp__._1;
            };
        });
        return { _0 : stdgo._internal.internal.testenv.Testenv__goToolPath._goToolPath?.__copy__(), _1 : stdgo._internal.internal.testenv.Testenv__goToolErr._goToolErr };
    }
