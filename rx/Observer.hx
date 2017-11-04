package rx;


extern interface IObserver<T> {
}


extern class Observer<T> implements IObserver<T> {
	public function next(value:T):Void;
	public function error(error:Dynamic):Void;
	public function complete():Void;
}
