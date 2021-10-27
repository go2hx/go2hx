package stdgo.io.fs;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoInt64;
import stdgo.StdGoTypes.GoUInt32;
import stdgo.StdGoTypes.StructType;

interface FileInfo extends StructType {
	public function name():GoString;
	public function size():GoInt64;
	public function mode():FileMode;
	// public function modTime():stdgo.time.Time;
	public function modTime():Dynamic;
	public function isDir():Bool;
	public function sys():AnyInterface;
}

typedef FileMode = GoUInt32;
