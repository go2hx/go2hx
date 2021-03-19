package stdgo.time;

import haxe.zip.Compress;
import haxe.Int64;

class Time {
	var date:Date;

	public function new(date:Date) {
		this.date = date;
	}

	inline function now():Time {
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

typedef Duration = Int64;
