package stdgo._internal.internal.coverage.pods;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.internal.coverage.pods.Pods_T_protoPod_static_extension.T_protoPod_static_extension) class T_protoPod {
    public var _mf : stdgo.GoString = "";
    public var _elements : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations> = (null : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations>);
    public function new(?_mf:stdgo.GoString, ?_elements:stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_T_fileWithAnnotations.T_fileWithAnnotations>) {
        if (_mf != null) this._mf = _mf;
        if (_elements != null) this._elements = _elements;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_protoPod(_mf, _elements);
    }
}
