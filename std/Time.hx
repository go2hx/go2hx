package std;

import haxe.zip.Compress;

class Time {
	var date:Date;

	public function new(date:Date) {
		this.date = date;
	}

	public static function Now():Time {
		return new Time(Date.now());
	}

	public function Hour():Int {
		return date.getHours();
	}

	public function Weekday():Int {
		return date.getDay();
	}

	public static final Monday:Int = 1;
	public static final Tuesday:Int = 2;
	public static final Wensday:Int = 3;
	public static final Thursday:Int = 4;
	public static final Friday:Int = 5;
	public static final Saturday:Int = 6;
	public static final Sunday:Int = 0;
}
typedef Duration = Int64; 
