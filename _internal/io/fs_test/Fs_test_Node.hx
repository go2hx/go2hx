package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:structInit class Node {
    public var _name : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.Ref<_internal.io.fs_test.Fs_test_Node.Node>> = (null : stdgo.Slice<stdgo.Ref<_internal.io.fs_test.Fs_test_Node.Node>>);
    public var _mark : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.Ref<_internal.io.fs_test.Fs_test_Node.Node>>, ?_mark:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
