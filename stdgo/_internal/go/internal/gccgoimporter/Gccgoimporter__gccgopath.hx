package stdgo._internal.go.internal.gccgoimporter;
function _gccgoPath():stdgo.GoString {
        var _gccgoname = (stdgo._internal.os.Os_getenv.getenv(("GCCGO" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L117"
        if (_gccgoname == ((stdgo.Go.str() : stdgo.GoString))) {
            _gccgoname = ("gccgo" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L120"
        {
            var __tmp__ = stdgo._internal.os.exec.Exec_lookpath.lookPath(_gccgoname?.__copy__()), _gpath:stdgo.GoString = __tmp__._0, _gerr:stdgo.Error = __tmp__._1;
            if (_gerr == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L121"
                return _gpath?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L123"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
