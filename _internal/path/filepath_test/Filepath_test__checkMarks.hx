package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _checkMarks(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _report:Bool):Void {
        _internal.path.filepath_test.Filepath_test__walkTree._walkTree(_internal.path.filepath_test.Filepath_test__tree._tree, _internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>):Void {
            if (((_n._mark != (1 : stdgo.GoInt)) && _report : Bool)) {
                _t.errorf(("node %s mark = %d; expected 1" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_n._mark));
            };
            _n._mark = (0 : stdgo.GoInt);
        });
    }
