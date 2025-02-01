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
function _captureOsArgs():stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        _m[("argc" : stdgo.GoString)] = stdgo._internal.strconv.Strconv_itoa.itoa((stdgo._internal.os.Os_args.args.length))?.__copy__();
        for (_k => _a in stdgo._internal.os.Os_args.args) {
            _m[stdgo._internal.fmt.Fmt_sprintf.sprintf(("argv%d" : stdgo.GoString), stdgo.Go.toInterface(_k))] = _a?.__copy__();
        };
        _m[("GOOS" : stdgo.GoString)] = ("js" : stdgo.GoString);
        _m[("GOARCH" : stdgo.GoString)] = ("wasm" : stdgo.GoString);
        return _m;
    }
