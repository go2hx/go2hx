package stdgo._internal.runtime.coverage;
function _processCoverTestDir(_dir:stdgo.GoString, _cfile:stdgo.GoString, _cm:stdgo.GoString, _cpkg:stdgo.GoString):stdgo.Error {
        return stdgo._internal.runtime.coverage.Coverage__processcovertestdirinternal._processCoverTestDirInternal(_dir?.__copy__(), _cfile?.__copy__(), _cm?.__copy__(), _cpkg?.__copy__(), stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
    }
