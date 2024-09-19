package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _errp(_e:stdgo.Error):stdgo.GoString {
        if (_e == null) {
            return ("<nil>" : stdgo.GoString);
        };
        return _e.error()?.__copy__();
    }
