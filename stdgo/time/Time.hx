package stdgo.time;

import stdgo.Builtin.make;
import stdgo.StdGoTypes.StructType;
import haxe.zip.Compress;
import stdgo.StdGoTypes;

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

	public function hour():GoInt {
		return date.getHours();
	}

	public function weekday():GoInt {
		return date.getDay();
	}
}

final second:GoInt = 1;
final monday:GoInt = 1;
final tuesday:GoInt = 2;
final wensday:GoInt = 3;
final thursday:GoInt = 4;
final friday:GoInt = 5;
final saturday:GoInt = 6;
final sunday:GoInt = 0;

inline function sleep(d:Duration) {
	Sys.sleep(haxe.Int64.toInt(d.toBasic()));
}
inline function after(d:Duration):Chan<Time> {
	var chan = make((_: Chan<Time>));
	haxe.Timer.delay(() -> {
		chan.send(Time.now());
	},haxe.Int64.toInt(d.toBasic()/1000));
	return chan;
}

final millisecond = 0.01;
typedef Duration = GoInt64;
