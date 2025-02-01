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
@:structInit @:using(stdgo._internal.runtime.coverage.Coverage_T_pkfunc_static_extension.T_pkfunc_static_extension) class T_pkfunc {
    public var _pk : stdgo.GoUInt32 = 0;
    public var _fcn : stdgo.GoUInt32 = 0;
    public function new(?_pk:stdgo.GoUInt32, ?_fcn:stdgo.GoUInt32) {
        if (_pk != null) this._pk = _pk;
        if (_fcn != null) this._fcn = _fcn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkfunc(_pk, _fcn);
    }
}
