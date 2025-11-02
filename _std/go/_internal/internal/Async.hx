package go._internal.internal;

class Async {
	public static function tick() {
		#if (target.threaded && !cppia)
		sys.thread.Thread.current().events.loopOnce();
		#end
	}
}
