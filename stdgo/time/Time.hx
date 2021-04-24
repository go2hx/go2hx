package stdgo.time;

import haxe.Int64;
import stdgo.StdGoTypes.StructType;
import haxe.zip.Compress;
import stdgo.StdGoTypes;
inline function sleep(d:Duration) {
	Sys.sleep(durationToSecond(d));
}

private inline function durationToSecond(d:Duration):Int {
	trace("d: " + d);
	var x = (d.toBasic() / (1000 * 1000 * 1000)).low;
	return x;
}

inline function after(d:Duration):Chan<Time> {
	var chan = stdgo.Go.make((_ : Chan<Time>));
	haxe.Timer.delay(() -> {
		chan.send(Time.now());
	}, durationToSecond(d) * 1000);
	return chan;
}

typedef Time = Dynamic;
typedef Duration = GoInt64;
