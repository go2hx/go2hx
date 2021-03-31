package stdgo.time;

import stdgo.Builtin.make;
import stdgo.StdGoTypes.StructType;
import haxe.zip.Compress;
import haxe.Int64;

class Time implements StructType {
	var date:Date;

	public var _is_pointer_:Bool = false;
	public var _address_:Int = 0;
	public final _typeName_:String = "Time";

	public function new(date:Date) {
		this.date = date;
		_address_ = ++Go.addressIndex;
	}

	public static function now():Time {
		return new Time(Date.now());
	}

	public function hour():Int {
		return date.getHours();
	}

	public function weekday():Int {
		return date.getDay();
	}
}

final second:Int = 1;
final monday:Int = 1;
final tuesday:Int = 2;
final wensday:Int = 3;
final thursday:Int = 4;
final friday:Int = 5;
final saturday:Int = 6;
final sunday:Int = 0;

inline function sleep(seconds:Float) {
	Sys.sleep(seconds);
}
inline function after(d:Duration):Chan<Time> {
	var chan = make((_: Chan<Time>));
	haxe.Timer.delay(() -> {
		chan.send(Time.now());
	},Int64.toInt(d/1000));
	return chan;
}

final millisecond = 0.01;
typedef Duration = Int64;
