package go;

import haxe.zip.Compress;

class Time
{
    var date:Date;
    public function new(date:Date) {
        this.date = date;
    }
    public static function Now():Time {
        return new Time(Date.now());
    }
    public function Weekday():Int {
        return date.getDay();
    }
}