package stdgo;

import haxe.zip.Compress;
import haxe.Int64;

class Time {
	var date:Date;
	public function new(date:Date) {
		this.date = date;
	}

	public static inline function now():Time {
		return new Time(Date.now());
	}
	public function hour():Int {
		return date.getHours();
	}
	public function weekday():Int {
		return date.getDay();
	}

	public static inline function sleep(seconds:Float) {
		Sys.sleep(seconds);
	}
	public static final second:Int = 1;
	public static final monday:Int = 1;
	public static final tuesday:Int = 2;
	public static final wensday:Int = 3;
	public static final thursday:Int = 4;
	public static final friday:Int = 5;
	public static final saturday:Int = 6;
	public static final sunday:Int = 0;

}
typedef Duration = Int64;
