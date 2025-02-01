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
function _emitCounterData():Void {
        if (((stdgo._internal.runtime.coverage.Coverage__goCoverDir._goCoverDir == (stdgo.Go.str()) || !stdgo._internal.runtime.coverage.Coverage__finalHashComputed._finalHashComputed : Bool) || stdgo._internal.runtime.coverage.Coverage__covProfileAlreadyEmitted._covProfileAlreadyEmitted : Bool)) {
            return;
        };
        {
            var _err = (stdgo._internal.runtime.coverage.Coverage__emitCounterDataToDirectory._emitCounterDataToDirectory(stdgo._internal.runtime.coverage.Coverage__goCoverDir._goCoverDir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("error: coverage counter data emit failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                if (stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != (stdgo.Go.str())) {
                    throw stdgo.Go.toInterface(("counter-data write failure" : stdgo.GoString));
                };
            };
        };
    }
