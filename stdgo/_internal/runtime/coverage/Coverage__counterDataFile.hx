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
final _counterDataFile = (4i64 : stdgo.GoUInt64);
