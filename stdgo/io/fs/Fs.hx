package stdgo.io.fs;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoUInt32;
import stdgo.StdGoTypes.GoInt64;

interface FileInfo {
	public function name():GoString;
	public function size():GoInt64;
	public function mode():FileMode;
	public function modTime():stdgo.time.Time;
	public function isDir():Bool;
	public function sys():AnyInterface;
}

typedef FileMode = GoUInt32;
