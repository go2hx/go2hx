package stdgo;
import haxe.Rest;

abstract Slice<T>(Array<T>) to Array<T> {
    public function new(values:Rest<T>) {
        if (values.length == 0)
            this = new Array<T>();
        this = values.toArray();
    }
}