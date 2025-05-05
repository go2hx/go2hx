package stdgo._internal.internal.testenv;
function goTool():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L279"
        if (!stdgo._internal.internal.testenv.Testenv_hasgobuild.hasGoBuild()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L280"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("platform cannot run go tool" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L282"
        stdgo._internal.internal.testenv.Testenv__gotoolonce._goToolOnce.do_(function():Void {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec_lookpath.lookPath(("go" : stdgo.GoString));
                stdgo._internal.internal.testenv.Testenv__gotoolpath._goToolPath = @:tmpset0 __tmp__._0?.__copy__();
                stdgo._internal.internal.testenv.Testenv__gotoolerr._goToolErr = @:tmpset0 __tmp__._1;
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L285"
        return { _0 : stdgo._internal.internal.testenv.Testenv__gotoolpath._goToolPath?.__copy__(), _1 : stdgo._internal.internal.testenv.Testenv__gotoolerr._goToolErr };
    }
