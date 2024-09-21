package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class SplitListTest {
    public var _list : stdgo.GoString = "";
    public var _result : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_list:stdgo.GoString, ?_result:stdgo.Slice<stdgo.GoString>) {
        if (_list != null) this._list = _list;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SplitListTest(_list, _result);
    }
}
