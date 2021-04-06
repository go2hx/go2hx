package stdgo.time;

import haxe.Int64;
import stdgo.Builtin.make;
import stdgo.StdGoTypes.StructType;
import haxe.zip.Compress;
import stdgo.StdGoTypes;

class Time implements StructType {
	var date:Date;

	public var _is_pointer_:Bool = false;
	public var _address_:Int = 0;
	public final _typeName_:String = "Time";

	public function new(date:Date=null) {
		if (date == null)
			date = new Date(1,1,1,0,0,0);
		this.date = date;
		_address_ = ++Go.addressIndex;
	}

	public static function now():Time {
		return new Time(Date.now());
	}

	public function hour():GoInt {
		return date.getHours();
	}

	public function weekday():GoInt {
		return date.getDay();
	}
}
final monday:GoInt = 1;
final tuesday:GoInt = 2;
final wensday:GoInt = 3;
final thursday:GoInt = 4;
final friday:GoInt = 5;
final saturday:GoInt = 6;
final sunday:GoInt = 0;

inline function sleep(d:Duration) {
	Sys.sleep(durationToSecond(d));
}
private inline function durationToSecond(d:Duration):Int {
	trace("d: " + d);
	var x = (d.toBasic() / (1000 * 1000 * 1000)).low;
	return x;
}
inline function after(d:Duration):Chan<Time> {
	var chan = make((_: Chan<Time>));
	haxe.Timer.delay(() -> {
		chan.send(Time.now());
	},durationToSecond(d) * 1000);
	return chan;
}
final nanosecond:Duration = 1;
final microsecond:Duration = 1000 * nanosecond;
final millisecond:Duration = 1000 * microsecond;
final second:Duration = 1000 * millisecond;
final minute:Duration = 60 * second;
final hour:Duration = 60 * minute;
typedef Duration = GoInt64;
