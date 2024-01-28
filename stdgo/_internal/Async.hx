package stdgo._internal.internal;

class Async {
	public static function tick() {
		#if (target.threaded && !cppia)
		sys.thread.Thread.current().events.progress();
		#elseif !js
		@:privateAccess haxe.MainLoop.tick();
		#end
	}
}
