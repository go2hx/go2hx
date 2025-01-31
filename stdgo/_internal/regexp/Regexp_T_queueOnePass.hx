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
@:structInit @:using(stdgo._internal.regexp.Regexp_T_queueOnePass_static_extension.T_queueOnePass_static_extension) class T_queueOnePass {
    public var _sparse : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _dense : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _size : stdgo.GoUInt32 = 0;
    public var _nextIndex : stdgo.GoUInt32 = 0;
    public function new(?_sparse:stdgo.Slice<stdgo.GoUInt32>, ?_dense:stdgo.Slice<stdgo.GoUInt32>, ?_size:stdgo.GoUInt32, ?_nextIndex:stdgo.GoUInt32) {
        if (_sparse != null) this._sparse = _sparse;
        if (_dense != null) this._dense = _dense;
        if (_size != null) this._size = _size;
        if (_nextIndex != null) this._nextIndex = _nextIndex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_queueOnePass(_sparse, _dense, _size, _nextIndex);
    }
}
