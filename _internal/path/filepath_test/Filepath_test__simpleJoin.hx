package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _simpleJoin(_dir:stdgo.GoString, _path:stdgo.GoString):stdgo.GoString {
        return ((_dir + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _path?.__copy__() : stdgo.GoString)?.__copy__();
    }
