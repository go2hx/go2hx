package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:structInit class Node {
    public var _name : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>> = (null : stdgo.Slice<stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>>);
    public var _mark : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>>, ?_mark:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
