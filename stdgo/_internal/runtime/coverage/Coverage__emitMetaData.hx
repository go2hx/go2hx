package stdgo._internal.runtime.coverage;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.encodemeta.Encodemeta;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.internal.coverage.pods.Pods;
import stdgo._internal.internal.coverage.cformat.Cformat;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.time.Time;
import stdgo._internal.internal.coverage.encodecounter.Encodecounter;
import stdgo._internal.internal.coverage.decodemeta.Decodemeta;
import stdgo._internal.internal.coverage.decodecounter.Decodecounter;
import stdgo._internal.encoding.json.Json;
function _emitMetaData():Void {
        if (stdgo._internal.runtime.coverage.Coverage__covProfileAlreadyEmitted._covProfileAlreadyEmitted) {
            return;
        };
        var __tmp__ = stdgo._internal.runtime.coverage.Coverage__prepareForMetaEmit._prepareForMetaEmit(), _ml:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_CovMetaBlob.CovMetaBlob> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("error: coverage meta-data prep failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            if (stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(("meta-data write failure" : stdgo.GoString));
            };
        };
        if ((_ml.length) == ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("program not built with -cover\n" : stdgo.GoString));
            return;
        };
        stdgo._internal.runtime.coverage.Coverage__goCoverDir._goCoverDir = stdgo._internal.os.Os_getenv.getenv(("GOCOVERDIR" : stdgo.GoString))?.__copy__();
        if (stdgo._internal.runtime.coverage.Coverage__goCoverDir._goCoverDir == (stdgo.Go.str())) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("warning: GOCOVERDIR not set, no coverage data emitted\n" : stdgo.GoString));
            return;
        };
        {
            var _err = (stdgo._internal.runtime.coverage.Coverage__emitMetaDataToDirectory._emitMetaDataToDirectory(stdgo._internal.runtime.coverage.Coverage__goCoverDir._goCoverDir?.__copy__(), _ml) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("error: coverage meta-data emit failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                if (stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != (stdgo.Go.str())) {
                    throw stdgo.Go.toInterface(("meta-data write failure" : stdgo.GoString));
                };
            };
        };
    }
