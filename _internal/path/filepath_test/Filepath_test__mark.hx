package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _mark(_d:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _err:stdgo.Error, _errors:stdgo.Ref<stdgo.Slice<stdgo.Error>>, _clear:Bool):stdgo.Error {
        var _name = (_d.name()?.__copy__() : stdgo.GoString);
        _internal.path.filepath_test.Filepath_test__walkTree._walkTree(_internal.path.filepath_test.Filepath_test__tree._tree, _internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>):Void {
            if (_n._name == (_name)) {
                _n._mark++;
            };
        });
        if (_err != null) {
            (_errors : stdgo.Slice<stdgo.Error>).__setData__(((_errors : stdgo.Slice<stdgo.Error>).__append__(_err)));
            if (_clear) {
                return (null : stdgo.Error);
            };
            return _err;
        };
        return (null : stdgo.Error);
    }
