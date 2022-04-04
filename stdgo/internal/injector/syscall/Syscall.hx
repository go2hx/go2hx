package stdgo.internal.injector.syscall;

import stdgo.StdGoTypes;

inline function _runtime_envs()
	return Syscall._runtime_envs();

@:local
class Syscall {
	public static function _runtime_envs():Slice<GoString>
		return new Slice<GoString>();
}
