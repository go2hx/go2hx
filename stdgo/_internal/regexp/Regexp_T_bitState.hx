package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_T_bitState_static_extension.T_bitState_static_extension) class T_bitState {
    public var _end : stdgo.GoInt = 0;
    public var _cap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _jobs : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>);
    public var _visited : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _inputs : stdgo._internal.regexp.Regexp_T_inputs.T_inputs = ({} : stdgo._internal.regexp.Regexp_T_inputs.T_inputs);
    public function new(?_end:stdgo.GoInt, ?_cap:stdgo.Slice<stdgo.GoInt>, ?_matchcap:stdgo.Slice<stdgo.GoInt>, ?_jobs:stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>, ?_visited:stdgo.Slice<stdgo.GoUInt32>, ?_inputs:stdgo._internal.regexp.Regexp_T_inputs.T_inputs) {
        if (_end != null) this._end = _end;
        if (_cap != null) this._cap = _cap;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_jobs != null) this._jobs = _jobs;
        if (_visited != null) this._visited = _visited;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bitState(_end, _cap, _matchcap, _jobs, _visited, _inputs);
    }
}
