package stdgo;

import haxe.zip.Compress;
import haxe.Int64;

typedef Time = {
	@:noCompletion var date:Date;
}
@:noUsing
function now():Time {
	return {date: Date.now()};
}
function hour(time:Time):Int {
	return time.date.getHours();
}

function weekday(time:Time):Int {
	return time.date.getDay();
}
final monday:Int = 1;
final tuesday:Int = 2;
final wensday:Int = 3;
final thursday:Int = 4;
final friday:Int = 5;
final saturday:Int = 6;
final sunday:Int = 0;

typedef Duration = Int64;
