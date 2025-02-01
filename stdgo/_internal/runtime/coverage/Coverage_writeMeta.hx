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
function writeMeta(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        if (_w == null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: nil writer in WriteMeta" : stdgo.GoString));
        };
        if (!stdgo._internal.runtime.coverage.Coverage__finalHashComputed._finalHashComputed) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: no meta-data available (binary not built with -cover?)" : stdgo.GoString));
        };
        var _ml = stdgo._internal.runtime.coverage.Coverage__getCovMetaList._getCovMetaList();
        return stdgo._internal.runtime.coverage.Coverage__writeMetaData._writeMetaData(_w, _ml, stdgo._internal.runtime.coverage.Coverage__cmode._cmode, stdgo._internal.runtime.coverage.Coverage__cgran._cgran, stdgo._internal.runtime.coverage.Coverage__finalHash._finalHash?.__copy__());
    }
